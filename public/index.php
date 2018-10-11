<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
* Date: 10/9/18
* Time: 7:25 PM
*/

ini_set('display_errors', 1);

// Autoloading with Composer
require_once('../vendor/autoload.php');

// Route Loader, Settings Loader
require_once('../app/Loader.php');

//LFI Protection + Basic Routes, nothing extensive with "pretty names" and verbs :)
$expected_controllers = array ( 'index', 'home', 'install' );

if(!empty($_GET)) {
   if(in_array($_GET['controller'], $expected_controllers )) {
       $controller = new Loader($_GET);
       $controller = $controller->createController();
       $controller->executeAction();
   }
}