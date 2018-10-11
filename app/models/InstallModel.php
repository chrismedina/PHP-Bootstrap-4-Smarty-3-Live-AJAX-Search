<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 */
namespace App\Models;

class InstallModel extends BaseModel{
    /**
     * Installation
     * @return bool
     */
    function createTables()
    {
      $sql_pokemon_types_table = "CREATE TABLE pokemon_types (
                                  pokemon_type_id tinyint(2) NOT NULL AUTO_INCREMENT primary key,
                                  pokemon_type_name VARCHAR(10) NOT NULL,
                                  UNIQUE ( pokemon_type_name ) );";

      $sql_pokemon_table =       "CREATE TABLE pokemon (
                                  pokemon_id smallint(4) NOT NULL AUTO_INCREMENT primary key,
                                  pokemon_name VARCHAR(20) NOT NULL,
                                  UNIQUE ( pokemon_name ) );";
        //association table
        $pokemon_pokemon_types = "CREATE TABLE assn_pokemon_pokemon_types (
                                  pokemon_id smallint(4) NOT NULL,
                                  pokemon_type_id tinyint(2) NOT NULL ,
                                  PRIMARY KEY (pokemon_id, pokemon_type_id) );";

        $alter_table =           "ALTER TABLE assn_pokemon_pokemon_types
                                  ADD CONSTRAINT pokemon_pokemon_types_assn_fk_1 FOREIGN KEY (pokemon_id) REFERENCES pokemon (pokemon_id),
                                  ADD CONSTRAINT pokemon_pokemon_types_assn_fk_1 FOREIGN KEY (pokemon_type_id) REFERENCES pokemon_types (pokemon_type_id);";

        try{
            $dbh = $this->db->prepare($sql_pokemon_types_table);
            $dbh->execute();

            $dbh = $this->db->prepare($sql_pokemon_table);
            $dbh->execute();

            $dbh = $this->db->prepare($pokemon_pokemon_types);
            $dbh->execute();

            $dbh = $this->db->prepare($alter_table);
            $dbh->execute();
        }catch( \Exception $e){
            return false;
        }

        return true;
    }

    /**
     * This function expects a json structure
     * Will import all data to pokemon, pokemon_types, and associate them
     * @param $json_file
     */
    function importFromFile( $json_file )
    {
        $read_file = json_decode( file_get_contents( $json_file), true );

        $pokemon_insert = "INSERT INTO pokemon VALUES( NULL, :pokemon_name )";
        $pokemon_type_insert = "INSERT INTO pokemon_types VALUES( NULL, :pokemon_type_name )";
        $assn_pokemon_pokemon_types = "INSERT INTO assn_pokemon_pokemon_types VALUES (:pokemon_id, :pokemon_type_id)";

        $dbh_pokemon = $this->db->prepare($pokemon_insert);
        $dbh_pokemon_type = $this->db->prepare($pokemon_type_insert);
        $dbh_assn_pokemon_pokemon_type = $this->db->prepare($assn_pokemon_pokemon_types);

        $pokemon_types_model = new PokemonTypesModel;

        //to not repeat insertion of same type / prevent auto_increment gap
        $type_values = [];

        $errors = [];

        foreach ($read_file as $value) {

            //ignore if type isn't defined for the Pokemon (internal rule)
            if(isset($value['name']) && isset($value['types'])){
                $pokemon_name = ucfirst($value['name']);

                //Insert Pokemon name
                    if($dbh_pokemon->execute( array( ':pokemon_name' => $pokemon_name)) ){
                        $pokemon_last_id = $this->db->lastInsertId();
                    }else{
                        $errors[] = array( "Failed inserting $pokemon_name", $dbh_pokemon->errorInfo() );
                        $pokemon_last_id = false;
                    }

                if($pokemon_last_id){
                    foreach($value['types'] as $type_value) {
                        if(in_array($type_value, $type_values)){
                            //Query pokemon_types to get the type ID
                            $pokemon_type_last_id = $pokemon_types_model->getTypeIdFromName( $type_value );
                        }else{
                            //Insert pokemon type name
                            $pokemon_type_response = $dbh_pokemon_type->execute( array( ':pokemon_type_name' => $type_value));
                            $pokemon_type_last_id = ($pokemon_type_response == true) ? $this->db->lastInsertId() : '';
                        }

                        //prevent gaps in auto_increment
                        $type_values[] = $type_value;

                        //Create Association between pokemon -> pokemon_type tables
                        if($pokemon_type_last_id)
                        {
                            $dbh_assn_pokemon_pokemon_type->execute( array( ':pokemon_id' => $pokemon_last_id,
                                                                            ':pokemon_type_id' => $pokemon_type_last_id
                                ));
                        }
                    }

                }
            }

            $pokemon_last_id = false;
            $pokemon_type_last_id = false;
        }
        if(!empty($errors))
        {
            return $errors;
        }

        return true;
    }
}