<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$gallery_code = "01";
$gallery = null;

$_SESSION["logger"]->info("Entering edit_suite_photos.php: ");
$_SESSION["logger"]->info("-->gallery_code: $gallery_code");
 
if (isset($_REQUEST["gallery_code"]))
{
	$gallery_code = $_REQUEST["gallery_code"];
}

$bnGallery = new beanGallery($conn);
$bnGallery->__set("code", $gallery_code);
$bnGallery->__doLoadBy(array("code"));

$gallery = new classGalleryPhotos($conn);
$gallery->setGallery($bnGallery->__get("gallery_id"));

if ($gallery->__exists() && isset($_FILES) && isset($_POST["add_photos"]))
{
	$gallery->__addPhotos($_FILES);
}

$_SESSION["logger"]->info("-->gallery_id: " . $gallery->__get("gallery_id"));
$gallery->__doLoadPhotos();

include("./templates/header.inc.php");
include("./templates/side_nav.inc.php");
include("./templates/edit_suite_photos.inc.php");
include("./templates/footer.inc.php");
?>

