<table  class="body_text">
	<tr>
							
		<td class="body_text">

<!-- Body text goes here -->
			<div class="body_text">
				<br/><br/>
				<div class="body_text">
				<table class="viewad_images viewad_frame_tbl unit_list " width="85%" height="95%">
					<tr>
						<td>
							<? include("./templates/gallery.inc.php"); ?>
						</td>
						<td class="house_blurb">
							<h1><?php echo "{$house->__get('house_num')} {$house->__get('street')}" ?></h1>
							<p class="single">
								
								<?php echo nl2br($house->__get('description')) ?>
							</p>
							<?php echo $googleMap->embedMap(); ?>
						</td>
						
					</tr>
					
				</table>
				<br><br>
			</div>
			</div>		
		</td>
	</tr>
	
<!-- End Body Text -->
</table>