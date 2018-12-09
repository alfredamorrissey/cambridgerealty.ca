<?php
/**************************************************************************
 * ObjectClass
 * A generic class for all object required dynamic/magic methods
 *************************************************************************/
class classObject extends classSql
{
	private $exists = false;
	
	/**************************************************************************
     * __doLoad
     * Load a record from database
     *************************************************************************/
    public function __doLoad()
    {
		$strSQL = $this->getSelectSql();
		
        $result = $this->query($strSQL);
		$_SESSION["logger"]->info("Results: " . $this->rowCount($result)); 
		if ($result && $this->rowCount($result) > 0) 
		{
			$this->exists = true;
			$this->dxHashToClass( $this->torecord( $result ) );
		}
		else
		{
			$this->exists = false;
		}
    }
	
	public function __doLoadBy()
	{
		$strSQL = "SELECT * FROM ";
		if (isset($this->schema))
			$strSQL = $strSQL . $this->schema . ".";
		
		$strSQL = $strSQL . $this->tblName;
		
		if (func_num_args() > 0)
		{
			$args = func_get_args();
			$strSQL = $strSQL . " WHERE " . $this->getWhereCondition($args[0]);
		}
		else if (count($this->tblIndex) > 0)
		{
			$strSQL = $strSQL  . " WHERE ". $this->getWhereCondition($this->tblIndex);
		}
		$result = $this->query($strSQL);
		if ($result && $this->rowCount($result) > 0) 
		{
			$this->exists = true;
			$this->dxHashToClass( $this->torecord( $result ) );
		}
		else
		{
			$this->exists = false;
		}
		
		
	}

    /**************************************************************************
     * __doSave
     * Save a record into database
     *************************************************************************/
    public function __doSave()
    {
		$_SESSION["logger"]->info(get_class( $this ) . '->__doSave'); 
		$_SESSION["logger"]->info($this->toDebugStr()); 
		
        if(!$this->__exists())
        {
            $strSQL = $this->getInsertSql($params);
		}else{
            $strSQL = $this->getUpdateSql($params);
		}
		$result = $this->query($strSQL);
		return $result;
        
    }

    /**************************************************************************
     * __doDelete
     * Delete a record from database
     *************************************************************************/
    public function __doDelete()
    {
        $strSQL = $this->getDeleteSql($params);
		
        $result = $this->query($strSQL);
		
	}

    /**************************************************************************
     * __get
     * Get a property value of the object
     *************************************************************************/
    public function __get($property)
    {
        if( property_exists( $this, $property ) )
        {
            return $this->$property;
        }
    }

    /**************************************************************************
     * __set
     * Set a property value of the object
     *************************************************************************/
    public function __set( $property, $value )
    {
        if( property_exists( $this, $property ) )
        {
            $this->$property = $value;
        }
        return $this;
    }
	
	public function __exists()
	{
		return $this->exists;
	}
	

    /**************************************************************************
     * dxHashToClass
     * Map a hash to class propeties. Hash might be a $_REQUEST from an
     * HTML form or an associative array from mysql
     *************************************************************************/
    function dxHashToClass( $hash = "" )
    {
		//$_SESSION["logger"]->logInfo(get_class( $this ) . '->dxHashToClass', $hash); 
		if (is_array( $hash ))
        {
			$_SESSION["logger"]->info(get_class( $this ) . '->dxHashToClass', $hash); 
		    foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
            {
				if( isset( $hash[$k] ) )
                {
					
                    $this->__set($k, trim( $hash[$k] ));
					
                }
            }
        }
		$_SESSION["logger"]->info($this->toDebugStr()); 
		    
    }

    /**************************************************************************
     * toDebug
     * Used to output class properties to debug purposes
     *************************************************************************/
    function toDebug( $nl = '<br>' )
    {
        foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
        {
            echo "$k [" . $this->$k . "]{$nl}";
        }
    }
	
	/**************************************************************************
     * toDebug
     * Used to output class properties to debug purposes
     *************************************************************************/
    function toDebugStr(  )
    {
		$str = "";
        foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
        {
			if ($k != "con")
			{
				$str = $str . "$k [" . $this->$k . "]\n";
			}
            
        }
		return $str;
    }

    /**************************************************************************
     * getUpdateSql
     * Used to gererate an sql update string from class properties
     *************************************************************************/
    function getUpdateSql( )
    {
        $str = 'UPDATE ';
		if (isset($this->schema))
			$str = $str . $this->schema . ".";
		
		$str = $str . $this->tblName . ' SET ';
        $n = 0;
        foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
        {
            if( !in_array($k, $this->tblIndex)  && $k != 'tblName' && $k != 'schema' && $k != 'tblIndex' && $k != 'exists' && isset($this->$k))
            {
                if( $n++ > 0)
                {
                    $str .= ',';
                }
				$str = $str . " " . $k . "=" . $this->prepareForQuery( $this->$k) ;

                
            }
        }
        $str .= " WHERE " . $this->getWhereCondition($this->tblIndex);
        return $str;
    }

    /**************************************************************************
     * getInsertSql
     * Used to gererate an sql insert string from class properties
     *************************************************************************/
    function getInsertSql( )
    {
        $str1 = '';
        $str2 = '';
        $n = 0;
        foreach( array_keys( get_class_vars( get_class( $this ) ) ) as $k )
        {
            if( !in_array($k, $this->tblIndex)  && $k != 'tblName' && $k != 'schema' && $k != 'tblIndex' && $k != 'exists' && isset($this->$k))
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

    /**************************************************************************
     * getSelectSql
     * Used to gererate an sql load string from class properties
     *************************************************************************/
    function getSelectSql(  )
    {
        $str = "SELECT * FROM ";
		if (isset($this->schema))
			$str = $str . $this->schema . ".";
		
		$str = $str . $this->tblName . " WHERE " . $this->getWhereCondition($this->tblIndex);
        return $str;
    }

    /**************************************************************************
     * getDeleteSql
     * Used to gererate an sql delete string from class properties
     *************************************************************************/
    function getDeleteSql(  )
    {
        $str = "DELETE FROM ";
		if (isset($this->schema))
			$str = $str . $this->schema . ".";
		
		$str = $str . $this->tblName ." WHERE " . $this->getWhereCondition($this->tblIndex);
        return $str;
    }
	
	function getWhereCondition($params)
	{
		$str = "";
		$n = 0;
		//$_SESSION["params"] = $params;
		
		foreach ($params as $v)
		{
			if ($v != null)
			{
				if( $n++ > 0)
				{
					$str .= ' and ';
				}
				$str = $str . $v . "=" . $this->prepareForQuery($this->__get($v));
			}
			
		}
		
   
		return $str;
	}
}
?>