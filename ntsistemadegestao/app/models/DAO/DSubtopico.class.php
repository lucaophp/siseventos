<?php
class DSubtopico implements IDAO {
	private $dao;
	private $subtopico;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Subtopico){
			$this->subtopico = $obj;
		}
	}

	public function setSubtopico($obj = null) {
		$this->subtopico = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Subtopico",
			array('idTopico', 'nomeSubtopico','nivel'),
			array(
                                $this->subtopico->getidTopico(),
                                $this->subtopico->getNomeSubtopico(),
                                $this->subtopico->getNivel()
                            
			)
		);
		
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Subtopico",
			array(
                                'idTopico' => $this->subtopico->getidTopico(),
				'nomeSubtopico' => $this->subtopico->getNomeSubtopico(),
                                'nivel'=>$this->subtopico->getNivel()
			),
			"idSubtopico={$this->subtopico->getidSubtopico()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Subtopico","idSubtopico={$codigo}");
	}
	
	//return instance of Subtopico
	public function getById($codigo){
		$subtopico = $this->dao->lista("Subtopico",null,"idSubtopico={$codigo}");
		$subtopico = isset($subtopico[0]) ? $subtopico[0] : null;
		return new Subtopico($subtopico);
	}
	
	//return is array
	public function getAll(){
		$subtopicos=array();
		foreach($this->dao->lista("Subtopico",null,"1+1=2") as $subtopico){
			$subtopicos[]=new Subtopico($subtopico);
		}
		return $subtopicos;
	}
	
	public function getByCond($where){
		$subtopicos=array();
		foreach($this->dao->lista("Subtopico",null,$where) as $subtopico){
			$subtopicos[]=new Subtopico($subtopico);
		}
		return $subtopicos;
	}
}