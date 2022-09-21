<?php
class Usuario implements IEntidade{
	private $idUsuario;
	private $idCargo = null;//FK
	private $nome;	
	private $email;
	private $status = false;
	private $senha;
	private $imagem;

	public function __construct($arr){
		if(is_array($arr)){
			if(isset($arr['idCargo']) && !empty($arr['idCargo'])){
				$niv = new DCargo(null);
				$this->setidCargo( $niv->getById( $arr['idCargo'])->getIdCargo() );
			}
			//$this->setidCargo((!isset($arr['idCargo'])) ? null : $arr['idCargo']);
			$this->setidUsuario((!isset($arr['idUsuario'])) ? null : $arr['idUsuario']);
			$this->setNome((!isset($arr['nome'])) ? null : $arr['nome']);
			$this->setEmail((!isset($arr['email']))? null : $arr['email']);
			$this->setStatus((!isset($arr['status'])) ? false : $arr['status']);			
			$this->setSenha((!isset($arr['senha'])) ? false : $arr['senha']);
			$this->setImagem((!isset($arr['imagem'])) ? false : $arr['imagem']);
		}
	}

	public function getidUsuario()
	{
	    return $this->idUsuario;
	}

	public function setidUsuario($idUsuario)
	{
	    $this->idUsuario = $idUsuario;
	}

	public function getidCargo()
	{
	    return $this->idCargo;
	}

	public function setidCargo($idCargo)
	{
	    $this->idCargo = $idCargo;
	}

	public function getEmail()
	{
	    return $this->email;
	}

	public function setEmail($email)
	{
	    $this->email = $email;
	}

	public function getNome()
	{
	    return $this->nome;
	}

	public function setNome($nome)
	{
	    $this->nome = $nome;
	}
	
	public function getStatus()
	{
	    return $this->status;
	}

	public function setStatus($status)
	{
	    $this->status = $status;
	}
	
	public function getSenha()
	{
	    return $this->senha;
	}

	public function setSenha($senha)
	{
	    $this->senha = $senha;
	}

	public function getImagem()
	{
	    return $this->imagem;
	}

	public function setImagem($imagem)
	{
	    $this->imagem = $imagem;
	}	

	public function getNivel(){
		$_dcargo = new DCargo();
		$_cargo = $_dcargo->getById( $this->getidCargo() );
		return $_cargo->getNivel();		
	}	
	
	public function getDepartamento() {
		$_dcargo = new DCargo();
		$_cargo = $_dcargo->getById( $this->getidCargo() );
		
		$_ddep = new DDepartamento();
		$_dep = $_ddep->getById( $_cargo->getidDep() );

		return $_dep->getNome();
	}

	public function getCargo() {
		$_dcargo = new DCargo();
		$_cargo = $_dcargo->getById( $this->getidCargo() );
		return $_cargo->getNomeFuncao();
	}	
}
