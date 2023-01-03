<?php
class beanHouseFeatures extends classObject
{
    protected $tblName = 'HouseFeatures';
	protected $tblIndex = array("feature_id");
	protected $schema = "cambridg_old";

    protected $house_id = -1;
    protected $feature_id = -1;
    protected $feature = null;
}
?>
