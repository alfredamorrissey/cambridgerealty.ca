<?php
class classSql
{
    private $con = null;

    public function __construct($con)
    {
        $this->con = $con;
    }
	
	public function getConnection()
	{
		return $this->con;
	}

    public function tovalue($result)
    {
        $value = null;
        if($result)
        {
            $row = $result->fetch_array(MYSQLI_NUM);
            $value = $row[0];
        }
        return $value;
    }

    public function getLatestId()
    {
        return $this->con->insert_id;
    }

    public function toassoc($result)
    {
        $arr = array();
        if($result)
        {
            while($row = $result->fetch_array(MYSQLI_NUM))
            {
                $arr[$row[0]] = $row[1];
            }
        }
        return $arr;
    }

    public function toarray($result)
    {
        $arr = array();
        if($result)
        while($row = $result->fetch_assoc())
			array_push($arr, $row);
        return $arr;
    }

    public function tosinglearray($result)
    {
        $arr = array();
        if($result)
        while($row = $result->fetch_array(MYSQLI_NUM))
            array_push($arr, $row[0]);
        return $arr;
    }

    public function tokeyvaluelist($result)
    {
        $arr = array();
        if($result)
        while($row = $result->fetch_array(MYSQLI_NUM))
        {
            $arr[$row[0]] = $row[1];
        }
        return $arr;
    }

    public function torecord($result)
    {
        $row = null;
        if($result)
			$row = $result->fetch_assoc();
        return $row;
    }

    public function rowCount($result)
    {
        $row = null;
        if($result)
			$row = $result->num_rows;
        return $row;
    }

    public function query($strSQL)
    {
		$result = $this->con->query($strSQL);
		$_SESSION["logger"]->info("Running query: " . $strSQL);
		if (!$result)
		{
			$_SESSION["logger"]->error($this->con->errno . " " . $this->con->error);
		}
		else
		{
			$_SESSION["logger"]->info($this->rowCount($result) . " rows returned.");
		
		}
		

        return $result;
    }

    function escape($in_str)
    {
        return $this->con->real_escape_string( $in_str );
    }

    function prepareForQuery($in_value)
    {
		if ($in_value == null || trim($in_value) == '')
			return "''";
		else if (is_string($in_value))
		{
			$strValue = $this->escape($in_value );
			return "'$strValue'";
		}
		else
			return $in_value;
    }
}
?>
