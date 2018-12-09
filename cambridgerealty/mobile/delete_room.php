<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';
$_SESSION["logger"]->info("delete_room.php");
$suite = $_REQUEST["suite"];
if ($suite == null || $suite == "")
{
	$_SESSION['err'] = "You must enter a suite id to remove " . $suite;
}
else 
{
   $_SESSION["logger"]->info("Attempting to remove Suite $suite");
   $available = new beanAvailable('Available', array("suite_id"), $conn);
   $available->__set("suite_id", $suite);
   $available->__doDelete();
   
   $_SESSION["info"] = "Suite $suite availability was successfully removed";
}

include("./templates/header.inc.php");
include("./templates/admin.inc.php");
include("./templates/side_nav.inc.php");
include("./templates/footer.inc.php");

?>




