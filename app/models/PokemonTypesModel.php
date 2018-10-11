<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/10/18
 */

namespace App\Models;

class PokemonTypesModel extends BaseModel
{
    protected $tablename = 'pokemon_types';

    function getTypeIdFromName( $pokemon_type_name )
    {
        $sql = "SELECT pokemon_type_id FROM " . $this->tablename . " WHERE pokemon_type_name = :pokemon_type_name LIMIT 1";
        $dbh = $this->db->prepare($sql);
        if($dbh->execute(array( ':pokemon_type_name' => $pokemon_type_name )))
        {
            $row = $dbh->fetch();
            if(isset($row['pokemon_type_id'])) return $row['pokemon_type_id'];
        }
        return false;
    }
}