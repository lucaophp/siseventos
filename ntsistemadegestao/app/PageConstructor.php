<?php
class Page {

	public $DEmpresa;
	public $DUsuario;
	public $empresa;
	public $usuario;

	public function __construct() {
		$this->DEmpresa = new DEmpresa();
		$this->DUsuario = new DUsuario();
		$this->usuario = $this->DUsuario->getBySession();

		$dcargo = new DCargo();
		$cargo = $dcargo->getbyId( $this->usuario->getidCargo() );

		$this->empresa = $this->DEmpresa->getById( $cargo->getidEmpresa() );	
	}

	public function getHeader(){
		require_once("app/Views/header.php");
	}
	public function getFooter(){
		require_once("app/Views/footer.php");
	}
}
