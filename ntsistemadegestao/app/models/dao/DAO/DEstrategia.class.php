<?php
class DEstrategia implements IDAO {
	private $dao;
	private $estrategia;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Estrategia){
			$this->estrategia = $obj;
		}
	}

	public function setEstrategia($obj = null) {
		$this->estrategia = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Estrategia",
			array('idPlan', 'classificacao', 'tipo', 'estrategia'),
			array($this->estrategia->getidPlan(),
				$this->estrategia->getClassificacao(),
				$this->estrategia->getTipo(),
				$this->estrategia->getEstrategia()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Estrategia",
			array('idPlan' => $this->estrategia->getidPlan(),
				'classificacao' => $this->estrategia->getClassificacao(),
				'tipo' => $this->estrategia->getTipo(),
				'estrategia' => $this->estrategia->getEstrategia()
			),
			"idEstrategia={$this->estrategia->getidEstrategia()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Estrategia","idEstrategia={$codigo}");
	}
	
	//return instance of Estrategia
	public function getById($codigo){
		$estrategia = $this->dao->lista("Estrategia",null,"idEstrategia={$codigo}");
		$estrategia = isset($estrategia[0]) ? $estrategia[0] : null;
		return new Estrategia($estrategia);
	}
	
	//return is array
	public function getAll(){
		$estrategias=array();
		foreach($this->dao->lista("Estrategia",null,"1+1=2") as $estrategia){
			$estrategias[]=new Estrategia($estrategia);
		}
		return $estrategias;
	}
	
	public function getByCond($where){
		$estrategias=array();
		foreach($this->dao->lista("Estrategia",null,$where) as $estrategia){
			$estrategias[]=new Estrategia($estrategia);
		}
		return $estrategias;
	}
}