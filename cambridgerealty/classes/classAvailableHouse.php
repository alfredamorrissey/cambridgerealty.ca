<?php

class classAvailableHouse extends classAvailable
{
    protected $available = null;
	protected $house = null;
	
	
	public function __construct($con)
    {
        parent::__construct($con);
		$this->available = new beanAvailable($this->con, 'AvailableHouse', array("house_id"));
		$this->house = new beanHouse($this->con);
		
    }
   
    public function getAvailableHouses()
    {
        $sql =  "select * " .
				"from senatorapts.House h, senatorapts.HouseAvailable a " .
				"where h.house_id = a.house_id  and h.deleted != 1 " .
				"order by a.year, a.month";
	
		$this->results = $this->query($sql);
		$this->totalRows = $this->rowCount($this->results);
		return $this->results;
    }
	
	public function getHouses()
    {
        $sql =  "select * from House h where h.deleted != 1 order by h.street, h.house_num";
	
		$this->results = $this->query($sql);
		$this->totalRows = $this->rowCount($this->results);
		return $this->results;
    }
	
	public function buildSelectHouse($name, $selected)
	{
		$html = "<select name=\"" . $name . "\">\n" ;
		$num_records = 0;
		$is_selected = "";

		$result = $this->getHouses();
		$num_records = $result->num_rows;
			
		if ($num_records > 0) 
		{
			
			// output data of each row
			while($row = $result->fetch_assoc()) 
			{
				if ($row["house_id"] == $selected)
				{
					$is_selected = "selected";
				}
				$html = $html . "<option value=\"{$row["house_id"]}\" {$is_selected}>{$row["house_num"]} {$row["street"]}</option>\n"; 
				$is_selected = "";

			}
			
		} 
		$html = $html . "</select>\n";
		return $html;
	}
	


}
?>
