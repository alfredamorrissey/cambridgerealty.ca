<?php
class classGoogleMap
{
	private $GOOGLE_API_KEY="AIzaSyAQKAYk9-AYG33EHPFWyOEAGwbZaNZ_ULA";
	private $addressString;
	private $styles = array();

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
		include("templates/map.inc.php");
		/*
		$html = "<iframe width=\"370\" height=\"370\" frameborder=\"0\" style=\"border:0\"";
		$html = $html . "src=\"https://www.google.com/maps/embed/v1/place?key=" . $this->GOOGLE_API_KEY;
		$html = $html . "&q=" . $this->addressString;
		$html = $html . "&attribution_source=Google+Maps+Embed+API";
		$html = $html . "&attribution_ios_deep_link_id=comgooglemaps://?daddr=" . $this->addressString . "\" allowfullscreen>";
		$html = $html . "</iframe>";

		<!-- RD Google Map -->
		<div class="google-map-container" data-center="470 Cambridge St South, Ottawa, Ontario K1S 4H8" data-key="AIzaSyAQKAYk9-AYG33EHPFWyOEAGwbZaNZ_ULA" data-styles="[{&quot;featureType&quot;:&quot;landscape&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:60}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:40},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;lightness&quot;:30}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ef8c25&quot;},{&quot;lightness&quot;:40}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;poi.park&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#b6c54c&quot;},{&quot;lightness&quot;:40},{&quot;saturation&quot;:-40}]},{}]">
				<div class="google-map"></div>
				<ul class="google-map-markers">
						<li data-location="470 Cambridge St South Ottawa, Ontario K1S 4H8" data-description="470 Cambridge St South Ottawa, Ontario K1S 4H8" data-icon="images/gmap_marker.png" data-icon-active="images/gmap_marker_active.png"></li>
				</ul>
		</div>
		<!-- END RD Google Map -->

		return $html;
		*/
	}


}
?>
