<?php
class Empresa implements IEntidade{
	private $idEmpresa;
	private $nome;
	private $historico;
	private $infraestrutura;
	private $mercadoAtuacao;
	private $produtosServicos;
	private $logo;
	private $CNPJ;
	private $status;
	
	private $telefone;
	private $pais;
	private $estado;
	private $cidade;
	private $bairro;
	private $endereco;


	public function __construct($arr = null){
		$this->setAll($arr);
	}

	public function setAll($arr = null) {
		if(is_array($arr)){
			$this->setidEmpresa((!isset($arr['idEmpresa'])) ? null : $arr['idEmpresa']);
			$this->setHistorico((!isset($arr['historico'])) ? null : $arr['historico']);
			$this->setInfraestrutura((!isset($arr['infraestrutura'])) ? null : $arr['infraestrutura']);
			$this->setMercadoAtuacao((!isset($arr['mercadoAtuacao'])) ? null : $arr['mercadoAtuacao']);
			$this->setProdutosServicos((!isset($arr['produtosServicos'])) ? null : $arr['produtosServicos']);
			$this->setNome((!isset($arr['nome'])) ? null : $arr['nome']);
			$this->setLogo((!isset($arr['logo'])) ? null : $arr['logo']);
			$this->setCNPJ((!isset($arr['CNPJ'])) ? null : $arr['CNPJ']);
			$this->setStatus((!isset($arr['status'])) ? null : $arr['status']);

			$this->setTelefone((!isset($arr['telefone'])) ? null : $arr['telefone']);
			$this->setPais((!isset($arr['pais'])) ? null : $arr['pais']);
			$this->setEstado((!isset($arr['estado'])) ? null : $arr['estado']);
			$this->setCidade((!isset($arr['cidade'])) ? null : $arr['cidade']);
			$this->setBairro((!isset($arr['bairro'])) ? null : $arr['bairro']);
			$this->setRua((!isset($arr['rua'])) ? null : $arr['rua']);
		}
	}

	public function getidEmpresa()
	{
	    return $this->idEmpresa;
	}

	public function setidEmpresa($ID)
	{
	    $this->idEmpresa = $ID;
	}

	public function getNome()
	{
	    return $this->nome;
	}

	public function setNome($nome)
	{
	    $this->nome = $nome;
	}

	public function getHistorico()
	{
	    return $this->historico;
	}

	public function setHistorico($historico)
	{
	    $this->historico = $historico;
	}

	public function getInfraestrutura()
	{
	    return $this->infraestrutura;
	}

	public function setInfraestrutura($infraestrutura)
	{
	    $this->infraestrutura = $infraestrutura;
	}

	public function getMercadoAtuacao()
	{
	    return $this->mercadoAtuacao;
	}

	public function setMercadoAtuacao($mercadoAtuacao)
	{
	    $this->mercadoAtuacao = $mercadoAtuacao;
	}

	public function getProdutosServicos()
	{
	    return $this->produtosServicos;
	}

	public function setProdutosServicos($produtosServicos)
	{
	    $this->produtosServicos = $produtosServicos;
	}	

	public function getLogo()
	{
	    return $this->logo;
	}
	public function setLogo($logo)
	{
	    $this->logo = $logo;
	}	

	public function getCNPJ()
	{
	    return $this->CNPJ;
	}

	public function setCNPJ($CNPJ)
	{
	    $this->CNPJ = $CNPJ;
	}		

	public function getStatus()
	{
	    return $this->status;
	}

	public function setStatus($status)
	{
	    $this->status = $status;
	}		



	public function getTelefone()
	{
	    return $this->telefone;
	}
	public function setTelefone($telefone)
	{
	    $this->telefone = $telefone;
	}	

	public function getRua()
	{
	    return $this->rua;
	}

	public function setRua($rua)
	{
	    $this->rua = $rua;
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

	public function getBairro()
	{
	    return $this->bairro;
	}

	public function setBairro($bairro)
	{
	    $this->bairro = $bairro;
	}

}