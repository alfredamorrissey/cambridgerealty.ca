<article>
	<section class="head">
		<h3>Select a layout to modify the gallery of photos</h3>
		<form id="frm_edit_suite" action="edit_suite_photos.php" method="post">
	<section>

			<div>
			<label for="suite_id">Suite:</label>
			<?php
				$cSuite = new classSuite($conn);
				echo $cSuite->getSelectSuite("suite_id", $available->__get('suite_id'));

			?>
			</div>
			<div>
			<textarea name="description" rows="10" cols="75"><?php echo $bnSuite->__get('description') ?></textarea>
			</div>
			<?php /* ?>
			<div>
			<label for="gallery_code">Suite layout: </label>
			<?php
				echo $layout->getSelectLayouts("layout_id", $layout_id);

			?>
			</div>
			<?php */ ?>
		</section>
			<section>
				<div>
					<input type="submit" name="save" value="Save"/>
					
				</div>
			</section>
		</form>

	<section>
	  <img src="../<?php echo $bnLayout->__get("floorplan") ?>"  width="370px"/>
	</section>
	<?php
	include("templates/upload_photos.inc.php");
	 ?>


</article>
