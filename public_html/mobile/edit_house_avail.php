<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

// define variables and set to empty values
$price = $month = $year = $promotion = "";
$house = new beanHouse($conn);
$available = new beanAvailable('HouseAvailable', array("house_id"), $conn);
$house_id = $_REQUEST["house_id"];
if (house_id != null && house_id != "")
{
	$house->__set("house_id", $house_id);
	$house->__doLoad();
	//Load existing bean to collect changes
	$available->__set("house_id", $house_id);
	$available->__doLoad();	
}



if ($_SERVER["REQUEST_METHOD"] == "POST") {
	
	//We are saving edit or update
	$price = test_input($_POST["price"]);
	$availableDate = date_parse(test_input($_POST["available"]));
	$promotion = test_input($_POST["promotion"]);
	
	$available->__set("month", strval ($availableDate["month"]));
	$available->__set("rent", $price);
	$available->__set("year", strval ($availableDate["year"]));
	$available->__set("promotion", $promotion);
	
	if (!is_numeric($price))
	{
		$_SESSION['err'] = "Please enter a valid rent amount.";
		include("./templates/header.inc.php");
		include("./templates/edit_house_avail.inc.php");
		
	}
	else
	{
		$result = $available->__doSave();
		$_SESSION["logger"]->info("Saved available $result");
		$_SESSION['info'] = "{$house->__get('house_num')} {$house->__get('street')} availability was successfully updated";
		include("./templates/header.inc.php");
		include("templates/house_available.inc.php");
	}
}

else {
	include("./templates/header.inc.php");
	include("./templates/edit_house_avail.inc.php");
}

include("./templates/side_nav.inc.php");	
include("./templates/footer.inc.php");

?>