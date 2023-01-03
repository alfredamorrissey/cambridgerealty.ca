<div class="container" data-lightgallery="group" style="width: 200%; margin-top: 10px">
  <div class="owl-carousel" data-margin="30" data-nav="true" data-items="1" data-md-items="2"
                       data-lg-items="4" data-lightgallery="group" data-loop="false">

<?php
$photos = array();
if (!empty($gallery)) {
  $photos = $gallery->getPhotos();
}
if (!empty($photos) && is_array($photos)) {
  foreach($photos as $photo) {
    $thumb_path = (!empty($photo["thumb"]) && file_exists($photo["thumb"]) ? $photo["thumb"] : $photo["full"]);
    ?>
    <div class="owl-item">

        <div class="thumb">
            <a href="<?php echo $photo["full"] ?>" data-lightgallery='item'>
                <img src="<?php echo $photo["thumb"] ?>" width="270" height="236"/>
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
</div> <!-- container -->
