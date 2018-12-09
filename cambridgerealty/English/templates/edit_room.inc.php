<?php
$cMonth = new classMonth($conn);
$cSuite = new classSuite($conn);
$currentYear =  date("Y"); 
$nextYear = $currentYear + 1;

function selected ($current, $selected)
{
	if ($current == $selected) { return "selected"; }
	else { return ""; }
}
?>
<div  class="body_text">

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

<form action="edit_room.php" method="post">
<input type="hidden" name="suite" value="<?php echo "$suite" ?>"/>
	<div>
	<label for="suite_id">Suite:</label>
	<?php 
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
	<input type="month" name="available" value="<?php echo $available->__getAvailable(); ?>" min="<?php echo date('Y-m'); ?>"
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
</div> <!-- body_text -->
