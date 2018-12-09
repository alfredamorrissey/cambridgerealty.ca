<script>
function setGalleryCode(gallery_code)
{
	document.getElementById("file_selection").elements.namedItem("gallery_code").value = gallery_code;
	ajax_admin_photo(gallery_code);
}
</script>
<article>
	<section class="head">
		<h3>Select a layout to modify the gallery of photos</h3>
	<section>
		<form action="edit_suite_photos.php" method="post">
		
			<div>
			<label for="gallery_code">Suite layout: </label>
			<?php 
				$js_code = "onchange='setGalleryCode(this.value)'";
				echo buildSelect("gallery_code", $arrSuiteLayouts, $gallery_code, $js_code); 
			?>
			</div>
		</form>
	</section>
	<?php if ($gallery != null && $gallery->__exists()) { ?>
	<section class="head">
		<h3>Manage photos for <?php echo $gallery_code ?> layout</h3>
	</section>
	<section id="image_upload">
		<?php echo $gallery->buildImageUpload(); ?>
	</section>
	<section>
		
		<form id="file_selection" ENCTYPE="multipart/form-data" action="edit_suite_photos.php" method="post">
			<input type="hidden" name="action" value="upload_photos"/>
			<input type="hidden" name="gallery_code" value="<?php echo "$gallery_code" ?>"/>
			<div>
			<input type="file" id="file" name="files[]" multiple="multiple" accept="image/jpeg" />
			<INPUT TYPE="submit" name="add_photos" VALUE="Add Photos"></FORM>
			</div>
		</form>
	</section>
	<?php } ?>
	

</article>
