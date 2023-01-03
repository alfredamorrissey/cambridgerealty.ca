<?php
class beanPhotos extends classObject
{
    protected $tblName = 'Photos';
	protected $tblIndex = array("photo_id");
	protected $schema = "cambridg_old";

    protected $photo_id = -1;
    protected $thumb = null;
    protected $full = null;
		protected $photo_order = 0;
}
?>
