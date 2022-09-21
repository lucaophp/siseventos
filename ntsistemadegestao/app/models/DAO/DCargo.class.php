<?php
class DCargo implements IDAO {
	private $dao;
	private $cargo;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Cargo){
			$this->cargo = $obj;
		}
	}

	public function setCargo($obj = null) {
		$this->cargo = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Cargo",
			array('idDep', 'nivel', 'nomeFuncao', 'idEmpresa'),
			array($this->cargo->getidDep(),
				$this->cargo->getNivel(),
				$this->cargo->getNomeFuncao(),
				$this->cargo->getidEmpresa()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Cargo",
			array('idDep' => $this->cargo->getidDep(),
				'nivel' => $this->cargo->getNivel(),
				'nomeFuncao' => $this->cargo->getNomeFuncao(),
				'idEmpresa' => $this->cargo->getidEmpresa()
			),
			"idCargo={$this->cargo->getidCargo()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Cargo","idCargo={$codigo}");
	}
	
	//return instance of Usuario
	public function getById($codigo){
		$dep = $this->dao->lista("Cargo",null,"idCargo={$codigo}");
		$dep = isset($dep[0]) ? $dep[0] : null;
		return new Cargo($dep);
	
	}
	//return is array
	public function getAll(){
		$niveis=array();
		foreach($this->dao->lista("Cargo",null,"1+1=2") as $nivel){
			$niveis[]=new Cargo($nivel);
		}
		return $niveis;
	}


	public function getAllByEmpresa($empID) {
		$dempresa = new DEmpresa();
		$empresa = $dempresa->getById( $empID );

		return $this->getByCond("idEmpresa={$empresa->getidEmpresa()} AND nomeFuncao != '' ORDER BY nivel asc");
	}	
	//return is array
	public function getByCond($where){
		$niveis=array();
		foreach($this->dao->lista("Cargo",null,$where) as $nivel){
			//$usuario['departamento']=($usuario['departamento_codigo']==null?null:new Departamento())
			$niveis[]=new Cargo($nivel);
		}
		return $niveis;
	
	}

}