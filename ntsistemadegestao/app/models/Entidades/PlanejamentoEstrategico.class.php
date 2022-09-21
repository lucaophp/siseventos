<?php
class PlanejamentoEstrategico implements IEntidade {
	private $idPlan;
	private $idEmpresa;
	private $consideracoesIniciais;
	private $consideracoesFinais;
	
	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidPlan((!isset($arr['idPlan'])) ? null : $arr['idPlan']);
		$this->setidEmpresa((!isset($arr['idEmpresa'])) ? null : $arr['idEmpresa']);
		$this->setConsideracoesIniciais((!isset($arr['consideracoesIniciais'])) ? null : $arr['consideracoesIniciais']);
		$this->setConsideracoesFinais((!isset($arr['consideracoesFinais'])) ? null : $arr['consideracoesFinais']);
	}
	
	public function getidPlan() {
		return $this->idPlan;
	}
	public function setidPlan($value) {
		$this->idPlan = $value;
	}
	
	public function getidEmpresa() {
		return $this->idEmpresa;
	}	
	public function setidEmpresa($value) {
		$this->idEmpresa = $value;
	}
	
	public function getconsideracoesIniciais() {
		return $this->consideracoesIniciais;
	}
	public function setconsideracoesIniciais($value) {
		$this->consideracoesIniciais = $value;
	}
	
	public function getconsideracoesFinais() {
		return $this->consideracoesFinais;
	}
	public function setconsideracoesFinais($value) {
		$this->consideracoesFinais = $value;
	}
}