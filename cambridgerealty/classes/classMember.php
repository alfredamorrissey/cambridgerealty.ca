<?php
class classMember extends classObject
{
    protected $tblName = 'Member';
	protected $tblIndex = array("member_id");
	protected $schema = "senatorapts";
	
	private $results = null;
	private $totalRows = 0;
	private $currRow = 0;
	
	private $member = null;
	
	public function __construct($con)
    {
        //$this->con = $con;
		parent::__construct($con);
		$this->member = new beanMember($con);
		$_SESSION["logger"]->info($this->member->toDebugStr());
		
    }
	

    public function Login($strEmail, $mdPassword)
    {
        $this->member->__set("username",  $strEmail);
		$this->member->__doLoadBy(array("username"));
		$_SESSION["logger"]->info($this->member->toDebugStr());
		$password = $this->getPassword();
		$_SESSION["logger"]->info("Decrypted password: [$password] does it mathc [$mdPassword]");
		return $mdPassword == $password;
    }
	
	public function getUsers()
	{
		$sql = "SELECT * FROM senatorapts.Member";
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
