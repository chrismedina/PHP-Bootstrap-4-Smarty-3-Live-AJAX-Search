<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 * Time: 1:51 PM
 */

namespace App\Controllers;

use App\Config\Smarty\SmartyTemplate;

abstract class BaseController {
    protected $url;
    protected $action;

    function __construct($url, $action){
        $this->url = $url;
        $this->action = $action;
        $this->tpl = new SmartyTemplate;
    }

    function executeAction(){
        if(!empty($this->action)) return $this->{$this->action}();
    }
}