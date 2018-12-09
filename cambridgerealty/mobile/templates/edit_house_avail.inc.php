 
    	<article>
    		<section class="head"><h3>
				<?php 
				if (!$house->__exists()) 
				{ 
					echo "Edit the details for {$house->__get('house_num')} {$house->__get('street')}";
				}
				else 
				{ 
					echo "Add a house for rent";
				}
				?>
				
			</h3></section>
			<section>
				<form action="edit_house_avail.php" method="post">
				<?php
					if (!$house->__exists())
					{
						echo "<div><label for='house_id'>Select a House</label>";
						$clAvailable = new classAvailableHouse($conn);
						echo $clAvailable->buildSelectHouse("house_id", $available->__get('house_id'));
						echo "</div>";
					}
					else
					{
						echo "<input type='hidden' name='house_id' value='{$house_id}'/>";
					}
				?> 

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
					<input type="button" name="cancel" value="Cancel" onclick="window.location.href='house_admin.php?show=available'"/>
					</div>

				</form>
			</section>
		</article>
 