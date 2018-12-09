<?php
class beanHouse extends classObject
{
    protected $tblName = 'House';
	protected $tblIndex = array("house_id");
	protected $schema = "senatorapts";

    protected $house_id = -1;
    protected $house_num = null;
    protected $street = null;
    protected $city = null;
	protected $prov = null;
	protected $postal_code = null;
    protected $bedrooms = null;
    protected $bathrooms = null;
	protected $powder_rooms = null;
    protected $description = null;
    protected $size = null;
	protected $type = null;
	
	function getDeleteSql(  )
    {
        $str = "UPDATE ";
		if (isset($this->schema))
			$str = $str . $this->schema . ".";
		
		$str = $str . $this->tblName ." SET deleted=1 WHERE " . $this->getWhereCondition($this->tblIndex);
        return $str;
    }
	
}
?>
