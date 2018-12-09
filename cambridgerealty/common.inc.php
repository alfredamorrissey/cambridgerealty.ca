<?php

/******************************************************************************
 * AUTOLOAD
 *****************************************************************************/
function __autoload($class)
{
	//require_once("classes/" . $class . ".php") ;
	require_once($_SERVER["DOCUMENT_ROOT"] . "/cambridgerealty/classes/"  . str_replace("\\", "/", $class) . ".php") ;
	return true;
}

/******************************************************************************
 * Localization
 *****************************************************************************/
date_default_timezone_set('America/Montreal');
setlocale(LC_MONETARY, 'en_US.UTF-8');

/******************************************************************************
 * GLOBALS
 *****************************************************************************/
use Katzgrau\KLogger\Logger;
use Psr\Log;
$_SESSION["logger"] = new Katzgrau\KLogger\Logger('logs/', Psr\Log\LogLevel::DEBUG);
//$_SESSION["logger"]->info('Session: ', $_SESSION);
//$_SESSION["logger"]->info('Post: ', $_POST);
//$_SESSION["logger"] = KLogger::instance('logs/', KLogger::DEBUG);
//$_SESSION["logger"]->logInfo('Info Test');
$arrLanguages = array(
	'FR' => 'Français',
	'EN' => 'English'
) ;

$arrMonths = array(
	1 => array (  'EN' => array ( 'FULL'=>'January',   'ABRV'=>'Jan.'), 'FR' => array( 'FULL'=>'janvier',   'ABRV'=>'janv.') ),
	2 => array (  'EN' => array ( 'FULL'=>'February',  'ABRV'=>'Feb.'), 'FR' => array( 'FULL'=>'février',   'ABRV'=>'fevr.') ),
	3 => array (  'EN' => array ( 'FULL'=>'March',     'ABRV'=>'Mar.'), 'FR' => array( 'FULL'=>'mars',      'ABRV'=>'mars' ) ),
	4 => array (  'EN' => array ( 'FULL'=>'April',     'ABRV'=>'Apr.'), 'FR' => array( 'FULL'=>'avril',     'ABRV'=>'avril') ),
	5 => array (  'EN' => array ( 'FULL'=>'May',       'ABRV'=>'May'),  'FR' => array( 'FULL'=>'mai',       'ABRV'=>'mai'  ) ),
	6 => array (  'EN' => array ( 'FULL'=>'June',      'ABRV'=>'Jun.'), 'FR' => array( 'FULL'=>'juin',      'ABRV'=>'juin' ) ),
	7 => array (  'EN' => array ( 'FULL'=>'July',      'ABRV'=>'Jul.'), 'FR' => array( 'FULL'=>'juillet',   'ABRV'=>'juil.') ),
	8 => array (  'EN' => array ( 'FULL'=>'August',    'ABRV'=>'Aug.'), 'FR' => array( 'FULL'=>'août',      'ABRV'=>'aout' ) ),
	9 => array (  'EN' => array ( 'FULL'=>'September', 'ABRV'=>'Sep.'), 'FR' => array( 'FULL'=>'septembre', 'ABRV'=>'sept.') ),
	10 => array ( 'EN' => array ( 'FULL'=>'October',   'ABRV'=>'Oct.'), 'FR' => array( 'FULL'=>'octobre',   'ABRV'=>'oct.' ) ),
	11 => array ( 'EN' => array ( 'FULL'=>'November',  'ABRV'=>'Nov.'), 'FR' => array( 'FULL'=>'novembre',  'ABRV'=>'nov.' ) ),
	12 => array ( 'EN' => array ( 'FULL'=>'December',  'ABRV'=>'Dec.'), 'FR' => array( 'FULL'=>'décembre',  'ABRV'=>'dec.' ) )
);

$arrOccupancy = array (
	1 	=> '1 Bedroom',
	2 	=> '2 Bedroom',
	'B'	=> 'Bachelor'
);

$arrProvinces = array( 
    "BC" => "British Columbia", 
    "ON" => "Ontario", 
    "NL" => "Newfoundland and Labrador", 
    "NS" => "Nova Scotia", 
    "PE" => "Prince Edward Island", 
    "NB" => "New Brunswick", 
    "QC" => "Quebec", 
    "MB" => "Manitoba", 
    "SK" => "Saskatchewan", 
    "AB" => "Alberta", 
    "NT" => "Northwest Territories", 
    "NU" => "Nunavut",
    "YT" => "Yukon Territory"
);

$arrSuiteLayouts = array( 
    "01" => "01", 
    "02" => "02", 
    "03" => "03", 
    "04" => "04", 
    "05" => "05", 
    "06" => "06", 
    "07" => "07", 
    "08" => "08", 
    "B-1" => "B-1",
	"B-2" => "B-2"
    
);

$arrHouseTypes = array( 
    "DETACHED" => "Single Family", 
    "SEMI-DETACHED" => "Townhome"
    
);

$arrFeatures = array(
	"BREAKFAST_NOOK" => "breakfast nook",
	"DINING_ROOM" => "dining room",
	"FIREPLACE" => "fireplace",
	"GARAGE" => "garage",
	"LIVING_ROOM" => "living room",
	"PATIO" => "patio",
	"STORAGE" => "storage",
	"YARD" => "yard",
	"FENCED_YARD" => "fenced yard",
	"PARKING" => "parking",
	"ENSUITE" => "ensuite bathroom",
	"WALK_IN_CLOSET" => "walk in closet"
	
);




function test_input($data) {
   	
   if ($data == null) $data = "";
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}

function test_amount($data) {
	if (is_numeric($data))
	{
		setlocale(LC_MONETARY, 'en_US.UTF-8');
		return money_format('%.2n', $data);
	}
	return null;
}

function add_user($username, $password, $conn)
{
	$member = new beanMember($conn);

	$member->__set("username", $username);
	$member->setPassword($password);
	$member->__doSave();

}

function buildSelect($name, $hash, $selected_key, $js_code="")
{
	$html = "<select name='{$name}' {$js_code}>";
	foreach($hash as $key => $value)
	{
		$selected = "";
		if ($key == $selected_key) {$selected = "selected";}
		$html = $html . "<option value=\"{$key}\" {$selected}>{$value}</option>"; 
	}
		
	$html = $html . "</select>";
	return $html;
}

function buildFieldset($name, $hash, $checked_keys, $js_code="")
{
	$html = "<fieldset><div class=\"section group\">";
	
	$i=0;
	$num_per_col = 4;
	$span_class = "span_2_of_2";
	$num_items = count($hash);
	if ($num_items > 4)
	{
		$span_class = "span_1_of_2";
		$num_per_col = ceil($num_items / 2); 
	}
	$html = $html . "<div class='col {$span_class}'>";
	foreach($hash as $key => $value)
	{
		$selected = "";
		if ($i == $num_per_col)
		{
			$html = $html . "</div><div class='col span_1_of_2'>";
		}
		if ( in_array($key, $checked_keys)) {$selected = "checked";}
		$html = $html . "<input type='checkbox' name='{$name}' value='{$key}' {$selected}/>";
		$html = $html . $value . "<br/>\n";
		$i++;
		
	}
		
	$html = $html . "</fieldset>";
	return $html;
}
?>
