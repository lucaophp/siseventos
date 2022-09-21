<?php
class DTopico implements IDAO {
	private $dao;
	private $topico;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Topico){
			$this->topico = $obj;
		}
	}

	public function setTopico($obj = null) {
		$this->topico = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Topico",
			array('idPlan', 'nome','nivel'),
			array($this->topico->getidPlan(),
				$this->topico->getNome(),
				$this->topico->getNivel()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Topico",
			array('idPlan' => $this->topico->getidPlan(),
				'nome' => $this->topico->getNome(),
				'nivel'=>$this->topico->getNivel()
			),
			"idTopico={$this->topico->getidTopico()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Topico","idTopico={$codigo}");
	}
	
	//return instance of Topico
	public function getById($codigo){
		$topico = $this->dao->lista("Topico",null,"idTopico={$codigo}");
		$topico = isset($topico[0]) ? $topico[0] : null;
		return new Topico($topico);
	}
	
	//return is array
	public function getAll(){
		$topicos=array();
		foreach($this->dao->lista("Topico",null,"1+1=2") as $topico){
			$topicos[]=new Topico($topico);
		}
		return $topicos;
	}
	
	public function getByCond($where){
		$topicos=array();
		foreach($this->dao->lista("Topico",null,$where) as $topico){
			$topicos[]=new Topico($topico);
		}
		return $topicos;
	}
}