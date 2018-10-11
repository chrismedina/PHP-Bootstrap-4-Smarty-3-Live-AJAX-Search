<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 12/2/15
 * Time: 1:12 PM
 */

namespace App\Config;

class Settings {
    public static function get($path = null){
        if($path){
            //Laravel Style
            $paths = explode('.',$path);
            $config = $GLOBALS['config'];

            foreach($paths as $bit){
                if(isset($config[$bit])) {
                    $config = $config[$bit];
                }
            }

            return $config;
        }else {
            return new \Exception('Configuration path not set');
        }
    }
}