<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 */
namespace App\Models;

class HomeModel extends BaseModel{

    function getNames()
    {
        $dbh = $this->db->prepare("SELECT * FROM TableName WHERE 1");
        $dbh->execute();
        if($dbh->rowCount()){
            return $dbh->fetchAll();
        }
    }

    /**
     * searchPokemon AJAJ function to return results from pokemon or pokemon_types tables
     * @param $search_string
     *
     * @return string
     */
    function searchPokemon( $search_string )
    {
        $dbh = $this->db->prepare("SELECT * FROM TableName WHERE 1");
        $dbh->execute();

        var_dump($dbh->fetchAll());

        return json_encode($dbh->fetchAll(), JSON_PRETTY_PRINT);
    }
}