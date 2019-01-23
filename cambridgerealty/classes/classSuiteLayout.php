<?php

class classSuiteLayout extends classObject
{
    protected $tblName = 'SuiteLayout';

    public function getLayouts()
    {
        $sql =  "select * from senatorapts.SuiteLayout order by code";
        return $this->query($sql);
    }


	public function getSelectLayouts($name, $selected)
	{
		$html = "<select name=\"" . $name . "\">\n" ;
		$num_records = 0;
		$is_selected = "";

		$result = $this->getLayouts();
		$num_records = $result->num_rows;

		if ($num_records > 0)
		{

			// output data of each row
			while($row = $result->fetch_assoc())
			{
				if ($row["layout_id"] == $selected)
				{
					$is_selected = "selected";
				}
				$html = $html . "<option value=\"" . $row["layout_id"] . "\" data-gallery-id=\"". $row["gallery_id"] . "\" " . $is_selected . ">" . $row["code"] . "</option>\n";
				$is_selected = "";

			}

		}
		$html = $html . "</select>\n";
		return $html;

	}

}
?>
