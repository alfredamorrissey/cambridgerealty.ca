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

$suite = $_REQUEST["suite"];


if ($_SERVER["REQUEST_METHOD"] == "POST") {
	
	//We are saving edit or update
	$price = test_input($_POST["price"]);
	$availableDate = date_parse(test_input($_POST["available"]));
	$promotion = test_input($_POST["promotion"]);
	
	if ($suite == null || $suite == "")
	{
		//We are adding a new record, get it from post
		$suite_id = test_input($_POST["suite_id"]);
	}
	else
	{
		$suite_id = $suite;
	}

	
	$available = new beanAvailable($conn);
	$available->__set("suite_id", $suite_id);
	$available->__doLoad();
	$available->__set("month", strval ($availableDate["month"]));
	$available->__set("rent", $price);
	$available->__set("year", strval ($availableDate["year"]));
	$available->__set("promotion", $promotion);
	
	if (!is_numeric($price))
	{
		$_SESSION['err'] = "Please enter a valid rent amount.";
		include("./templates/header.inc.php");
		include("./templates/edit_room.inc.php");
		
	}
	else
	{
		$result = $available->__doSave();
		$_SESSION["logger"]->info("Saved available $result");
		$_SESSION['info'] = "Suite $suite availability was successfully updated";
		include("./templates/header.inc.php");
		include("./templates/admin.inc.php");
	}
}
else if ($suite == null || $suite == "")
{
	//Collect data for add
	$available = new beanAvailable($conn);
	include("./templates/header.inc.php");
	include("./templates/edit_room.inc.php");
}
else {
	//Load existing bean to collect changes
	$available = new beanAvailable($conn);
	$available->__set("suite_id", $suite);
	$available->__doLoad();
	
	
	include("./templates/header.inc.php");
	include("./templates/edit_room.inc.php");
}




	
include("./templates/footer.inc.php");

?>