<table cellspacing="13px">
	<tr>
		<td valign="top" align="center">
			<img alt="Cambridge Realty rental homes" src="images/photo_rental_homes_01.jpg"/><br/><br/>
			<img alt="Cambridge Realty rental homes" src="images/photo_rental_homes_02.jpg"/>
		</td>
							
		<td class="body_text">

<!-- Body text goes here -->
			<div class="body_text">
				<h1>Affordable suburban homes and townhomes</h1>
				<p class="single">
					If you need a bit more space, why not consider the leafy suburbs? 
					there you will find a touch of country living while retaining the 
					practicality and services of the city. Each on of our homes is located 
					near shopping, public transit, parks, schools and much more making them 
					ideal for families.</p>
					
				<h1>Consider our available units</h1>
				
				<?php
$num_records = 0;

$clAvailable = new classAvailableHouse($conn);
   
$result = $clAvailable->getAvailableHouses();
$num_records = $clAvailable->totalRows();

	
if ($num_records > 0) 
{
	$month = "";
    
	while($clAvailable->fetch())
	{
		$currMonth = $arrMonths[$clAvailable->__getProp('available','month')]['EN']['FULL'];
		if ($month != $currMonth ) 
		{
			if ($month !=  "")
			{
				echo "</table></div>\n";
			}
			$month = $currMonth;
			echo "<H5>" . $month . "</H5>\n";
			?>
			<div class="left15">
			<table class="unit_list">
				<tr>
					<td class="title">Address</td>
					<td class="title">Bedrooms</td>
					<td class="title">Bathrooms</td>
					<td class="title">Powder Rooms</td>
					<td class="title">Monthly Rent</td>
					<td class="title">Promotion</td>
				</tr>
		
		<?php } ?>
	<tr>
		<td><a href="index.php?action=house&house_id=<?php echo $clAvailable->__getProp('house', 'house_id') ?>"> <?php echo $clAvailable->__getProp('house','house_num') . " " . $clAvailable->__getProp('house','street')?> </a></td> 
		<td> <?php echo $clAvailable->__getProp('house','bedrooms')?> </td>
		<td> <?php echo $clAvailable->__getProp('house','bathrooms')?> </td>
		<td> <?php echo $clAvailable->__getProp('house','powder_rooms')?> </td>
		<td> <?php echo money_format('%.2n', $clAvailable->__getProp('available','rent')); ?> </td>
		<td> <?php echo $clAvailable->__getProp('available','promotion') ?> </td>
		
	</tr>
<?php

    }
	
?>
	</table></div>
<?php

} 
else //Number of records is 0
{
?>
	<div class=""><p class="single" >
	There are currently no available homes for rent. Check back later.
	</p></div>
<?php
}
?>

				

				
				
			
			</div>		
		</td>
	</tr>
	
<!-- End Body Text -->
</table>	