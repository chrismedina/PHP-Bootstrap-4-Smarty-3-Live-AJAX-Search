<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 * Time: 1:59 PM
 */

namespace App\Controllers;

use App\Models\AssnPokemonPokemonTypesModel;

class HomeController extends BaseController{
    function index() {
        $this->tpl->display('home/index.tpl' );
    }

    /**
     * AJAJ Search
     */
    function search()
    {
        if(isset($_POST['search'])){
            $search_phrase = htmlentities($_POST['search']);
            if(ctype_alnum($search_phrase)){
                $model = new AssnPokemonPokemonTypesModel;

                $result = $model->combinedSearch( $search_phrase );

                if($result){
                    header('Content-Type: application/json');
                    echo json_encode( array( 'results' => $result ));
                }
            }
        }
    }
}