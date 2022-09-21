<?php
session_start();
require_once("../system/functions.php");
selectMime();


try{
    
    import("system/MainConfig.php");
    //import("MySql.Persistence");
    MainConfig::main(
        array(
            "dbname"=>"db_eventos",
            "dir"=>"eventos",
            "serverDb"=>"localhost",
            "userDb"=>"root",
            "passDb"=>""
        )
    );
}catch(Exception $e){
    alert($e->getMessage());
    Log::getInstance("ERROR",$e);
    

}