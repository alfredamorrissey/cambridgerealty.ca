<?php
require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

//add_user("alfredamorrissey@gmail.com", "9Sammy21", $conn);
//add_user("e.674.em@gmail.com", "Pluron25", $conn);

$member = new beanMember($conn);
$member->testEncryption("Pluron25");
$member->testEncryption("Pluron25");
$member->testEncryption("Pluron25");
$member->testEncryption("9Sammy21");
$member->testEncryption("9Sammy21");
$member->testEncryption("9Sammy21");

		include("templates/header.inc.php");
		include("templates/list_users.inc.php");
		include("templates/footer.inc.php");

?>