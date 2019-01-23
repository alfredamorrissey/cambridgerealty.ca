<?php

$servername = "mariadb";
$username = "senatorapts";
$password = "Ho12tel3456!";
$schema = "senatorapts";
$db_port = "3306";

// Create connection
$conn = new mysqli($servername, $username, $password, $schema, $db_port);

// Check connection
if ($conn->connect_error)
{

	die( "<p class=\"single\">This page is unavailable. Check back later.</p>");

}

// Check connection
else if (mysqli_connect_error())
{
	die( "<p class=\"single\">This page is unavailable. Check back later.</p>");
}

?>
