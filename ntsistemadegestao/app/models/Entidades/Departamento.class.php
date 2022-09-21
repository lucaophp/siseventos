<?php
class Departamento implements IEntidade{
	private $idDep;
	private $idEmpresa;
	private $nome;

	public function __construct($arr = null){
		if(is_array($arr)){
			$this->setidDep((!isset($arr['idDep'])) ? null:$arr['idDep']);
			$this->setidEmpresa((!isset($arr['idEmpresa']))?null:$arr['idEmpresa']);
			$this->setNome((!isset($arr['nome']))?null:$arr['nome']);
		}
	}
	public function getidDep(){
		return $this->idDep;
	}
	public function setidDep($idDep){
		$this->idDep=$idDep;
	}
	public function getidEmpresa(){
		return $this->idEmpresa;
	}
	public function setidEmpresa($idEmpresa){
		$this->idEmpresa=$idEmpresa;
	}	
	public function getNome(){
		return $this->nome;
	}
	public function setNome($nome){
		$this->nome=$nome;
	}
	/*
	public function getEmpresa(){
		return $this->empresa;
	}
	public function setEmpresa($empresa){
		if($empresa instanceof Empresa){
			$this->empresa=$empresa;
		}
	}
	*/
}