    	<article>
    		<section class="head">
				<h3>Edit Houses</h3>
			</section>
			<section class="txt-center">
				<form action="edit_house_avail.php" method="get"><input type="submit" name="add" value="Add a House"/></form>
			</section>

			<section>
<?php
$num_records = 0;

$clAvailable = new classAvailableHouse($conn);
   
$result = $clAvailable->getAvailableHouses();
$num_records = $clAvailable->totalRows();

	
if ($num_records > 0) 
{
?>
	<table class="unit_list">
	<tr>
	<th>Address</th>
	<th>Monthly Rent</th>
	<th>Date Available</th>
	<th>Promotion</th>
	<th>&nbsp;</th>
	</tr>
<?php


	while($clAvailable->fetch())
	{
?>		

	<tr>
		<td> <?php echo $clAvailable->__getProp('house','house_num') . " " . $clAvailable->__getProp('house','street')?> </td> 
		<td> <?php echo money_format('%.2n', $clAvailable->__getProp('available','rent')); ?> </td>
		<td> <?php echo $clAvailable->__getProp('available','month') . "-" . $clAvailable->__getProp('available','year') ?> </td>
		<td> <?php echo $clAvailable->__getProp('available','promotion') ?> </td>
		<td>
			<a href="edit_house_avail.php?show=available&house_id=<?php echo  $clAvailable->__getProp('house','house_id')?>"><i class="fa icon_links  fa-pencil"/></i></a>
			<a href="../index.php?action=house&house_id=<?php echo  $clAvailable->__getProp('house','house_id')?>" target="preview"><i class="fa icon_links fa-eye"></i></a>
			<a href="delete_house_avail.php?show=available&house_id=<?php echo  $clAvailable->__getProp('house','house_id')?>"><i class="fa icon_links fa-trash"></i></a>
		</td>
	</tr>
<?php

    }
	
?>
	</table>
<?php
	
} 
else //Number of records is 0
{
    echo "There are currently no houses for rent.";
}
?>
			</section>

			<section class="txt-center">
				<form action="edit_house_avail.php" method="get"><input type="submit" name="add" value="Add a House"/></form>
			</section>
		</article>
		
