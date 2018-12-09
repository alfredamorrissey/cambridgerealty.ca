<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$suite = $_REQUEST["suite"];
if ($suite == null || $suite == "")
{
	$_SESSION['err'] = "You must enter a suite id to remove " . $suite;
}
else 
{
   
   $available = new beanAvailable($conn);
   $available->__set("suite_id", $suite);
   $available->__doDelete();
   
   $_SESSION['info'] = "Suite $suite availability was successfully removed";
}

include("./templates/header.inc.php");
include("./templates/admin.inc.php");
include("./templates/footer.inc.php");

?>




