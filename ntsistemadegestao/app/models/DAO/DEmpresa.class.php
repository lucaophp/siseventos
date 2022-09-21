<?php
require_once("DAO.class.php");
//require_once("Empresa.class.php");
class DEmpresa implements IDAO{
	private $empresa;
	private $dao;
	public function __construct($obj=null){
		//parent::__construct();
		$this->dao=new DAO();
		if($obj instanceof Empresa){
			$this->empresa = $obj;
		}
		
	}

	public function setEmpresa($obj = null) {
		$this->empresa = $obj;
	}

	public function insere(){
		return $this->dao->insere("Empresa", 
			array('nome','historico','infraestrutura','mercadoAtuacao','produtosServicos', 'logo', 
				'CNPJ', 'status', 'telefone', 'pais', 'estado', 'cidade', 'bairro', 'rua'
			),
			array($this->empresa->getNome(), 
				$this->empresa->getHistorico(), 
				$this->empresa->getInfraestrutura(),
				$this->empresa->getMercadoAtuacao(), 
				$this->empresa->getProdutosServicos(), 
				$this->empresa->getLogo(),
				$this->empresa->getCNPJ(),
				$this->empresa->getStatus(),
				$this->empresa->getTelefone(),
				$this->empresa->getPais(),
				$this->empresa->getEstado(),
				$this->empresa->getCidade(),
				$this->empresa->getBairro(),
				$this->empresa->getRua(),
			)
		);		
	}
	public function atualiza(){
		$emp['status'] = $this->empresa->getStatus();		
		if(($this->empresa->getNome())) 
			$emp['nome'] = $this->empresa->getNome();
		if(($this->empresa->getHistorico())) 
			$emp['historico'] = $this->empresa->getHistorico();
		if(($this->empresa->getInfraestrutura())) 
			$emp['infraestrutura'] = $this->empresa->getInfraestrutura();
		if(($this->empresa->getMercadoAtuacao())) 
			$emp['mercadoAtuacao'] = $this->empresa->getMercadoAtuacao();
		if(($this->empresa->getProdutosServicos())) 
			$emp['produtosServicos'] = $this->empresa->getProdutosServicos();
		if(($this->empresa->getLogo())) 
			$emp['logo'] = $this->empresa->getLogo();
		if(($this->empresa->getCNPJ())) 
			$emp['CNPJ'] = $this->empresa->getCNPJ();		
		
		if(($this->empresa->getTelefone())) 
			$emp['telefone'] = $this->empresa->getTelefone();		
		if(($this->empresa->getPais())) 
			$emp['pais'] = $this->empresa->getPais();		
		if(($this->empresa->getEstado())) 
			$emp['estado'] = $this->empresa->getEstado();		
		if(($this->empresa->getCidade())) 
			$emp['cidade'] = $this->empresa->getCidade();
		if(($this->empresa->getBairro())) 
			$emp['bairro'] = $this->empresa->getBairro();
		if(($this->empresa->getRua())) 
			$emp['rua'] = $this->empresa->getRua();
		
		return $this->dao->update("Empresa", $emp, "idEmpresa={$this->empresa->getidEmpresa()}");		
	}
	public function deleta($ID){
		return $this->dao->remove("Empresa","idEmpresa={$ID}");
	}
	//return instance of Usuario
	public function getById($ID){
		$emp = $this->dao->lista("Empresa",null,"idEmpresa={$ID}");
		$emp = isset($emp[0]) ? $emp[0] : null;
		return new Empresa($emp);
	}
	//return is array
	public function getAll(){
		return $this->getByCond("nome != ''");
	}
	//return is array
	public function getByCond($where){
		$emp = array();
		foreach($this->dao->lista("Empresa",null,$where) as $empresa){
			//$usuario['departamento']=($usuario['departamento_codigo']==null?null:new Departamento())
			$emp[] = new Empresa($empresa);
		}
		return $emp;	
	}

	public function getAdmin($empID) {
		$emp = $this->getById( $empID ); //Pega a empresa com o ID Informado

		$dcargo = new DCargo();
		$cargo = $dcargo->getByCond("nivel = 0 AND nomeFuncao = '' AND idEmpresa = {$emp->getidEmpresa()}"); //Pega o cargo com Nivel 0 e nome "NULL"

		$duser = new DUsuario();
		$user = $duser->getByCond("idCargo = {$cargo[0]->getidCargo()}"); //Pega o Usuario que faz parte do cargo

		return (isset($user[0])) ? $user[0] : false;
	}
	
	public function getMaxNivel($empID) {
		$emp = $this->dao->lista("Cargo", array("MAX(nivel) as maxnivel"), "idEmpresa={$empID}");
		$emp = isset($emp[0]) ? $emp[0] : null;
		//var_dump($emp);
		return $emp[0];
	}
}

