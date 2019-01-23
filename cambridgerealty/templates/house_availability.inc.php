<h3>House Vacancy</h3>
<br>

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
echo "</table>\n";
}
$month = $currMonth;
echo "<h3>" . $month . "</h3>\n";
?>
<table class="table table-striped table-compact">
<thead>
<tr>
  <th>Address</th>
  <th>Bedrooms</th>
  <th>Bathrooms</th>
  <th>Monthly<br>Rent</th>
  <th>Promotion</th>
</tr>
<thead>

<?php }
$half_text = (!empty($clAvailable->__getProp('house','powder_rooms'))) ? " FULL<br>" . $clAvailable->__getProp('house','powder_rooms') . " HALF" : "";
?>
<tr>
<td><a href="house-gallery.php?house_id=<?php echo $clAvailable->__getProp('house', 'house_id') ?>"> <?php echo $clAvailable->__getProp('house','house_num') . " " . $clAvailable->__getProp('house','street')?> </a></td>
<td> <?php echo $clAvailable->__getProp('house','bedrooms')?> </td>
<td> <?php echo $clAvailable->__getProp('house','bathrooms') . $half_text ?> </td>
<td> <?php echo money_format('%.2n', $clAvailable->__getProp('available','rent')); ?> </td>
<td> <?php echo $clAvailable->__getProp('available','promotion') ?> </td>

</tr>
<?php

}

?>
</table>
<?php

}
else //Number of records is 0
{
?>
<div class=""><p class="single" >
There are currently no available homes for rent. Check back later.
</p>
<?php
}
?>
