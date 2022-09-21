<?php
class Cargo implements IEntidade {
	private $idCargo;
	private $idDep;
	private $idEmpresa;
	private $nivel;
	private $nomeFuncao;
	
	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidCargo((!isset($arr['idCargo'])) ? null : $arr['idCargo']);
		$this->setidDep((!isset($arr['idDep'])) ? null : $arr['idDep']);
		$this->setidEmpresa((!isset($arr['idEmpresa'])) ? null : $arr['idEmpresa']);
		$this->setNivel((!isset($arr['nivel'])) ? null : $arr['nivel']);
		$this->setNomeFuncao((!isset($arr['nomeFuncao'])) ? null : $arr['nomeFuncao']);
	}
	
	public function getidCargo() {
		return $this->idCargo;
	}
	public function setidCargo($value) {
		$this->idCargo = $value;
	}
	
	public function getidDep() {
		return $this->idDep;
	}	
	public function setidDep($value) {
		$this->idDep = $value;
	}
	
	public function getidEmpresa() {
		return $this->idEmpresa;
	}	
	public function setidEmpresa($value) {
		$this->idEmpresa = $value;
	}
	
	public function getNivel() {
		return $this->nivel;
	}
	public function setNivel($value) {
		$this->nivel = $value;
	}
	
	public function getNomeFuncao() {
		return $this->nomeFuncao;
	}
	public function setNomeFuncao($value) {
		$this->nomeFuncao = $value;
	}

	public function getDepartamento() {
		$_dcargo = new DDepartamento();
		$_cargo = $_dcargo->getById($this->getidDep());
		return $_cargo->getNome();
	}
}