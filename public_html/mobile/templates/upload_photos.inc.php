<?php if ($gallery != null && $gallery->__exists()) { ?>
<section class="head">
  <h3>Manage Photos</h3>
</section>
<section>

  <form ENCTYPE="multipart/form-data" action="<?php echo "$action" ?>" method="post">
    <input type="hidden" name="action" value="upload_photos"/>
    <input type="hidden" name="house_id" value="<?php echo "$house_id" ?>"/>
    <input type="hidden" name="layout_id" value="<?php echo "$layout_id" ?>"/>
    <input type="hidden" name="suite_id" value="<?php echo "$suite_id" ?>"/>
    <input type="hidden" id="gallery_id" name="gallery_id" value="<?php echo $gallery->__get("gallery_id") ?>"/>

    <div>
    <input type="file" id="file" name="files[]" multiple="multiple" accept="image/jpeg" />
    <input type="submit" name="add_photos" value="Add Photos">
    <input type="button" id="edit_photos" name="edit_photos" value="Edit Thumbnails"
      data-house_id="<?php echo $house_id ?>"
      data-suite_id="<?php echo $suite_id ?>"
      data-layout_id="<?php echo $layout_id ?>"/>
    </div>
  </form>
</section>
<section >
  <div class="container" id="image_upload" data-lightgallery="group" style="width: 200%; margin-top: 10px">
  <?php
  include("templates/owl-gallery.inc.php");
  ?>
  </div> <!-- container -->
</section>

<?php } ?>
