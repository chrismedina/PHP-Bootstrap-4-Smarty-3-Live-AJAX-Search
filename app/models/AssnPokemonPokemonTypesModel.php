<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/10/18
 */

namespace App\Models;

class AssnPokemonPokemonTypesModel extends BaseModel {
  protected $tables =  [ 'pokemon', 'pokemon_types' ];

  function combinedSearch( $search_term )
  {
      $sql ="   SELECT p.pokemon_id poke_id, p.pokemon_name, pt.pokemon_type_name  FROM pokemon p
                INNER JOIN assn_pokemon_pokemon_types AS apt ON( apt.pokemon_id = p.pokemon_id)
                LEFT OUTER JOIN pokemon_types AS pt ON ( pt.pokemon_type_id = apt.pokemon_type_id)
                WHERE p.pokemon_name LIKE  :search_term
                UNION
                SELECT apt2.pokemon_id poke_id, p.pokemon_name,pt.pokemon_type_name  FROM pokemon_types pt
                INNER JOIN assn_pokemon_pokemon_types AS apt2 ON( apt2.pokemon_type_id = pt.pokemon_type_id )
                LEFT OUTER JOIN pokemon AS p ON ( p.pokemon_id = apt2.pokemon_id )
                WHERE pokemon_type_name LIKE  :search_term ORDER BY poke_id ASC";

      $dbh = $this->db->prepare($sql);

      //Add wildcard to term for PDO compatibility
      if($dbh->execute( array( ':search_term' => '%'.$search_term.'%'))){
          return $dbh->fetchAll(\PDO::FETCH_ASSOC);
      } else {
          return false;
      }
  }
}