<?php

class beanAvailable extends classObject
{
    protected $tblName = 'Available';
	protected $tblIndex = array("suite_id");
	protected $schema = "senatorapts";


    protected $suite_id = null;
    protected $house_id = null;
    protected $month = null;
    protected $year = null;
    protected $rent = null;
	protected $promotion = null;
	
	public function __construct($tblName, $tblIndex, $con)
    {
        parent::__construct($con);
		$this->tblName = $tblName;
		$this->tblIndex = $tblIndex;
    }
	
	public function __getAvailable()
	{
		return $this->year . "-" . str_pad($this->month, 2, "0", STR_PAD_LEFT);
	}
	
	function getInsertSql( )
    {
        $str1 = '';
        $str2 = '';
        $n = 0;
        foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
        {
            if($k != 'tblName' && $k != 'schema' && $k != 'tblIndex' && $k != 'exists' && isset($this->$k))
            {
                if( $n++ > 0)
                {
                    $str1 .= ',';
                    $str2 .= ',';
                }

                
                $str1 .= $k . " ";
                $str2 .= $this->prepareForQuery($this->$k) . " ";

                
            }
        }
        $str = 'INSERT INTO '; 
		if (isset($this->schema))
			$str = $str . $this->schema . ".";
		$str = $str . $this->tblName . ' ( ';
        $str .= $str1;
        $str .= ') VALUES (';
        $str .= $str2;
        $str .= ');';
        return $str;
    }
    
}
?>
