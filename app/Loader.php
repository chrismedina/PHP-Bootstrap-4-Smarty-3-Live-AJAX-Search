<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 * Time: 7:46 PM
 */

class Loader {

    private $url;
    private $controller;
    private $action;

    private $namespace = "App\\Controllers\\";

    function __construct( $url ){
        if(file_exists('../config/settings.php')){
            require_once('../config/settings.php');
        }

        if(!empty($_GET)) {
            $this->url = $_GET;
        }

        if(isset($this->url['controller'])) {
            $this->controller = $this->namespace . $this->url['controller'] . 'Controller';
        }else {
            $this->controller = $this->namespace . 'HomeController';
        }

        if(isset($this->url['action'])) {
            $this->action = $this->url['action'];
        }else {
            $this->action = 'index';
        }
    }

    function createController() {
        if(class_exists($this->controller)) {
            $parent = class_parents($this->controller);
            if(in_array( $this->namespace . 'BaseController', $parent)) {
                if(method_exists($this->controller,$this->action)) {
                    return new $this->controller( $this->url, $this->action );
                } else {
                    throw new \Exception ("Method {$this->action} does not exists.");
                }
            }else {
                throw new \Exception("BaseController of {$this->controller} not found.");
            }

        } else {
            throw new \Exception("Controller {$this->controller} not found.");
        }
    }
}