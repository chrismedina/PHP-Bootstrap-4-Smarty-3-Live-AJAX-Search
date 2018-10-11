<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 */
namespace App\Models;

use App\Support\Database;

abstract class BaseModel {
    protected $db;

    function __construct()
    {
        $this->db = Database::connect()->database;
    }

    /**
     * Determine if table exists in current database
     * @param $table_name
     *
     * @return bool
     */
    function tableExists( $table_name )
    {
        try{
            $this->db->prepare( "SELECT 1 FROM " . $table_name . " LIMIT 1" );
        }catch(\Exception $e)
        {
            return false;
        }
        return true;
    }
}