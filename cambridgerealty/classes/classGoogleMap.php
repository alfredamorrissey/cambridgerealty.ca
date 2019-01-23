<?php
class classGoogleMap
{
	private $GOOGLE_API_KEY="AIzaSyAQKAYk9-AYG33EHPFWyOEAGwbZaNZ_ULA";
	private $addressString;

	public function __construct($house = null)
  {
		if (!empty($house)) {
			$this->addressString = 	$house->__get("house_num") . "+" . $house->__get("street") . ",+" .
								$house->__get("city") . ",+" . $house->__get("prov");

		} else {
				$this->addressString = "470 Cambridge St South Ottawa, Ontario K1S 4H8";
		}
		$this->addressString = urlencode($this->addressString);

  }

	public function embedMap()
	{

		$html = "<iframe width=\"370\" height=\"370\" frameborder=\"0\" style=\"border:0\"";
		$html = $html . "src=\"https://www.google.com/maps/embed/v1/place?key=" . $this->GOOGLE_API_KEY;
		$html = $html . "&q=" . $this->addressString;
		$html = $html . "&attribution_source=Google+Maps+Embed+API";
		$html = $html . "&attribution_ios_deep_link_id=comgooglemaps://?daddr=" . $this->addressString . "\" allowfullscreen>";
		$html = $html . "</iframe>";

		return $html;
	}


}
?>
