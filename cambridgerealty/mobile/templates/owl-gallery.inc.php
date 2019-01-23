
    <div class="owl-carousel" >

<?php
$photos = array();
if (!empty($gallery)) {
  $photos = $gallery->getPhotos();
  $_SESSION["logger"]->info("Gallery has photos: ".sizeof($photos));

}
if (!empty($photos) && is_array($photos)) {
  foreach($photos as $photo) {
    ?>
    <div class="item"
      data-photo-order="<?php echo $photo["photo_order"] ?>" 
      data-gallery-id="<?php echo $gallery->__get("gallery_id") ?>"
      data-photo-id="<?php echo $photo["photo_id"] ?>">
      <div class="delete_photo" data-gallery-id="<?php echo $gallery->__get("gallery_id") ?>" data-photo-id="<?php echo $photo["photo_id"] ?>" >
        <i class="fa fa-trash" ></i> delete
      </div>
        <div class="thumb">
            <a href="<?php echo "../".$photo["full"] ?>" data-lightgallery='item'>
                <img src="<?php echo "../".$photo["thumb"] ?>" width="270" height="236"/>
            </a>
        </div>

    </div>
    <?php
  }
} else {
  echo ("You do not yet have any photos uploaded. Use the upload button to upload some photos.");
}

?>

    </div> <!-- owl-carousel -->
