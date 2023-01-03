<?php

class classAvailable extends classSql
{
    private $available = null;
	private $suite = null;
  private $layout = null;

	protected $results = null;
	protected $totalRows = 0;
	protected $currRow = 0;

	public function __construct($con)
    {
        parent::__construct($con);
		$this->available = new beanAvailable($this->con, 'Available', array("suite_id"));
		$this->suite = new beanSuite($this->con);

    }

    public function getAvailableSuites()
    {
        $sql =  "select * " .
				"from cambridg_old.Suite s, cambridg_old.Available a, cambridg_old.SuiteLayout sl " .
				"where s.suite_id = a.suite_id  and sl.layout_id = s.layout_id " .
				"order by a.year, LPAD(a.month,2,'0'), s.suite_order";

		$this->results = $this->query($sql);
		$this->totalRows = $this->rowCount($this->results);
		return $this->results;
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
