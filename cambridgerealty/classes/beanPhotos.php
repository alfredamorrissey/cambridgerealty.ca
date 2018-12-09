<?php
class beanPhotos extends classObject
{
    protected $tblName = 'Photos';
	protected $tblIndex = array("photo_id");
	protected $schema = "senatorapts";

    protected $photo_id = -1;
    protected $thumb = null;
    protected $med = null;
    protected $full = null;
		
}
?>
