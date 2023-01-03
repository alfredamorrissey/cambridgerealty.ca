<?php
class classMember extends classObject
{
    protected $tblName = 'Member';
	protected $tblIndex = array("member_id");
	protected $schema = "cambridg_old";
	
	private $results = null;
	private $totalRows = 0;
	private $currRow = 0;
	
	private $member = null;
	
	public function __construct($con)
    {
        parent::__construct($con);
		$this->member = new beanMember($con);
    }
	

    public function Login($strEmail, $pwd)
    {
    	//Get member account from database
		$this->member->__set("username",  $strEmail);
		$this->member->__doLoadBy(array("username"));
		//Test the password
		return $this->member->testPassword($pwd);
    }
	
	public function getUsers()
	{
		$sql = "SELECT * FROM cambridg_old.Member";
		$this->results = $this->query($sql);
		$this->totalRows = $this->rowCount($this->results);
		return $this->results;
	}
 
 	public function fetch()
	{
		if ($row = $this->results->fetch_assoc())
		{
			//Fill objects with current result
			$this->member->dxHashToClass($row);
			
			$this->currRow ++;
		}
		return $row;
	}
	
	/**************************************************************************
     * __get
     * Get a property value of the object
     *************************************************************************/
    public function getUsername()
    {
        return $this->member->__get("username");
    }
	
	public function getPassword()
    {
        return $this->member->getPassword();
    }
	
	
	public function totalRows()
	{
		return $this->totalRows;
	}

}
?>
