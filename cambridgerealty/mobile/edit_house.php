<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';
$_SESSION["logger"]->info("edit_house.php");
$_SESSION["logger"]->info("-->_REQUEST " . $_REQUEST["house_id"]);
$_SESSION["logger"]->info("-->_POST " . $_POST["house_id"]);
$_SESSION["logger"]->info("-->_POST[add_photos] " . $_POST["add_photos"]);
$_SESSION["logger"]->info("-->_POST[save] " . $_POST["save"]);

$house_id = $_REQUEST["house_id"];
$house = new beanHouse($conn);
$template = "templates/edit_house.inc.php";
$gallery = null;
$features = new classHouseFeature($conn);
$houseGallery = new classHouseGallery($conn);

if ($house_id != null || $house_id != "")
{
	//Load existing bean to collect changes
	$house->__set("house_id", $house_id);
	$house->__doLoad();
	$gallery = $houseGallery->__getGallery($house_id);
	$features->setHouse($house_id);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
	//Load the form data into the house object
	if (isset($_POST["save"]))
	{
		$house->dxHashToClass($_POST);
		$result = $house->__doSave();
		$_SESSION["logger"]->info("Saved house $result");
	}
	
	
	//If we did an insert
	if (!$house->__exists())
	{
		$_SESSION["logger"]->info("This was an insert, get the latest house_id");
		//Get the new house_id
		$house->__set("house_id", $house->getLatestId());
		$house->__doLoad();
		$gallery = $houseGallery->__getGallery($house_id);
	}
	//$template = "templates/house_all.inc.php";
	
	//You can only add photos, if the house exists and there is an id,
	//and we have files to load
	else if ($house->__exists() && isset($_FILES) && isset($_POST["add_photos"]))
	{
		$gallery->__addPhotos($_FILES);
	}
}

if ($gallery != null && $gallery->__exists())
{
	$gallery->__doLoadPhotos();
}


include("./templates/header.inc.php");

include($template);
include("./templates/side_nav.inc.php");
include("./templates/footer.inc.php");

?>