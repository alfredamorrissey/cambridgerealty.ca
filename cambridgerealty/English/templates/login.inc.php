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

<div  class="body_text">

<form action="login.php" method="post">
	<div>
	<label for="username">Username</label>
	<input type="email" name="username" value=""/>
	</div>

	<div>
	<label for="password">Password</label>
	<input type="password" name="password" value=""/>
	</div>

	<div>
	<input type="submit" name="save" value="Save"/>
	</div>

</form>

</div> <!-- body_text -->
