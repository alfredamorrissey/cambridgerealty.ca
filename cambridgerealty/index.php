<?php
session_start();

require_once 'dbconfigs.inc.php';
require_once 'common.inc.php';

$action = $_REQUEST["action"];
$template = "templates/index.inc.php";
if ($action != null && $action != "")
{
	$template = "templates/{$action}.inc.php";
}

$suite_id = $_REQUEST["suite_id"];
$house_id = $_REQUEST["house_id"];

$floor_plan = "";
$house = null;
$gallery = null;
$googleMap = null;
$_SESSION["logger"]->info("Entering index: ");
$_SESSION["logger"]->info("-->action: $action");
$_SESSION["logger"]->info("-->suite_id: $suite_id");

if ($suite_id != null && $suite_id != "")
{
	$floor_plan = "images/floor_plan_{$suite_id}.jpg";
	$bnGallery = new beanGallery($conn);
	$bnGallery->__set("code", $suite_id);
	$bnGallery->__doLoadBy(array("code"));

	$gallery = new classGalleryPhotos($conn);
	$gallery->setGallery($bnGallery->__get("gallery_id"));
	$_SESSION["logger"]->info("-->gallery_id: " . $gallery->__get("gallery_id"));
	$gallery->__doLoadPhotos();
}
else if ($house_id != null && $house_id != "")
{
	$house = new beanHouse($conn);
	$house->__set("house_id", $house_id);
	$house->__doLoad();
	if (!$house->__get("exists")) {
		header('Location: index.php?action=apt_vacancies');
	}
	$available = new beanAvailable('HouseAvailable', array("house_id"), $conn);
	$available->__set("house_id", $house_id);
	$available->__doLoad();

	if (!$available->__get("exists") && !$_SESSION["access"]) {
		header('Location: index.php?action=apt_vacancies');
	}
	//var_dump($available);
	//var_dump($house);

	$googleMap = new classGoogleMap($house);
	$houseGallery = new classHouseGallery($conn);
	$gallery = $houseGallery->__getGallery($house_id, $conn);
	$gallery->__doLoadPhotos();
}

if ($gallery != null)
{
	$_SESSION["logger"]->info("-->num_photos: " . $gallery->__get("num_photos"));
}
else
{
	$_SESSION["logger"]->info("-->there is no gallery for this page, or it did not load correctly");
}


include("./templates/header.inc.php");
include($template);
include("./templates/footer.inc.php");
?>
