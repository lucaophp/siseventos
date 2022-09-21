<?php
class Item implements IEntidade {
	private $idItem;
	private $idSubtopico;
	private $nomeItem;
	private $texto;
	
	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidItem((!isset($arr['idItem'])) ? null : $arr['idItem']);
		$this->setidSubtopico((!isset($arr['idSubtopico'])) ? null : $arr['idSubtopico']);
		$this->setNomeItem((!isset($arr['nomeItem'])) ? null : $arr['nomeItem']);
		$this->setTexto((!isset($arr['texto'])) ? null : $arr['texto']);
	}
	
	public function getidItem() {
		return $this->idItem;
	}
	public function setidItem($value) {
		$this->idItem = $value;
	}
	
	public function getidSubtopico() {
		return $this->idSubtopico;
	}	
	public function setidSubtopico($value) {
		$this->idSubtopico = $value;
	}
	
	public function getNomeItem() {
		return $this->nomeItem;
	}	
	public function setNomeItem($value) {
		$this->nomeItem = $value;
	}
	
	public function getTexto() {
		return $this->texto;
	}	
	public function setTexto($value) {
		$this->texto = $value;
	}
}