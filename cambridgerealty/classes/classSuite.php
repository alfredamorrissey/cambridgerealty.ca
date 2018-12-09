<?php

class classSuite extends classObject
{
    protected $tblName = 'Suite';

    public function getSuites()
    {
        $sql =  "select * from senatorapts.Suite order by suite_order";
	
		return $this->query($sql);
        
    }
	

	public function getSelectSuite($name, $selected)
	{
		$html = "<select name=\"" . $name . "\">\n" ;
		$num_records = 0;
		$is_selected = "";

		$result = $this->getSuites();
		$num_records = $result->num_rows;
			
		if ($num_records > 0) 
		{
			
			// output data of each row
			while($row = $result->fetch_assoc()) 
			{
				if ($row["suite_id"] == $selected)
				{
					$is_selected = "selected";
				}
				$html = $html . "<option value=\"" . $row["suite_id"] . "\" " . $is_selected . ">" . $row["suite_id"] . "</option>\n"; 
				$is_selected = "";

			}
			
		} 
		$html = $html . "</select>\n";
		return $html;
		
	}

}
?>
