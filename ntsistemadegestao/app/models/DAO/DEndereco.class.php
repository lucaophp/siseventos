<?php
class DEndereco implements IDAO{
	private $dao;
	private $endereco;
	public function __construct($obj){
		$this->dao=new DAO();
		if($obj instanceof Endereco){
			$this->endereco=$obj;
		}
	}
	public function insere(){
		$id=$this->dao->insere("endereco",array('cidade','rua','estado','bairro','pais','empresa_cadastro'),array($this->endereco->getCidade(),$this->endereco->getRua(),$this->endereco->getEstado(),$this->endereco->getBairro(),$this->endereco->getPais(),$this->endereco->getEmpresa()->getCadastro()));
		return $id;		
	}
	public function atualiza(){
		return $this->dao->update("endereco",array('cidade'=>$this->endereco->getCidade(),'rua'=>$this->endereco->getRua(),'bairro'=>$this->endereco->getBairro(),'pais'=>$this->endereco->getPais(),'estado'=>$this->endereco->getEstado(),'empresa_cadastro'=>$this->endereco->getEmpresa()->getCadastro()),$this->endereco->getIdentificador());		
	}
	public function deleta($codigo){
		return $this->dao->remove("endereco","identificador={$codigo}");
	}
	//return instance of Usuario
	public function getById($codigo){
		$dep=$this->dao->lista("endereco",null,"identificador={$codigo}");
		$dep=isset($dep[0])?$dep[0]:null;
		return new Endereco($dep);
	}
	//return is array
	public function getAll(){
		$niveis=array();
		foreach($this->dao->lista("endereco",null,"1+1=2") as $nivel){
			$niveis[]=new Endereco($nivel);
		}
		return $niveis;
	}
	//return is array
	public function getByCond($where){
		$niveis=array();
		foreach($this->dao->lista("endereco",null,$where) as $nivel){
			//$usuario['departamento']=($usuario['departamento_codigo']==null?null:new Departamento())
			$niveis[]=new Endereco($nivel);
		}
		return $niveis;
	}
}