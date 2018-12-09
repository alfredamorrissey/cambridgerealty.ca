<article >
	<section class="head">
		<h3>Edit the house details</h3>
	</section>
	<section>
	<form action="edit_house.php" method="post">
	<div class="section group">
		<div class="col span_1_of_2">
			<input type="hidden" name="house_id" value="<?php echo $house_id ?>" />
			<div>
			<label for="house_num">House #: </label>
			<input type="text" name="house_num" value="<?php echo $house->__get('house_num') ?>" size="5"/> 
			
			<label for="street">Street: </label>
			<input type="text" name="street" value="<?php echo $house->__get('street') ?>" size="15"/> 
			</div>
			
			<div>
			<label for="city">City: </label>
			<input type="text" name="city" value="<?php echo $house->__get('city') ?>"/> 
			</div>

			<div>
			<label for="prov">Province:</label>
			<?php echo buildSelect("prov", $arrProvinces, $house->__get('prov')); ?>
			</div>
			
			<div>
			<label for="postal_code">Postal Code: </label>
			<input type="text" name="postal_code" value="<?php echo $house->__get('postal_code') ?>"/> 
			</div>
			
			<div>
			<textarea name="description" rows="4" cols="50"><?php echo $house->__get('description') ?></textarea>
			</div>
		</div>
		<div class="col span_1_of_2">
			<div>
			<label for="type">House type:</label>
			<?php echo buildSelect("type", $arrHouseTypes, $house->__get('type')); ?>
			</div>
			<div>
			<label for="bedrooms">Bedrooms: </label>
			<input type="number" name="bedrooms" value="<?php echo $house->__get('bedrooms') ?>" min="1" max="6"/> 
			</div>
			
			<div>
			<label for="bathrooms">Bathrooms: </label>
			<input type="number" name="bathrooms" value="<?php echo $house->__get('bathrooms') ?>" min="1" max="6" /> 
			</div>
			
			<div>
			<label for="powder_rooms">Powder Rooms: </label>
			<input type="number" name="powder_rooms" value="<?php echo $house->__get('powder_rooms') ?>" min="1" max="6"/> 
			</div>
			
		</div>
	</div>
	<section>
		<div>
			<input type="submit" name="save" value="Save"/>
			<input type="button" name="cancel" value="Cancel" onclick="window.location.href='house_admin.php'"/>
		</div>
	</section>
	<?php if ($house->__exists() && $features != null ) { ?>
	<section>
	<h3>Add Features</h3>
	
	</section>
	<section>
		<?php 
			echo buildFieldset($house_features, $arrFeatures, $features->fetchResultArray()); 
		?>
		<div>
		<label for="new_feature">Custom Feature:</label>
		<input type="text" name="new_feature" value=""/>
	</section>
	<?php } ?>
	
	</form>
	
	<?php if ($house->__exists() && $gallery != null && $gallery->__exists()) { ?>
	<section class="head">
		<h3>Add Photos</h3>
	</section>
	<section id="image_upload">
		<?php echo $gallery->buildImageUpload(); ?>
	</section>
	<section>
		
		<form ENCTYPE="multipart/form-data" action="edit_house.php" method="post">
			<input type="hidden" name="action" value="upload_photos"/>
			<input type="hidden" name="house_id" value="<?php echo "$house_id" ?>"/>
			<div>
			<input type="file" id="file" name="files[]" multiple="multiple" accept="image/jpeg" />
			<INPUT TYPE="submit" name="add_photos" VALUE="Add Photos"></FORM>
			</div>
		</form>
	</section>
	<?php } ?>
	

</article>
 