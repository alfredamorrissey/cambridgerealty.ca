<?php
class classHouseGallery extends classObject
{
	private $exists = false;
	
	//house_id must be set before calling
	public function __getGallery($house_id)
    {
		$strSQL = "SELECT * FROM HouseGallery WHERE house_id={$house_id}";
		$result = $this->query($strSQL);
		$gallery = new classGalleryPhotos($this->getConnection());
		
		if ($this->rowCount($result) > 0 && $row = $result->fetch_assoc())
		{
			$this->exists = true;
			$gallery_id = $row["gallery_id"];
			$_SESSION["logger"]->info("Gallery exists $gallery_id");
			$gallery->setGallery($gallery_id);
		}
		else //if the house has no gallery, create one and link it.
		{
			$house = new beanHouse($this->getConnection());
			$house->__set("house_id", $house_id);
			$house->__doLoad();
			
			$bGallery = new beanGallery($this->getConnection());
			$bGallery->__set("code", preg_replace("/[^a-zA-Z1-9]+/", "", $house->__get("house_num") . $house->__get("street")) );
			$bGallery->__set("description", $house->__get("house_num") . " " . $house->__get("street"));
			$_SESSION["logger"]->info("Create gallery for " . $house->__get("house_num") . " " . $house->__get("street"));
			$bGallery->__doSave();
			$gallery->setGallery($bGallery->getLatestId());
			$strSQL = "INSERT INTO HouseGallery (house_id, gallery_id) values ({$house_id}, {$gallery->__get('gallery_id')})";
			$this->query($strSQL);
		}
		
		//$gallery->__doLoadPhotos();
		
		$_SESSION["logger"]->info("gallery: {$gallery->__exists()}");
	return $gallery;
    }
}
?>