<?php
import("ActiveRecord.ActiveRecord");
abstract class Controller{
	public static function main(){
		$usuario=MainConfig::$_userDb;
		$senha=MainConfig::$_passDb;
		$server=MainConfig::$_serverDb;
		$dbname=MainConfig::$_dbname;
		if(trim($senha)!=""){
			$strConn="mysql://{$usuario}:{$senha}@{$server}/{$dbname}";
		}else{
			$strConn="mysql://{$usuario}@{$server}/{$dbname}";
		}
		$cfg = ActiveRecord\Config::instance();
		$cfg->set_model_directory('../app/Models');
		$cfg->set_connections(array('development' =>
  			$strConn));
	}
	
}