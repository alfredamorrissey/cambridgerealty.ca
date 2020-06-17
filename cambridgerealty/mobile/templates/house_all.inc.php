<article>
    		<section class="head">
				<h3>Edit Houses</h3>
			</section>
			<section class="txt-center">
				<form action="edit_house.php" method="get"><input type="submit" name="add" value="Add a House"/></form>
			</section>

			<section>
<?php
$num_records = 0;

$clAvailable = new classAvailableHouse($conn);

$result = $clAvailable->getHouses();
$num_records = $clAvailable->totalRows();


if ($num_records > 0)
{
?>
	<table class="unit_list">
	<tr>
	<th>Address</th>
	<th>Type</th>
	<th>Bedrooms</th>
	<th>Bathrooms<br>Full / Partial</th>
	<th>&nbsp;</th>
	</tr>
<?php


	while($clAvailable->fetch())
	{
?>

	<tr>
		<td> <?php echo $clAvailable->__getProp('house','house_num') . " " . $clAvailable->__getProp('house','street')?> </td>
		<td> <?php echo $arrHouseTypes[$clAvailable->__getProp('house','type')]?> </td>
		<td> <?php echo $clAvailable->__getProp('house','bedrooms')?> </td>
		<td> <?php echo $clAvailable->__getProp('house','bathrooms')." / ".$clAvailable->__getProp('house','powder_rooms')?> </td>
		<td>
			<a href="edit_house.php?show=all&house_id=<?php echo  $clAvailable->__getProp('house','house_id')?>"><i class="fa icon_links  fa-pencil"/></i></a>
			<a href="../house-gallery.php?house_id=<?php echo  $clAvailable->__getProp('house','house_id')?>" target="preview"><i class="fa icon_links fa-eye"></i></a>
			<a href="delete_house.php?show=all&house_id=<?php echo  $clAvailable->__getProp('house','house_id')?>"><i class="fa icon_links fa-trash"></i></a>
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
    echo "Please add some houses.";
}
?>
			</section>

			<section class="txt-center">
				<form action="edit_house.php" method="get"><p class="center"><input type="submit" name="add" value="Add a House"/></p></form>
			</section>
		</article>
