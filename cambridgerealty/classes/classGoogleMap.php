<?php
class classGoogleMap
{
	private $GOOGLE_API_KEY="AIzaSyAQKAYk9-AYG33EHPFWyOEAGwbZaNZ_ULA";
	private $house;

	public function __construct($house)
    {
		$this->house = $house;
    }
	
	public function embedMap()
	{
		$addressString = 	$this->house->__get("house_num") . "+" . $this->house->__get("street") . ",+" . 
							$this->house->__get("city") . ",+" . $this->house->__get("prov");
		$addressString = urlencode($addressString);
		$html = "<iframe width=\"475\" height=\"450\" frameborder=\"0\" style=\"border:0\"";
		$html = $html . "src=\"https://www.google.com/maps/embed/v1/place?key=" . $this->GOOGLE_API_KEY;
		$html = $html . "&q=" . $addressString;
		$html = $html . "&attribution_source=Google+Maps+Embed+API";
		$html = $html . "&attribution_ios_deep_link_id=comgooglemaps://?daddr=" . $addressString . "\" allowfullscreen>";
		$html = $html . "</iframe>";
		
		$_SESSION["logger"]->info("classGoogleMap->embedMap()");
		$_SESSION["logger"]->info("-->addressString: $addressString");
		$_SESSION["logger"]->info("-->html: $html");
		
		
		return $html;
	}
	
	
}
?>
