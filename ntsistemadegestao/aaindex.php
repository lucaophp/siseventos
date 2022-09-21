<?php
session_name("falcao");
session_start();
//var_dump($_SESSION);

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

function __autoload($class){
	if( file_exists("app/Models/Entidades/{$class}.class.php") )
		require_once("app/Models/Entidades/{$class}.class.php");
	else if( file_exists("app/Models/DAO/{$class}.class.php") )
		require_once("app/Models/DAO/{$class}.class.php");
}

class IndexRouter{
	public $_dir;
	public $_action,$_control,$_params;
	public function __construct(){
		$this->_dir = __dir();
		$this->_control= (isset($_GET['key']) ? $_GET['key']."/" : 'login/');
		$this->_control= explode("/", $this->_control);
		$this->_action = ( ($this->_control[1] != null) ? $this->_control[1] : 'index');
		//echo $this->_action;
		$this->_params = $this->_control;
		$this->_control = $this->_control[0];
		require_once("app/Controller.php");
		require_once("app/Model.php");
	}
	
	public function callController(){
		$file = "app/Controllers/{$this->_control}Controller.php";
		$acao = $this->_action;
		if(file_exists($file)) 
			require_once($file);
		else
		{
			$this->_control = "login";
			require_once("app/Controllers/{$this->_control}Controller.php");
		}
		$controllerName = $this->_control . "Controller";
		$controller = new $controllerName($this->_params);

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

chmod("app", 0777);
$index = new IndexRouter();
$index->callController();