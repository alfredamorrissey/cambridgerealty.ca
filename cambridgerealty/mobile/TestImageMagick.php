<!doctype html>

<?php

function alist ($array) {  //This function prints a text array as an html list.
    $alist = "<ul>";
    for ($i = 0; $i < sizeof($array); $i++) {
        $alist .= "<li>$array[$i]";
    }
    $alist .= "</ul>";
    return $alist;
}

function doTest($im_bin, $test)
{
	exec($im_bin . $test, $out, $rcode);
	//echo "<p>" . $im_bin . $test . "</p>\n";
	//echo "<p>Result: " . $rcode. "</p>\n";
	//echo alist($out);
}

function doTests($test, $test_num)
{
	$IM_CONVERT5 = "/usr/bin/convert ";
	$IM_CONVERT6 = "/usr/local/bin/convert ";
	$IM_CONVERT = "convert ";
	
	$out = null;
	$rcode="";
	//echo "<h3>Test " . $test_num . "</h3>\n";
	doTest($IM_CONVERT, $test);

}

$CR_ROOT = $_SERVER["DOCUMENT_ROOT"] . "/cambridgerealty/";
$test_file = $CR_ROOT . "images/ig_full_43Alberni_2.JPG";

if (!file_exists($CR_ROOT . "thumbs/"))
{
	mkdir($CR_ROOT . "thumbs/", 0777, true);
}

$test_num = 1;
$test = "-version";
doTests($test, $test_num);
$test_num++;

$new_file = $CR_ROOT . "thumbs/" . $test_num . ".jpg";
$new_file_url = "thumbs/" . $test_num . ".jpg";
$test = $test_file . " -thumbnail '64x64>' " . $new_file;
doTests($test, $test_num);
//echo "<img src=\"" . $new_file_url . "\"/>";
$test_num++;

$new_file = $CR_ROOT . "thumbs/" . $test_num . ".jpg";
$new_file_url = "thumbs/" . $test_num . ".jpg";
$test = $test_file . " -thumbnail '250x250>' " . $new_file;
doTests($test, $test_num);
//echo "<img src=\"" . $new_file_url . "\"/>";
$test_num++;

//echo "<img src=\"images/imggal/43Alberni/thumb/2.JPG\"/>";
//echo "<img src=\"images/imggal/43Alberni/med/2.JPG\"/>";

?>
<html class="no-js" lang="">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Test ImageMagick</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="css/normalize.min.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/cambridge.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<script src="//ca.classistatic.com/static/V/1723.2/dependencies/jquery/jquery.min.js"></script>
	<script src="//ca.classistatic.com/static/V/1723.2/js/bootstrap.js"></script>

	<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	<div class="header-container">
				
				<header class="wrapper clearfix">
					<h1 class="title">Update Availability</h1>
					<nav>
						<ul>
							<li><a href="admin.php">Admin</a></li>
							<li><a href="http://www.cambridgerealty.ca/index.php?action=apt_vacancies" target="preview">Preview</a></li>
							<li><a href="logout.php">Logout</a></li>
						</ul>
					</nav>
				</header>
			</div>
		<div class="main-container">
		<div class="main wrapper clearfix">
		<article>
			<section class="head">
				<h3>Manage Photos</h3>
			</section>
			<section id="image_upload">
				<table class="img_preview">
				<tr >
					<td class="border_none">
						<img src="http://cambridgerealty.ca/images/imggal/43Alberni/thumb/1.JPG" border="0"/>
					</td>
					<td class="border_none">
						<img src="http://cambridgerealty.ca/images/imggal/43Alberni/thumb/2.JPG" border="0"/>
					</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				</table>	
			</section>
		</article>
	</div> <!-- #main-container -->
</body>
</html>