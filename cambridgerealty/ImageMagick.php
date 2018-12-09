<?
/*
// This file will run a test on your server to determine the location and versions of ImageMagick. 
//It will look in the most commonly found locations. The last two are where most popular hosts (including "Godaddy") install ImageMagick.
//
// Upload this script to your server and run it for a breakdown of where ImageMagick is.
//
*/



if( class_exists("Imagick") || extension_loaded('imagick') )
{
	echo "The PHP module is loaded.";
}
else
{
	echo "The PHP module is not loaded";
}

echo '<h2>Test for versions and locations of ImageMagick</h2>';
echo '<b>Path: </b> convert<br>';

function alist ($array) {  //This function prints a text array as an html list.
    $alist = "<ul>";
    for ($i = 0; $i < sizeof($array); $i++) {
        $alist .= "<li>$array[$i]";
    }
    $alist .= "</ul>";
    return $alist;
}

exec("convert -version", $out, $rcode); //Try to get ImageMagick "convert" program version number.
echo "Version return code is $rcode <br>"; //Print the return code: 0 if OK, nonzero if error.
echo alist($out); //Print the output of "convert -version"
echo '<br>';
echo '<b>This should test for ImageMagick version 5.x</b><br>';
echo '<b>Path: </b> /usr/bin/convert<br>';

exec("/usr/bin/convert -version", $out, $rcode); //Try to get ImageMagick "convert" program version number.
echo "Version return code is $rcode <br>"; //Print the return code: 0 if OK, nonzero if error.
echo alist($out); //Print the output of "convert -version"

echo '<br>';
echo '<b>This should test for ImageMagick version 6.x</b><br>';
echo '<b>Path: </b> /usr/local/bin/convert<br>';

exec("/usr/local/bin/convert -version", $out, $rcode); //Try to get ImageMagick "convert" program version number.
echo "Version return code is $rcode <br>"; //Print the return code: 0 if OK, nonzero if error.
echo alist($out); //Print the output of "convert -version";

phpinfo();


/*	INSTRUCTIONS
	==========================================================
	- Upload this file to your server and then go to the file in your browser (e.g. http://example.com/phpinfo.php). 
	- It will autmoatically download Godaddy's PHP5.ini file to your server. 
	- Please delete this file once you are finished with it.
*/
   
	//phpinfo();
	//$file = "php5.ini"; 									/* Name of the final file you want to create */
	//$handle = fopen($file, 'w'); 							/* open (clean) / create the file 'php5.ini' */
	//$vData = file_get_contents('/web/conf/' . $file); 		/* Replace '/web/conf/' to '/your/path/here' if this does not work by default. */
	//fwrite($handle, $vData);  								/* write the contents of Godaddy's php5.ini to your php5.ini file */
	//print "File Saved!";  									/* Tell you it's saved (sorry didn't test for exceptions) */
	//fclose($handle); 										/* clean up */
	



?>