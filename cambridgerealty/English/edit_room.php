<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once 'dbconfigs.inc.php';
require_once 'common.inc.php';
include("./templates/header.inc.php");




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
	$available->__set("month", $availableDate["month"]);
	$available->__set("rent", $price);
	$available->__set("year", $availableDate["year"]);
	$available->__set("promotion", $promotion);
	
	if (!is_numeric($price))
	{
		$_SESSION['err'] = "Please enter a valid rent amount.";
		include("./templates/edit_room.inc.php");
		
	}
	else
	{
		$available->__doSave();
		$_SESSION['msg'] = "Suite $suite availability was successfully updated";
		include("./templates/admin.inc.php");
	}
}
else if ($suite == null || $suite == "")
{
	//We are adding
	$available = new beanAvailable($conn);
	include("./templates/edit_room.inc.php");
}
else {
	//We are updating
	$available = new beanAvailable($conn);
	$available->__set("suite_id", $suite);
	$available->__doLoad();
	
	
	include("./templates/edit_room.inc.php");
}




	
include("./templates/footer.inc.php");

?>




