<?php
class EventRouter{
	public static $data;
	public static function start(){

		if(!empty(MainConfig::$_url)){

			$arrUrl=explode("/", MainConfig::$_url);
			$nomeEvento=array_shift($arrUrl);
			MainConfig::$_url=implode("/", $arrUrl);
			$_SESSION["event"]=Persistence::query("SELECT * FROM eventos WHERE url='{$nomeEvento}'");
			$_SESSION["event"]=isset($_SESSION["event"][0])?$_SESSION["event"][0] :array();
			if(empty($_SESSION["event"])){
				echo "<title>Evento não encontrado</title><meta charset='utf8'><h1>Evento não encontrado!!!</h1>";
				exit();
			}
			self::$data=($_SESSION["event"]);
		}

	}
}