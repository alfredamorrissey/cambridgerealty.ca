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

$suite_id = $_REQUEST["suite_id"];
$_SESSION["logger"]->info("edit_room.php -> $suite_id");
$available = new beanAvailable('Available', array("suite_id"), $conn);
if ($suite_id != null || $suite_id != "")
{
	$available->__set("suite_id", $suite_id);
	$available->__doLoad();
}


if ($_SERVER["REQUEST_METHOD"] == "POST") {
	
	//We are saving edit or update
	$price = test_input($_POST["price"]);
	$availableDate = date_parse(test_input($_POST["available"]));
	$promotion = test_input($_POST["promotion"]);
	
	$_SESSION["logger"]->info("Saving $suite_id");
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
		$_SESSION['info'] = "Suite $suite_id availability was successfully updated";
		include("./templates/header.inc.php");
		include("./templates/admin.inc.php");
	}
}

else {
	include("./templates/header.inc.php");
	include("./templates/edit_room.inc.php");
}

include("./templates/side_nav.inc.php");	
include("./templates/footer.inc.php");

?>