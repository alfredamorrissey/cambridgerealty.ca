<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

include("./templates/header.inc.php");
include("./templates/admin.inc.php");
include("./templates/footer.inc.php");



?>