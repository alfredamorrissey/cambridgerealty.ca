<!-- Start of Image Gallery -->
<table width="100%" class="gallery viewad_frame_brand2 tbleColpse viewadimgcontr ">
	<tr>
		<td  align="middle" class="imageStack border_none" imggal='main'>
			<a name="show_full" id="show_full" href="<?php echo $gallery->__getPhotoPath(0, 'fulls') ?>" rel="prettyPhoto" title='Zoom' onclick="set_selected_image(); return;">
				<img name="selected_image" id="selected_image" class="view" src="<?php echo $gallery->__getPhotoPath(0, 'meds') ?>" border="0"/>
			</a>
		</td>
	</tr>
</table>

<table class="border_none img-next-prev tbleColpse ">
	<tr>
		<td class="jsonly border_none">
			<div class="prev" imggal='prev'>&nbsp;  </div> 
		</td>
		<td style="padding:0px 10px 0px 10px" class="border_none"> 
				
			<a href='<?php echo $gallery->__getPhotoPath(0, 'fulls') ?>' title='Zoom' imggal='viewimg'>
				<div class="view-large">
					<div> View larger image </div>
				</div>
			</a>
				
		</td>
		<td class="jsonly border_none">
			<div class="next" imggal='next'>&nbsp;  </div> 
		</td>
	</tr>
</table>

<table class='navs'  cellpadding="0" cellspacing="0" border="0">
	<?php echo $gallery->buildImageNavs() ?>
</table>
<!-- End of Image Gallery -->