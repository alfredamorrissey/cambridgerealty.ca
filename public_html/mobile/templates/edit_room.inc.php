<article>
    		<section class="head">
				<h3>Edit the availability</h3>
			</section>
			<section>
				<form action="edit_room.php" method="post">
				
					<div>
					<label for="suite_id">Suite:</label>
					<?php 
						$cSuite = new classSuite($conn);

						if ($available->__get('suite_id') == null || $available->__get('suite_id') == -1)
						{
							echo $cSuite->getSelectSuite("suite_id", $available->__get('suite_id'));
						}
						else
						{
							echo "<input type=\"text\" name=\"suite_id\" value=\"" . $available->__get('suite_id') . "\"  readonly />";
						}
						 
					?> 
					</div>

					<div>
					<label for="price">Rent: </label>
					$ <input type="number" name="price" value="<?php echo $available->__get('rent') ?>"/> 
					</div>

					<div>
					<label for="available">Date Available:</label>
					<input type="month" name="available" value="<?php echo $available->__getAvailable(); ?>" min="<?php echo date('Y-m'); ?>"/>
					</div>

					<div>
					<label for="promotion">Promotion:</label>
					<input type="text" name="promotion" value="<?php echo $available->__get('promotion') ?>"/>
					</div>

					<div>
					<input type="submit" name="save" value="Save"/>
					<input type="button" name="cancel" value="Cancel" onclick="window.location.href='admin.php'"/>
					</div>

				</form>
			</section>
		</article>
 