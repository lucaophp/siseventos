<?php
class DDepartamento implements IDAO{
	private $departamento;
	private $dao;
	public function __construct($obj = null){
		//parent::__construct();
		$this->dao=new DAO();
		if($obj instanceof Departamento){
			$this->departamento=$obj;
		}		
	}

	public function setDepartamento($obj = null) {
		$this->departamento = $obj;
	}

	public function insere(){
		$id=$this->dao->insere("Departamento",
			array('nome', 'idEmpresa'), 
			array( $this->departamento->getNome(), $this->departamento->getidEmpresa()) 
		);
		return $id;
		
	}
	public function atualiza(){
		return $this->dao->update("Departamento",
			array('nome'=>$this->departamento->getNome()),
			"idDep={$this->departamento->getidDep()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Departamento","idDep={$codigo}");	
	}
	
	//return instance of Usuario
	public function getById($codigo){
		$dep=$this->dao->lista("Departamento",null,"idDep={$codigo}");
		$dep=isset($dep[0])?$dep[0]:null;
		return new Departamento($dep);
	
	}
	//return is array
	public function getAll(){
		$users=array();
		foreach($this->dao->lista("Departamento",null,"1+1=2") as $usuario){
			$users[]=new Departamento($usuario);
		}
		return $users;
	}

	public function getAllByEmpresa($empID) {
		$dempresa = new DEmpresa();
		$empresa = $dempresa->getById( $empID );

		return $this->getByCond("idEmpresa={$empresa->getidEmpresa()} AND nome != ''");
	}
	//return is array
	public function getByCond($where){
		$users = array();
		foreach($this->dao->lista("Departamento",null,$where) as $usuario){
			//$usuario['departamento']=($usuario['departamento_codigo']==null?null:new Departamento())
			$users[] = new Departamento($usuario);
		}
		return $users;
	
	}
}
