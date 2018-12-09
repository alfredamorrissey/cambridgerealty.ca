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

function execCommand($im_bin, $test)
{
	exec($im_bin . $test, $out, $rcode);
	echo "<p>{$im_bin} {$test}</p>\n";
	echo "<p>Result: " . $rcode. "</p>\n";
	echo alist($out);
}

function doTest($CR_ROOT, $im_bin, $flags, $img_in, $test_num)
{
	$new_file = $CR_ROOT . "thumbs/" . $test_num . ".jpg";
	$new_file_url = "thumbs/" . $test_num . ".jpg";
	$test = "{$img_in} {$flags} {$new_file}";
	
	echo "<h3>Test #{$test_num}</h3>";
	execCommand($im_bin, $test);
	echo "<img src='{$new_file_url}'/>";
	
}

function doTests($tests, $CR_ROOT, $IM_CONVERT, $test_file)
{
	$test_num = 1;
	foreach ($tests as $test)
	{
		doTest($CR_ROOT, $IM_CONVERT, $test, $test_file, $test_num);
		$test_num++;
	}
}

$CR_ROOT = $_SERVER["DOCUMENT_ROOT"] . "/cambridgerealty/";
$IM_CONVERT = "convert ";
$test_file = $CR_ROOT . "images/ig_full_43Alberni_2.JPG";
$test_file_url = "images/ig_full_43Alberni_2.JPG";

$tests = array (
	"-thumbnail '64x64>'",
	"-thumbnail '250x250>'",
	"-resize '64x64>'",
	"-resize '250x250>'",
	"-auto-orient -resize '250x250>'",
	"-rotate '-90'"
);

if (!file_exists($CR_ROOT . "thumbs/"))
{
	mkdir($CR_ROOT . "thumbs/", 0777, true);
}

//Do a simple version test to ensure it is installed
execCommand($IM_CONVERT, "-version");

echo "<h3>Original Image</h3>";
echo "<img src='{$test_file_url}'/>";

doTests($tests, $CR_ROOT, $IM_CONVERT, $test_file);



?>
