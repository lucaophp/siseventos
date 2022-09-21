<?php
class Topico implements IEntidade {
	private $idTopico;
	private $idPlan;
	private $nome;
	private $nivel;
	
	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidTopico((!isset($arr['idTopico'])) ? null : $arr['idTopico']);
		$this->setidPlan((!isset($arr['idPlan'])) ? null : $arr['idPlan']);
		$this->setNome((!isset($arr['nome'])) ? null : $arr['nome']);
		$this->setNivel((!isset($arr['nivel'])) ? null : $arr['nivel']);
	}
	
	public function getidTopico() {
		return $this->idTopico;
	}
	public function setidTopico($value) {
		$this->idTopico = (int)$value;
	}
	
	public function getidPlan() {
		return $this->idPlan;
	}	
	public function setidPlan($value) {
		$this->idPlan = (int)$value;
	}
	
	public function getNome() {
		return $this->nome;
	}	
	public function setNome($value) {
		$this->nome = $value;
	}
	public function getNivel() {
		return $this->nivel;
	}	
	public function setNivel($value) {
		$this->nivel = (int)$value;
	}
}