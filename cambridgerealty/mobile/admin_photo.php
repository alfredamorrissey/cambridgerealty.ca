<?php
session_start();

if (!$_SESSION["access"])
{
	header('Location: login.php');
}

require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$action = $_REQUEST["action"];
$photo_id = $_REQUEST["photo_id"];
$gallery_id = $_REQUEST["gallery_id"];
$gallery_code = $_REQUEST["gallery_code"];
$gallery = null;

$_SESSION["logger"]->info("{$action} {$photo_id} {$gallery_id} {$gallery_code}");

//If we were not given a gallery_id, but we were given a gallery code,
//look up the id from the code
if($gallery_id == null || $gallery_id == "")
{
	
	$_SESSION["logger"]->info("Entering edit_suite_photos.php: ");
	$_SESSION["logger"]->info("-->gallery_code: $gallery_code");
	if ($gallery_code != null && $gallery_code != "")
	{
		$bnGallery = new beanGallery($conn);
		$bnGallery->__set("code", $gallery_code);
		$bnGallery->__doLoadBy(array("code"));
		$gallery_id = $bnGallery->__get("gallery_id");
	}
	else
	{
		echo "You must specify a gallery code or gallery id to perform any gallery admin tasks";
	}
}	

$_SESSION["logger"]->info("{$action} {$photo_id} {$gallery_id} {$gallery_code}");

if ($gallery_id != null && $gallery_id != "")
{
	$gallery = new classGalleryPhotos($conn);
	$gallery->setgallery($gallery_id);
	
	if ($action != null && $action == "delete_photo" && $photo_id != null && $photo_id != "")
	{
		$gallery->__removePhoto($photo_id);
	}
	else if ($action == 'rotate_photo'  && $photo_id != null && $photo_id != "")
	{
		$gallery->__rotatePhoto($photo_id);
	}

   
	$gallery->__doLoadPhotos();
	echo $gallery->buildImageUpload();	
}
?>




