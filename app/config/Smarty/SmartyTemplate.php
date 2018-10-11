<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/10/18
 */

namespace App\Config\Smarty;

use App\Config\Settings;

class SmartyTemplate extends \Smarty {
    function __construct() {
        parent::__construct();
        $smarty_path = Settings::get('smarty_views_directory');

        $this->setTemplateDir( $smarty_path . DIRECTORY_SEPARATOR . 'templates' );

        //Will default into public directory
        $this->setCompileDir( 'templates_c' );
        $this->setCacheDir(  'cache' );
        $this->setConfigDir(  'config' );
    }
}


