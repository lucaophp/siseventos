<?php
import("MySql.Persistence");

import("system/EventRouter.php");
class MainConfig{
	static $_url;
	static $_dir;
	static $_dbname;
	//static $_prefixDb;
	static $_userDb;
	static $_passDb;
	static $_serverDb;
	
	public function __construct(){
		
	}
	public static function defaultValues($val){
		if($val=='dbname')
			return "event";
		if($val=='dir')
			return "eventos";
		if($val=='url'){
			if(!isset($_GET['key'])){
				return array();

			}
			return $_GET['key'].'/';
		}
		if($val=='userDb')
			return "root";
		if($val=='passDb')
			return "";
		if($val=='serverDb')
			return "localhost";
		return null;
		
		
	}
	public static function main($args=null){
		//if(is_array($args)){
		self::$_serverDb=isset($args['serverDb'])? $args['serverDb'] : self::defaultValues('serverDb');
		self::$_dbname=isset($args['dbname'])? $args['dbname'] : self::defaultValues('dbname');
		self::$_dir=isset($args['dir'])? $args['dir'] : self::defaultValues('dir');
		self::$_url=isset($args['url'])? $args['url'] : self::defaultValues('url');
		self::$_userDb=isset($args['userDb'])? $args['userDb'] : self::defaultValues('userDb');
		self::$_passDb=isset($args['passDb'])? $args['passDb'] : self::defaultValues('passDb');
			
		echo Persistence::start()?"":"Não connectou";
		EventRouter::start();

		$url=explode("/",self::$_url);
		$param=0;
        foreach($url as $i=>$a){
            $a=trim($a);
        	if(isset($a)&&($a!="")){
            	$param++;
            }else{
                break;
            }
                
            
        }
		new Router($url,$param);
	}
	
	
}
