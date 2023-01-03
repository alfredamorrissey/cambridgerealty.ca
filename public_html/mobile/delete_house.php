<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';
$_SESSION["logger"]->info("delete_house.php");
$house_id = $_REQUEST["house_id"];
$house = new beanHouse($conn);
if ($house_id == null || $house_id == "")
{
	$_SESSION['err'] = "You must enter a house_id to remove " . $house_id;
}
else 
{
   $_SESSION["logger"]->info("Attempting to remove $house_id");
   	//Load existing bean to collect changes
	$house->__set("house_id", intval($house_id));
	$house->__doDelete();
	
   
   $_SESSION["info"] = "Suite $suite availability was successfully removed";
}

$template = "templates/house_all.inc.php";
if ($show != null && $show != "")
{
	$template = "templates/house_{$show}.inc.php";
}

include("./templates/header.inc.php");
include($template);
include("./templates/side_nav.inc.php");
include("./templates/footer.inc.php");

?>




