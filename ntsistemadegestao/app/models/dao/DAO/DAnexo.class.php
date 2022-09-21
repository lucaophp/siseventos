<?php
class DAnexo implements IDAO {
	private $dao;
	private  $anexo;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Anexo){
			$this->anexo = $obj;
		}
	}

	public function setAnexo($obj = null) {
		$this->anexo = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Anexo",
			array('idPlan', 'arquivo'),
			array($this->anexo->getidPlan(),
				$this->anexo->getArquivo()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Anexo",
			array('idPlan' => $this->anexo->getidPlan(),
				'arquivo' => $this->anexo->getArquivo()
			),
			"idAnexo={$this->anexo->getidAnexo()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Anexo","idAnexo={$codigo}");
	}
	
	//return instance of Anexo
	public function getById($codigo){
		$anexo = $this->dao->lista("Anexo",null,"idAnexo={$codigo}");
		$anexo = isset($anexo[0]) ? $anexo[0] : null;
		return new Anexo($anexo);
	}
	
	//return is array
	public function getAll(){
		$anexos=array();
		foreach($this->dao->lista("Anexo",null,"1+1=2") as $anexo){
			$anexos[]=new Anexo($anexo);
		}
		return $anexos;
	}
	
	public function getByCond($where){
		$anexos=array();
		foreach($this->dao->lista("Anexo",null,$where) as $anexo){
			$anexos[]=new Anexo($anexo);
		}
		return $anexos;
	}
}