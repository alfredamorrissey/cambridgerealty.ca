<?php

//connection strings repaired by shawn0238 GD THG - 18 Dec 2019
//$servername = "senatorapts.db.8376915.hostedresource.com";

$servername = "localhost";
$username = "senatorapts";
$password = "Ho12tel3456!";
$schema = "senatorapts";

// Create connection
$conn = new mysqli($servername, $username, $password, $schema);

// Check connection
if ($conn->connect_error)
{
	//$_SESSION["logger"]->info("No database connection: " . $conn->connect_error);
	echo ("Could not connect to database".$conn->connect_error);
	die( "<p class=\"single\">This page is unavailable. Check back later.</p>");

}

// Check connection
else if (mysqli_connect_error())
{
	//$_SESSION["logger"]->info("No database connection: " . mysqli_connect_error());
	echo ("Could not connect to database".mysqli_connect_error());
	die( "<p class=\"single\">This page is unavailable. Check back later.</p>");
}

?>
