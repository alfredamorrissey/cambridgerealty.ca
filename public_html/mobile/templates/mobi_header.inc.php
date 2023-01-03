<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>Update your availability</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <link href="clf/mobi.css" rel="stylesheet" type="text/css" media="all"/>
  <link href="clf/styles.css" rel="stylesheet" type="text/css" media="all"/>
</head>

<body class="single">
  <div class="wrap">
    <header>
		
    	<div class="logo">
    		<a href="admin.php">
    			<img src="images/logo.gif" alt="Cambridge Realty Ottawa Limited"/>
    			
    		</a>
    		
    	</div> 
		<nav class="horizontal menu">
            <ul>
                <li><a href="admin.php">Home page</a></li>
                <li><a href="../English/apt_vacancies.php" target="preview">Preview</a></li>
                <li><a href="logout.php">Exit</a></li>
                
            </ul>
        </nav>		
    </header>
	

	<section ><div class="msg_container">
<?php if(isset($_SESSION['err']) ){ ?>
	<div class="error"><div class="msg_content"><?=$_SESSION['err'];?></div></div>
<?php	
	unset($_SESSION['err']);
 } 
?>

<?php if(isset($_SESSION['info']) ){ ?>
	<div class="info"><div class="msg_content"><?=$_SESSION['info'];?></div></div>
<?php	
	unset($_SESSION['info']);
 } 
?>
</div></section>
 