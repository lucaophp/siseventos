<?php
class Endereco implements IEntidade{
	private $identificador;
	private $cidade;
	private $estado;
	private $pais;
	private $rua;
	private $bairro;
	private $empresa;//fk
	public function __construct($arr){
		$this->setIdentificador((!isset($arr['identificador']))?null:$arr['identificador']);
		$this->setCidade((!isset($arr['cidade']))?null:$arr['cidade']);
		$this->setEstado((!isset($arr['estado']))?null:$arr['estado']);
		$this->setPais((!isset($arr['pais']))?null:$arr['pais']);
		$this->setRua((!isset($arr['rua']))?null:$arr['rua']);
		$this->setBairro((!isset($arr['bairro']))?null:$arr['bairro']);
		if($arr['empresa_cadastro']!=null){
			$emp=new DEmpresa();
			$this->setEmpresa($emp->getById($arr['empresa_cadastro']));
		}
		
	}
	

	public function getIdentificador()
	{
	    return $this->identificador;
	}

	public function setIdentificador($identificador)
	{
	    $this->identificador = $identificador;
	}

	public function getCidade()
	{
	    return $this->cidade;
	}

	public function setCidade($cidade)
	{
	    $this->cidade = $cidade;
	}

	public function getEstado()
	{
	    return $this->estado;
	}

	public function setEstado($estado)
	{
	    $this->estado = $estado;
	}

	public function getPais()
	{
	    return $this->pais;
	}

	public function setPais($pais)
	{
	    $this->pais = $pais;
	}

	public function getRua()
	{
	    return $this->rua;
	}

	public function setRua($rua)
	{
	    $this->rua = $rua;
	}

	public function getBairro()
	{
	    return $this->bairro;
	}

	public function setBairro($bairro)
	{
	    $this->bairro = $bairro;
	}

	public function getEmpresa()
	{
	    return $this->empresa;
	}

	public function setEmpresa($empresa)
	{
	    $this->empresa = $empresa;
	}
}