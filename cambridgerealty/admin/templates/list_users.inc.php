

    <div class="content">
    	<article>
    		<section class="head">
				<h3>Users</h3>
			</section>
			<section class="txt-center">
				<form action="edit_user.php" method="get"><input type="submit" name="add" value="Add User"/></form>
			</section>

			<section>
<?php
$num_records = 0;

$clMember = new classMember($conn);
   
$result = $clMember->getUsers();
$num_records = $clMember->totalRows();

	
if ($num_records > 0) 
{
?>
	<table class="unit_list">
	<tr>
	<td class="title">Unit</td>
	<td class="title">Password</td>
	<td class="title">&nbsp;</td>
	
	</tr>
<?php


	while($clMember->fetch())
	{
?>		

	<tr>
		<td> <?php echo $clMember->getUsername() ?> </td> 
		<td> <?php echo $clMember->getPassword() ?> </td> 
		<td>
			<a href="edit_user.php?suite=<?php echo  $clMember->getUsername()?>"><image src="images/Write.png"/></a>
			<a href="delete_user.php?suite=<?php echo  $clMember->getUsername()?>"><image src="images/X.png"/></a>
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
    echo "There are currently no users.";
}
?>
			</section>

			<section class="txt-center">
				<form action="edit_user.php" method="get"><p class="center"><input type="submit" name="add" value="Add User"/></p></form>
			</section>
		</article>
    </div>