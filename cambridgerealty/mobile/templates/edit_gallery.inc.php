<article >
	<section class="head">
		<h3>Edit the photos in the gallery</h3>
	</section>
	<section>
		<form action="<?php echo "$action" ?>" method="post" class="create_thumb" >
			<?php if (!empty($house_id)) { ?>
				<input type="hidden" name="house_id" value="<?php echo "$house_id" ?>"/>
			<?php
		  }
			if (!empty($layout_id)) { ?>
				<input type="hidden" name="layout_id" value="<?php echo "$layout_id" ?>"/>
				<input type="hidden" name="suite_id" value="<?php echo "$suite_id" ?>"/>
			<?php
		  }

				$photos = $gallery->getPhotos();
		  	foreach ($photos as $photo) {
		?>

			<div class="image-editor" data-src="<?php echo "../".$photo["full"] ?>" data-photo-id="<?php echo $photo["photo_id"]?>">
        <div class="cropit-preview"></div>
        <div class="image-size-label">
          Resize image
        </div>
        <input type="range" class="cropit-image-zoom-input">
        <input type="hidden" name="image-data[<?php echo $photo["photo_id"]?>]"  id="image-data-<?php echo $photo["photo_id"]?>"/>

      </div>

		<?php
				}
		?>
		<input type="submit" name="edit_photos" value="Save Thumbnails">
		</form>
	</section>
</article>
