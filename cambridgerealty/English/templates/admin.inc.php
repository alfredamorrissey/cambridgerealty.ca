<div class="body_text">

<?php if(isset($_SESSION['err']) ){ ?>
	<p class="red bold"><?=$_SESSION['err'];?></p>
<?php	
	unset($_SESSION['err']);
 } 
?>

<?php if(isset($_SESSION['msg']) ){ ?>
	<p class="red bold"><?=$_SESSION['msg'];?></p>
<?php	
	unset($_SESSION['msg']);
 } 
?>

<form action="edit_room.php" method="get"><p class="center"><input type="submit" name="add_room" value="Add a Room"/></p></form>



<?php
$num_records = 0;

$clAvailable = new classAvailable($conn);
   
$result = $clAvailable->getAvailableSuites();
$num_records = $clAvailable ->totalRows();

	
if ($num_records > 0) 
{
?>
	<div class="left15">
	<table class="unit_list" width="90%">
	<tr>
	<td class="title">Unit</td>
	<td class="title">Monthly Rent</td>
	<td class="title">Date Available</td>
	<td class="title">Promotion</td>
	<td class="title"></td>
	</tr>
<?php


	while($clAvailable->fetch())
	{
		echo "<tr>\n";
		echo "<td>" . $clAvailable->__getProp('available','suite_id') . "</td>\n"; 
		echo "<td>" . $clAvailable->__getProp('available','rent') . " </td>\n";
		echo "<td>" . $clAvailable->__getProp('month','description') . " " . $clAvailable->__getProp('available','year') . " </td>\n";
		echo "<td>" . $clAvailable->__getProp('available','promotion') . " </td>\n";
		echo "<td>\n<a href=\"edit_room.php?suite=" . $clAvailable->__getProp('available',"suite_id") . "\"><image src=\"../images/edit_icon.JPG\"/></a>\n";
		echo "<a href=\"delete_room.php?suite=" . $clAvailable->__getProp('available',"suite_id") . "\"><image src=\"../images/delete_icon.JPG\"/></a></td>\n";
		echo "</tr>\n";

    }
?>
	</table></div>;
<?php
	
} 
else 
{
    echo "<p class=\"single\">There are currently no available apartments for rent. </p>";
}



?>
<form action="edit_room.php" method="get"><p class="center"><input type="submit" name="add_room" value="Add a Room"/></p></form>
</div> 
			