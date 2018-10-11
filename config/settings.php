<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/10/18
 */


//Database settings, file path settings, etc

$GLOBALS['config'] = array (
    'mysql' => array (
        'username' => 'root',
        'password' => 'root',
        'database' => 'database',
        'host' => 'localhost'
    ),

    'smarty_views_directory' => dirname(__DIR__) . DIRECTORY_SEPARATOR . 'views' ,

    'install_data_file' => dirname(__DIR__) . DIRECTORY_SEPARATOR . 'pokemon.json'
);