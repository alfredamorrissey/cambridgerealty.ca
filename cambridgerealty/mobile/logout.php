<?php
session_start();
session_destroy();
require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

include("./templates/header.inc.php");
include("./templates/login.inc.php");
include("./templates/footer.inc.php");

?>