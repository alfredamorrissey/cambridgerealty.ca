<?php

$servername = "senatorapts.db.8376915.hostedresource.com";
$username = "senatorapts";
$password = "Ho12tel3456!";
$schema = "senatorapts";

// Create connection
$conn = new mysqli($servername, $username, $password, $schema);

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