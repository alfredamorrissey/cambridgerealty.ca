<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Cambridge Realty</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/normalize.min.css">
        <link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/cambridge.css">
		<link rel="stylesheet" href="css/font-awesome.css">
		<link rel="stylesheet" href="css/responsiveGrid/col.css">
		<link rel="stylesheet" href="css/responsiveGrid/2cols.css">
		<script src="//ca.classistatic.com/static/V/1723.2/dependencies/jquery/jquery.min.js"></script>
		<script src="//ca.classistatic.com/static/V/1723.2/js/bootstrap.js"></script>
		<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		<script src="js/main.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

                
        <div class="header-container">
			
            <header class="wrapper clearfix">
				<h1 class="title">Update Availability</h1>
                <nav>
                    <ul>
                        <li><a href="admin.php">Apartments</a></li>
                        <li><a href="house_admin.php">Houses</a></li>
                        <li><a href="logout.php">Logout</a></li>
                    </ul>
                </nav>
            </header>
        </div>
	<div class="main-container">
	<div class="main wrapper clearfix">

	<section >
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
</section>
 