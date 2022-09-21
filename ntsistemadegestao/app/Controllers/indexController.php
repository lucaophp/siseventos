<?php
class indexController extends Controller{
	public function __construct(){
		$dusuario = new DUsuario();				
		parent::__construct();
	}
	public function index(){		
		$this->_page->getHeader();
		require_once("app/Views/index.php");
		$this->_page->getFooter();
	}

	public function negado(){		
		$this->_page->getHeader();
		require_once("app/Views/negado.php");
		$this->_page->getFooter();
	}	
}