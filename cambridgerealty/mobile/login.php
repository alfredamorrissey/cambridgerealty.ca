<?php
session_start();
require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$username = $password = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
	//Check credentials
	$username = test_input($_POST["username"]);
	$password = test_input($_POST["password"]);
	$cMember = new classMember($conn);
	
	//$member = new beanMember($conn);
	//$member->__set("username",  $username);
	//$member->setPassword($password);
	//$member->__doLoadBy(array("username", "password"));
	//if ($member->__exists())
	if ($cMember->Login($username, $password))
	{
		$_SESSION["access"] = true;
		header('Location: admin.php');
		
	}
	else
	{
		$_SESSION['err'] = "Invalid Credentials.";
		include("templates/header.inc.php");
		include("templates/login.inc.php");
		include("templates/footer.inc.php");
	}

}
else
{
	//Collect credentials
	include("templates/header.inc.php");
	include("templates/login.inc.php");
	include("templates/footer.inc.php");
	
}	


?>




