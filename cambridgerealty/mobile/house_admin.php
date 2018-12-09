<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$show = $_REQUEST["show"];
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