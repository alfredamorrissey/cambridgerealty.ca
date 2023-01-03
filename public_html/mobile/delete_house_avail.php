<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$available = new beanAvailable('HouseAvailable', array("house_id"), $conn);
$house_id = $_REQUEST["house_id"];
if (house_id != null && house_id != "")
{
	//Load existing bean to collect changes
	$available->__set("house_id", $house_id);
	$available->__doDelete();	
}

include("./templates/header.inc.php");
include("templates/house_available.inc.php");
include("./templates/side_nav.inc.php");	
include("./templates/footer.inc.php");

?>