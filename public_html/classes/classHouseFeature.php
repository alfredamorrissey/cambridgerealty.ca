<?php

class classHouseFeature extends classSql
{
    private $feature = null;
	
	protected $results = null;
	protected $totalRows = 0;
	protected $currRow = 0;
	
	public function __construct($con)
    {
        parent::__construct($con);
		$this->feature = new beanHouseFeatures($con);
	}
   
    public function setHouse($house_id)
    {
        $sql =  "select f.feature_id, f.feature " .
				"from cambridg_old.HouseFeatures f " .
				"where f.house_id = {$house_id}";
	
		$this->results = $this->query($sql);
		$this->totalRows = $this->rowCount($this->results);
		return $this->results;
    }
	
	public function __exists()
	{
		return $this->totalRows > 0;
	}
	
	public function fetchResultArray()
	{
		return $this->tokeyvaluelist($result);
	}
	
	public function buildFeatures($house_id)
	{
		$html = "<ul><div class=\"section group\">";
		$this->getFeatures($house_id);
		$i=0;
		$num_per_col = 4;
		$span_class = "span_2_of_2";
		if ($this->totalRows > 4)
		{
			$span_class = "span_1_of_2";
			$num_per_col = $this->totalRows / 2; 
		}
		$html = $html . "<div class='col {$span_class}'>";
			
		while ($this->fetch)
		{
			$i++;
			if ($i == $num_per_col)
			{
				$html = $html . "</div><div class='col span_1_of_2'>";
			}
			$html = $html . "<li>" . $arrFeatures[$this->__getProp("feature", "feature")] . "</li>\n";
		}
		$html = $html + "</div></div></ul>\n";
		return $html;
	}
	
	public function fetch()
	{
		
		if ($row = $this->results->fetch_assoc())
		{
			//Fill objects with current result
			foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
			{
				if (is_subclass_of($this->$k, "classObject"))
				{
					$this->$k->dxHashToClass($row);
					$_SESSION["logger"]->info("Populating $k");
				}
				else
				{
					$_SESSION["logger"]->info("$k is not a member of classObject");
				}
				
			}
			$this->currRow ++;
		}
		return $row;
	}
	
	/**************************************************************************
     * __get
     * Get a property value of the object
     *************************************************************************/
    public function __getProp($object, $property)
    {
        if( property_exists( $this, $object ) )
        {
            return $this->$object->__get($property);
        }
    }
	
	public function totalRows()
	{
		return $this->totalRows;
	}

}
?>
