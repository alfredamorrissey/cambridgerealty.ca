<?php
class beanGalleryPhotos extends classObject
{
    protected $tblName = 'GalleryPhotos';
	protected $tblIndex = array("gallery_id", "photo_id");
	protected $schema = "senatorapts";

    protected $gallery_id = -1;
    protected $photo_id = -1;
	
	function getInsertSql( )
    {
        return "INSERT INTO {$this->tblName} (gallery_id, photo_id) VALUES ( {$this->gallery_id}, {$this->photo_id} )";

    }
	
	function getDeleteSql(  )
    {
        $str = "DELETE FROM ";
		if (isset($this->schema))
			$str = $str . $this->schema . ".";
		
		$str = $str . "{$this->tblName} WHERE gallery_id={$this->gallery_id} and photo_id={$this->photo_id}";
        return $str;
    }
}
?>
