<?php
class Subtopico implements IEntidade {
	private $idSubtopico;
	private $idTopico;
	private $nomeSubtopico;
        private $nivel;
        

        

        public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr) {
		$this->setidSubtopico((!isset($arr['idSubtopico'])) ? null : $arr['idSubtopico']);
		$this->setidTopico((!isset($arr['idTopico'])) ? null : $arr['idTopico']);
		$this->setNomeSubtopico((!isset($arr['nomeSubtopico'])) ? null : $arr['nomeSubtopico']);
                $this->setNivel((!isset($arr['nivel'])) ? null : $arr['nivel']);
	}
	
	public function getidSubtopico() {
		return $this->idSubtopico;
	}
	public function setidSubtopico($value) {
		$this->idSubtopico = $value;
	}
	
	public function getidTopico() {
		return $this->idTopico;
	}	
	public function setidTopico($value) {
		$this->idTopico = $value;
	}
	
	public function getNomeSubtopico() {
		return $this->nomeSubtopico;
	}	
	public function setNomeSubtopico($value) {
		$this->nomeSubtopico = $value;
	}
        public function getNivel() {
            return $this->nivel;
        }

        public function setNivel($nivel) {
            $this->nivel = $nivel;
        }
}