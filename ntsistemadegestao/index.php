<?php
session_name("falcao");
session_start();
//var_dump($_SESSION);

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);
date_default_timezone_set("Brazil/East");

function __autoload($class){
	if( file_exists("app/Models/Entidades/{$class}.class.php") )
		require_once("app/Models/Entidades/{$class}.class.php");
	else if( file_exists("app/Models/DAO/{$class}.class.php") )
		require_once("app/Models/DAO/{$class}.class.php");
	else if(file_exists("app/Middle/{$class}.class.php")){
		require_once("app/Middle/{$class}.class.php");
	}
}

class IndexRouter{
	public static $_dir;
	public static $_action,$_control,$_params;
	public function __construct(){
		self::$_dir = __dir();
		self::$_control= (isset($_GET['key']) ? $_GET['key']."/" : 'login/');
		self::$_control= explode("/", self::$_control);
		self::$_action = ( (self::$_control[1] != null) ? self::$_control[1] : 'index');
		//echo self::$_action;
		self::$_params = self::$_control;
		self::$_control = self::$_control[0];
		require_once("app/Controller.php");
		require_once("app/Model.php");
	}
	
	public function callController(){
		$controller=self::$_control;
		$file = "app/Controllers/{$controller}Controller.php";
		$acao = self::$_action;
		if(file_exists($file)) 
			require_once($file);
		else
		{
			self::$_control = "login";
			require_once("app/Controllers/{$controller}Controller.php");
		}
		$controllerName = self::$_control . "Controller";
		$controller = new $controllerName(self::$_params);

		if(method_exists($controller, $acao)) 
			$controller->$acao();	
		else $controller->index();
	}

}

function __dir(){
	return str_replace("\\", "/", (substr(__DIR__, strlen($_SERVER['DOCUMENT_ROOT'])) . "\\"));
}
function getParam( $param ) {
	$get = ( isset( $_GET['key'] ) ? explode( '/', $_GET['key'] ) : array() );
	if( array_key_exists( $param, $get ) )
		return $get[$param];
	else return false;
}

//chmod("app", 0777);
$index = new IndexRouter();
$index->callController();