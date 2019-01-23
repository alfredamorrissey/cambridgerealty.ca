<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$suite_id = $_REQUEST["suite_id"];
$layout_id = $_REQUEST["layout_id"];

$available = new beanAvailable('Available', array("suite_id"), $conn);
$bnSuite = new beanSuite($conn);
if (!empty($suite_id))
{
	$bnSuite->__set("suite_id", $suite_id);
	$bnSuite->__doLoad();
} else {
	$bnSuite->__set("suite_order", 1);
	$bnSuite->__doLoadBy(array("suite_order"));
	$suite_id = $bnSuite->__get("suite_id");
}

$bnSuite->__set("suite_id", $suite_id);
$bnSuite->__doLoad();
$available->__set("suite_id", $suite_id);
$available->__doLoad();
$layout_id = $bnSuite->__get("layout_id");


$bnLayout = new beanSuiteLayout($conn);
if (!empty($layout_id)) {
	$bnLayout->__set("layout_id", $layout_id);
	$bnLayout->__doLoad();
} else {
	$bnLayout->__set("code", "01");
	$bnLayout->__doLoadBy(array("code"));
}
$layout_id = $bnLayout->__get("layout_id");
$layout = new classSuiteLayout($conn);

$gallery = null;

$_SESSION["logger"]->info("Entering edit_suite_photos.php: ");

$bnGallery = new beanGallery($conn);
$bnGallery->__set("gallery_id", $bnLayout->__get("gallery_id"));
$bnGallery->__doLoad();
$action = "edit_suite_photos.php";

$gallery = new classGalleryPhotos($conn);
$gallery->setGallery($bnGallery->__get("gallery_id"));
$template = "templates/edit_suite_photos.inc.php";
if ($gallery->__exists() && !empty($_FILES) && isset($_POST["add_photos"]))
{
	$gallery->__addFullPhotos($_FILES);
	$template = "templates/edit_gallery.inc.php";
}
else if ($gallery->__exists() && isset($_POST["edit_photos"]) && !empty($_POST["image-data"]))
{
	$gallery->__saveThumbnails($_POST["image-data"]);
	$template = "templates/edit_suite_photos.inc.php";
}

if ($_REQUEST["action"] == "edit_gallery") {
	$template = "templates/edit_gallery.inc.php";
}

$_SESSION["logger"]->info("-->gallery_id: " . $gallery->__get("gallery_id"));
$gallery->__doLoadPhotos();

if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST["save"]))
{
	$bnSuite->dxHashToClass($_POST);
	$result = $bnSuite->__doSave();
	$_SESSION["logger"]->info("Saved house $result");
}

include("./templates/header.inc.php");
include("./templates/side_nav.inc.php");
include($template);
include("./templates/footer.inc.php");
?>
