<?php
require_once '../dbconfigs.inc.php';
require_once '../common.inc.php';

$member = new beanMember($conn);
$member->__set("member_id",  2);
$member->__doLoad();

$member->setPassword('Pluron25');
$member->__doSave();

echo ("Set password for ". $member->__get("username") . " to " . $member->__get("password"));

$member = new beanMember($conn);
$member->__set("member_id",  1);
$member->__doLoad();

$member->setPassword('9Sammy21..');
$member->__doSave();

echo ("Set password for ". $member->__get("username") . " to " . $member->__get("password"));

