<?php
class classGalleryPhotos extends classObject
{
	protected $tblName = 'GalleryPhotos';
	protected $tblIndex = array("gallery_id");
	protected $schema = "senatorapts";
	protected $gallery_id = -1;
	protected $gallery = null;
	
	protected $num_photos = 0;
	protected $thumbs = array();
	protected $meds = array();
	protected $fulls = array();
	protected $photo_ids = array();
	protected $root_path = "";
	protected $root_url = "http://cambridgerealty.ca/";
	
	//height for the different orientations
	protected $photo_geometry = array(
		"thumb" => "'64x64>'",
		"med" => "'250x250>'"
	);
	
	public function __construct($con)
    {
        parent::__construct($con);
		$this->root_path = $_SERVER["DOCUMENT_ROOT"] . "/cambridgerealty/";
		$this->gallery = new beanGallery($con);
		
	}
	
	private function logArray($arr)
	{
		foreach ($arr as $value) 
		{
			$_SESSION["logger"]->info($value);
		}
	}
	
	public function setGallery($gallery_id)
	{
		$this->gallery_id = $gallery_id;
		$this->gallery->__set("gallery_id", $this->gallery_id);
		$this->gallery->__doLoad();
		$this->__set("exists", $this->gallery->__exists());
	}
	
	//gallery_id must be set before calling
	public function __doLoadPhotos()
    {
		empty($this->thumbs);
		empty($this->meds);
		empty($this->fulls);
		
		$_SESSION["logger"]->info("__doLoadPhotos");
		$_SESSION["logger"]->info("-->this: " . $this->__exists());
		$_SESSION["logger"]->info("-->gallery: " . $this->gallery->__exists());
		
		$strSQL = "SELECT * FROM Photos p, GalleryPhotos gp " .
					"WHERE gp.gallery_id = {$this->gallery_id} and " .
					"gp.photo_id = p.photo_id";
					
		$result = $this->query($strSQL);
		$this->num_photos = $this->rowCount($result);
		$_SESSION["logger"]->info("Results: " . $this->num_photos); 
		if ($this->num_photos > 0)
		{
			while($row = $result->fetch_assoc()) 
			{
				array_push($this->thumbs, $row["thumb"]);
				array_push($this->meds, $row["med"]);
				array_push($this->fulls, $row["full"]);
				array_push($this->photo_ids, $row["photo_id"]);
				
			}
		}
		$this->logArray($this->photo_ids);
		$this->logArray($this->thumbs);
		$this->logArray($this->meds);
		$this->logArray($this->fulls);
		
    }
	
	public function __doDelete()
    {
		$this->__doLoadPhotos();
		foreach($this->photo_ids as $value)
		{
			$this->removePhoto($value);
		}
    }
	
	private function createPaths($root, $code)
	{
		$_SESSION["logger"]->info("Creating path " . $this->root_path . $root . $code);
		if (!file_exists($this->root_path . $root . $code . "/full/")) {
			mkdir($this->root_path . $root . $code . "/full/", 0777, true);
		}
		
		if (!file_exists($this->root_path . $root . $code . "/med/")) {
			mkdir($this->root_path . $root . $code . "/med/", 0777, true);
		}
		
		if (!file_exists($this->root_path . $root . $code . "/thumb/")) {
			mkdir($this->root_path . $root . $code . "/thumb/", 0777, true);
		}
	}
	
	
	
	private function resize($path, $size, $n_name)
	{
		$_SESSION["logger"]->info("resize");
		$new_path = $path . $size . "/" . $n_name;
		$full_path = $this->root_path . $path."full/".$n_name;
		$_SESSION["logger"]->info("Creating path " . $new_path);

		$strExec = "convert {$full_path} -thumbnail {$this->photo_geometry[$size]} {$this->root_path}{$new_path}";
		$_SESSION["logger"]->info($strExec);
		exec($strExec, $out, $rcode);
		chmod($this->root_path . $new_path,0777);
		$_SESSION["logger"]->info("Results: "." {$rcode}");
		$this->logArray($out);
		return $new_path;	
	}
	
	public function __addPhotos($hash)
	{
		$_SESSION["logger"]->info("__addPhotos");
		$code = $this->gallery->__get("code");
		//Ensure the folders are created and the correct permission to add the photos
		$root = "images/imggal/";
		$full_path = $root . $code . "/full/";
		$path = $root . $code . "/";
			
		$this->createPaths($root, $code);
		$valid_exts = array('jpeg', 'jpg');
		//Loop through all of the files
		foreach ($hash['files']['name'] as $f => $name) 
		{
			if ($hash['files']['error'][$f] == 4) 
			{
				continue; // Skip file if any error found
			}	       
			if ($hash['files']['error'][$f] == 0) 
			{	           
				if( ! in_array(strtolower (pathinfo($name, PATHINFO_EXTENSION)), $valid_exts) || $hash['files']['type'][$f] != "image/jpeg")
				{
					$_SESSION["logger"]->info("$name is not a valid format");
					$_SESSION["logger"]->info("-->" . pathinfo($name, PATHINFO_EXTENSION));
					$_SESSION["logger"]->info("-->" . $hash['files']['type'][$f]);
					continue; // Skip invalid file formats
				}
				else
				{ 
					$_SESSION["logger"]->info("Processing $name");
					
					
					//Get a unique file name
					$i = 1;
					$n_name = "";
					do
					{
						$n_name = $i . "." . pathinfo($name, PATHINFO_EXTENSION);
						$i++;
											
					}while (file_exists($this->root_path . $full_path.$n_name));
					$_SESSION["logger"]->info("Creating new file: " . $n_name);
						
					// No error found! Move uploaded files
					if(move_uploaded_file($hash["files"]["tmp_name"][$f], $this->root_path . $full_path.$n_name))
					{
						chmod($this->root_path . $full_path.$n_name,0777);
						//Create the record in the photos table
						$photos = new beanPhotos($this->getConnection());
						$photos->__set("full", $full_path.$n_name);
						$thumbPth = $this->resize($path, "thumb", $n_name);
						$medPth = $this->resize($path, "med", $n_name);
						$photos->__set("thumb", $thumbPth);
						$photos->__set("med", $medPth);
						$photos->__doSave();
						//Add the photos record to the gallery
						$photo_id = $photos->getLatestId();
						$gphotos = new beanGalleryPhotos($this->getConnection());
						$gphotos->__set("gallery_id", $this->gallery_id);
						$gphotos->__set("photo_id", $photo_id);
						$gphotos->__doSave();
						//array_push($this->thumbs, $thumbPth);
						//array_push($this->meds, $medPth);
						//array_push($this->fulls, $full_path.$n_name);
						//array_push($this->photo_ids, $photo_id);
						
					}
					
					
				}
			}
		}
	}
	
	public function __rotatePhoto($photo_id)
	{
		$_SESSION["logger"]->info("__rotatePhoto");
		$photos = new beanPhotos($this->getConnection());
		$photos->__set("photo_id", $photo_id);
		$photos->__doLoad();
		
		$strExec = "convert ".$this->root_path . $photos->__get("full") ." -rotate '-90'";
		exec($strExec, $out, $rcode);
		$_SESSION["logger"]->info("{$strExec} \nResults: "." {$rcode}");
		
		$strExec = "convert ".$this->root_path . $photos->__get("med")." -rotate '-90'";
		exec($strExec, $out, $rcode);
		$_SESSION["logger"]->info("{$strExec} \nResults: "." {$rcode}");
		
		$strExec = "convert ".$this->root_path . $photos->__get("thumb")." -rotate '-90'";
		exec($strExec, $out, $rcode);
		$_SESSION["logger"]->info("{$strExec} \nResults: "." {$rcode}");
		$this->logArray($out);
	}
	
	public function __removePhoto($photo_id)
	{
		$_SESSION["logger"]->info("Attempting to remove Photo $photo_id from Gallery $this->gallery_id");
		$gps = new beanGalleryPhotos($this->getConnection());
		$gps->__set("gallery_id", $this->gallery_id);
		$gps->__set("photo_id", $photo_id);
		$gps->__doDelete();

		$photos = new beanPhotos($this->getConnection());
		$photos->__set("photo_id", $photo_id);
		$photos->__doLoad();

		$_SESSION["logger"]->info("Attempting to delete the following files: ");
		$_SESSION["logger"]->info($this->root_path . $photos->__get("thumb"));
		$_SESSION["logger"]->info($this->root_path . $photos->__get("med"));
		$_SESSION["logger"]->info($this->root_path . $photos->__get("full"));
		$this->unlinkSafe($this->root_path . $photos->__get("thumb"));
		$this->unlinkSafe($this->root_path . $photos->__get("med"));
		$this->unlinkSafe($this->root_path . $photos->__get("full"));
		$photos->__doDelete();
		
		//Reload the photo arrays
		//$this->__doLoadPhotos();
	}
	
	private function unlinkSafe($path)
	{
		if (file_exists($path))
		{
			unlink($path);
		}
	}
	
	
	
	public function __getPhotoPath($id, $arrayName)
	{
		$_SESSION["logger"]->info("__getPhotoPath: {$id} {$arrayName} " . $this->__get($arrayName)[$id]); 
				
		return $this->__get($arrayName)[$id];
	}
	
    public function buildScript()
    {
		//Either we have no photos, or doLoad has not been called, or galler_id was no set
		if (!$this->exists || $this->gallery_id == -1 || $this->num_photos == 0)
		{
			return "";
		}
		$html = "<script type=\"text/javascript\">";
		$html = $html . "$(document).ready(function(){";
		$html = $html . "$(\".viewad_images.viewad_frame_tbl\").make_imggal({";
		$html = $html . "\nfullImgUrl : \"". $this->fulls[0] . "\",";
		$html = $html . "\nimages : [";
		
		for ($i=0; $i < $this->num_photos; $i++)
		{
			$_SESSION["logger"]->info("i: " . $id); 
			$_SESSION["logger"]->info("thumbs[i]: " . $this->thumbs[$i]); 
			$_SESSION["logger"]->info("meds[i]: " . $this->meds[$i]); 
			$_SESSION["logger"]->info("fulls[i]: " . $this->fulls[$i]); 
				
			$html = $html . "'" . $this->meds[$i] . "'";
			if ($i != $this->num_photos)
			{
				//separate paths by comma
				$html = $html . ",";
			}
		}
		$html = $html . "]});";
				
		$html = $html . "$(\".viewad_images.viewad_frame_tbl\").bind(\"select\", function(evt, opts) {";
		$html = $html . "$(\"[imggal='thumb']\").removeClass(\"active\");";
		$html = $html . "$(\"[imgindx='\"+opts.index+\"']\").addClass(\"active\");";
		$html = $html . "});";
				
		$html = $html . "$(\"[imggal='thumb']\").mouseover(function() {";
		$html = $html . "$(this).addClass(\"hover\");";
		$html = $html . "}).mouseout(function() {";
		$html = $html . "$(this).removeClass(\"hover\");";
		$html = $html . "});";
		$html = $html . "$(\"[imggal='prev']\").mouseover(function() {";
		$html = $html . "$(this).addClass(\"prevhover\");";
		$html = $html . "}).mouseout(function() {";
		$html = $html . "$(this).removeClass(\"prevhover\");";
		$html = $html . "});";
		$html = $html . "$(\"[imggal='next']\").mouseover(function() {";
		$html = $html . "$(this).addClass(\"nexthover\");";
		$html = $html . "}).mouseout(function() {";
		$html = $html . "$(this).removeClass(\"nexthover\");";
		$html = $html . "});";
		
		$html = $html . "});";
	 	
		$html = $html . "</script>";
		return $html;
    }
	
	public function buildImageNavs()
	{
		//Either we have no photos, or doLoad has not been called, or gallery_id was no set
		if (!$this->exists || $this->gallery_id == -1 || $this->num_photos == 0)
		{
			return "";
		}
		$html = "";
		$active = "active";
		//Don't increment imgindx here because we need to go in groups of 4
		//I do the ++ in the inner loop
		for ($imgindx=0; $imgindx < $this->num_photos; $imgindx)
		{
			$html = $html . "<tr class=\"imageNavs\">";
			for ($td=0; $td < 4; $td++)
			{
				if ($imgindx < $this->num_photos)
				{
					$html = $html . "<td imggal=\"thumb\" imgindx=\"{$imgindx}\" class=\"ni {$active} border_none\">";
					$html = $html . "<img alt=\"Cambridge Realty Senator Apartments room type {$this->gallery_id}\" src=\"{$this->root_url}{$this->thumbs[$imgindx]}\" border=\"0\"/>";
					$html = $html . "</td>";
				}
				else
				{
					//If we are out of photos finish off the row with blank cells
					$html = $html . "<td imggal=\"thumb\" class=\"ni border_none\">&nbsp;</td>";
				
				}
				$active = "";
				
				$imgindx++;
			}
			$html = $html . "</tr>";
		}
		
		return $html;
	}
	
	public function buildImageUpload()
	{
		$_SESSION["logger"]->info("buildImageUpload");
		//Either we have no photos, or doLoad has not been called, or gallery_id was no set
		if (!$this->exists || $this->gallery_id == -1 || $this->num_photos == 0)
		{
			$_SESSION["logger"]->info("{$this->exists} {$this->gallery_id} {$this->num_photos}");
			return "";
		}
		$html = "<table class=\"img_preview\">";
		//Don't increment imgindx here because we need to go in groups of 4
		//I do the ++ in the inner loop
		for ($imgindx=0; $imgindx < $this->num_photos; $imgindx)
		{
			$html = $html . "<tr >";
			for ($td=0; $td < 4; $td++)
			{
				if ($imgindx < $this->num_photos)
				{
					$html = $html . "<td class=\"border_none\">";
					$html = $html . "<div><a href=\"#\" onclick=\"delete_photo({$this->gallery_id},{$this->photo_ids[$imgindx]})\"><i class=\"fa icon_links fa-trash fa-pull-left\"></i></a>";
					$html = $html . "<a href=\"#\" onclick=\"rotate_photo({$this->gallery_id},{$this->photo_ids[$imgindx]})\"><i class=\"fa icon_links fa-repeat fa-pull-right\"/></i></a></div>";
					$html = $html . "<img src=\"{$this->root_url}{$this->thumbs[$imgindx]}\" border=\"0\"/>";
					$html = $html . "</td>";
				}
				else
				{
					//If we are out of photos finish off the row with blank cells
					$html = $html . "<td>&nbsp;</td>";
				
				}
				$imgindx++;
			}
			$html = $html . "</tr>";
		}
		
		return $html . "</table>";
	}
}
?>
