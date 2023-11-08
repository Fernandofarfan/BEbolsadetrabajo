<?php

$debug= getenv('DEBUG');
if ($debug) {
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
} else {
    error_reporting(0);	
}


include "core/autoload.php";
ob_start();
session_start();

$lb = new Lb();
$lb->start();
