<article>
    		<section class="head">
				<h3>Available Units</h3>
			</section>
			<section class="txt-center">
				<form action="edit_room.php" method="get"><input type="submit" name="add_room" value="Add a Room"/></form>
			</section>

			<section>
<?php
$num_records = 0;

$clAvailable = new classAvailable($conn);
   
$result = $clAvailable->getAvailableSuites();
$num_records = $clAvailable ->totalRows();

	
if ($num_records > 0) 
{
?>
	<table class="unit_list">
	<tr>
	<th>Unit</th>
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
		<td> <?php echo $clAvailable->__getProp('available','suite_id') ?> </td> 
		<td> <?php echo money_format('%.2n', $clAvailable->__getProp('available','rent')); ?> </td>
		<td> <?php echo $clAvailable->__getProp('available','month') . "-" . $clAvailable->__getProp('available','year') ?> </td>
		<td> <?php echo $clAvailable->__getProp('available','promotion') ?> </td>
		<td>
			<a href="edit_room.php?suite_id=<?php echo  $clAvailable->__getProp('available','suite_id')?>"><i class="fa icon_links  fa-pencil"></i></a>
			<a href="delete_room.php?suite=<?php echo  $clAvailable->__getProp('available','suite_id')?>"><i class="fa icon_links fa-trash"></i></a>
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
    echo "There are currently no available apartments for rent.";
}
?>
			</section>

			<section class="txt-center">
				<form action="edit_room.php" method="get"><p class="center"><input type="submit" name="add_room" value="Add a Room"/></p></form>
			</section>
		</article>
		
