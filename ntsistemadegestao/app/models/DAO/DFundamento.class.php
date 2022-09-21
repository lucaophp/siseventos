<?php
class DFundamento implements IDAO {
	private $dao;
	private $fundamento;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Fundamento){
			$this->fundamento = $obj;
		}
	}

	public function setFundamento($obj = null) {
		$this->fundamento = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Fundamento",
			array('idFundamento', 'idEmpresa','nome','descricao','nivel'),
			array($this->fundamento->getIdFundamento(),
				$this->fundamento->getIdEmpresa(),
				$this->fundamento->getNome(),
				$this->fundamento->getDescricao(),
				$this->fundamento->getNivel()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Fundamento",
			array(
				'idFundamento' => $this->fundamento->getIdFundamento(),
				'idEmpresa'=>$this->fundamento->getIdEmpresa(),
				'nome' => $this->fundamento->getNome(),
				'descricao'=>$this->fundamento->getDescricao(),
				'nivel'=>$this->fundamento->getNivel()
			),
			"idFundamento={$this->fundamento->getIdFundamento()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Fundamento","idFundamento={$codigo}");
	}
	
	//return instance of Fundamento
	public function getById($codigo){
		$fundamento = $this->dao->lista("Fundamento",null,"idFundamento={$codigo}");
		$fundamento = isset($fundamento[0]) ? $fundamento[0] : null;
		return new Fundamento($fundamento);
	}
	
	//return is array
	public function getAll(){
		$estrategias=array();
		foreach($this->dao->lista("Fundamento",null,"1+1=2") as $fundamento){
			$estrategias[]=new Fundamento($fundamento);
		}
		return $estrategias;
	}
	
	public function getByCond($where){
		$fundamentos=array();
		foreach($this->dao->lista("Fundamento",null,$where) as $fundamento){
			$fundamentos[]=new Fundamento($fundamento);
		}
		return $fundamentos;
	}
	public function getByEmpresa($idEmpresa){
		$fundamentos=array();
		foreach($this->dao->lista("Fundamento",null,"idEmpresa={$idEmpresa} ORDER BY nivel ASC") as $fundamento){
			$fundamentos[]=new Fundamento($fundamento);
		}
		return $fundamentos;

	}
}