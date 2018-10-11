<?php
/**
 * Created by PhpStorm.
 * User: Chris Medina
 * Date: 10/9/18
 * Time: 7:09 PM
 */
namespace App\Controllers;

use App\Models\InstallModel;

use App\Config\Settings;

class InstallController  extends BaseController
{
    /**
     *   Create Table and Populate with pokemon.json data
     */
    function run()
    {
        $install = new InstallModel;

        $response = $install->createTables();

        if($response){
            $pokemon_file = Settings::get('install_data_file');

            if(file_exists($pokemon_file)) {
                $import = $install->importFromFile( Settings::get( 'install_data_file' ) );
                if($import) $this->tpl->assign('success', 'success');
            }else{
                $this->tpl->assign( 'error' ,  "Installation file not found" );
            }
        }


            $this->tpl->display( 'install/index.tpl' );
    }
}