<?php
class Estrategia implements IEntidade {
	private $idEstrategia;
	private $idPlan;
	private $classificacao;
	private $tipo;
	private $estrategia;
	
	
	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidEstrategia((!isset($arr['idEstrategia'])) ? null : $arr['idEstrategia']);
		$this->setidPlan((!isset($arr['idPlan'])) ? null : $arr['idPlan']);
		$this->setClassificacao((!isset($arr['classificacao'])) ? null : $arr['classificacao']);
		$this->setTipo((!isset($arr['tipo'])) ? null : $arr['tipo']);
		$this->setEstrategia((!isset($arr['estrategia'])) ? null : $arr['estrategia']);
	}
	
	public function getidEstrategia() {
		return $this->idEstrategia;
	}
	public function setidEstrategia($value) {
		$this->idEstrategia = $value;
	}
	
	public function getidPlan() {
		return $this->idPlan;
	}	
	public function setidPlan($value) {
		$this->idPlan = $value;
	}
	
	public function getClassificacao() {
		return $this->classificacao;
	}	
	public function setClassificacao($value) {
		$this->classificacao = $value;
	}
	
	public function getTipo() {
		return $this->tipo;
	}	
	public function setTipo($value) {
		$this->tipo = $value;
	}
	
	public function getEstrategia() {
		return $this->estrategia;
	}	
	public function setEstrategia($value) {
		$this->estrategia = $value;
	}
}