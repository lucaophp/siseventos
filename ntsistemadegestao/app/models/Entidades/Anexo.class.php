<?php
class Anexo implements IEntidade {
	private $idAnexo;
	private $idPlan;
	private $arquivo;
	
	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidAnexo((!isset($arr['idAnexo'])) ? null : $arr['idAnexo']);
		$this->setidPlan((!isset($arr['idPlan'])) ? null : $arr['idPlan']);
		$this->setArquivo((!isset($arr['arquivo'])) ? null : $arr['arquivo']);
	}
	
	public function getidAnexo() {
		return $this->idAnexo;
	}
	public function setidAnexo($value) {
		$this->idAnexo = $value;
	}
	
	public function getidPlan() {
		return $this->idPlan;
	}	
	public function setidPlan($value) {
		$this->idPlan = $value;
	}
	
	public function getArquivo() {
		return $this->arquivo;
	}	
	public function setArquivo($value) {
		$this->arquivo = $value;
	}
}