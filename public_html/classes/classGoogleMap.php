<?php
require_once 'config.inc.php';
class classGoogleMap
{
	private $GOOGLE_API_KEY = null;
	private $addressString;
	private $styles = array();

	public function __construct($house = null)
	{
		global $config;
		$this->GOOGLE_API_KEY = $config["google_api_key"];

		if (!empty($house)) {
			$this->addressString = 	$house->__get("house_num") . "+" . $house->__get("street") . ",+" .
								$house->__get("city") . ",+" . $house->__get("prov") . " " .
								$house->__get("postal_code");

		} else {
				$this->addressString = "470 Cambridge St South Ottawa, Ontario K1S 4H8";
		}
		$this->addressString = urlencode($this->addressString);

	}

	public function embedMap()
	{
		include("templates/map.inc.php");
	}


}
?>
