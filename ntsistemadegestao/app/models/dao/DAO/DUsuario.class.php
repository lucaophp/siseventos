<?php
require_once("app/Models/Entidades/Usuario.class.php");
class DUsuario implements IDAO {
	private $usuario;
	private $dao;
	public function __construct(Usuario $obj = null){
		//parent::__construct();
		$this->dao=new DAO();
		if($obj instanceof Usuario){
			$this->usuario=$obj;
		}
	}

	public function setUsuario($obj = null) {
		$this->usuario = $obj;
	}

	public function insere(){		
		return $this->dao->insere("Usuario", 
			array('nome','email','status','senha', 'idCargo', 'imagem'),
			array( 
				$this->usuario->getNome(), 
				$this->usuario->getEmail(),
				$this->usuario->getStatus(), 
				$this->usuario->getSenha(),
				$this->usuario->getidCargo(),
				$this->usuario->getImagem()
			)
		);	
	}
	public function atualiza(){
		return $this->dao->update("Usuario", array(
				'idUsuario' => $this->usuario->getidUsuario(),
				'nome' => $this->usuario->getNome(),
				'idCargo' => $this->usuario->getidCargo(),
				'email' => $this->usuario->getEmail(),
				'status' => $this->usuario->getStatus(),
				'senha' => $this->usuario->getSenha(),
				'imagem' => $this->usuario->getImagem()
			), 
			"idUsuario={$this->usuario->getidUsuario()}");
	}
	public function deleta($id){
		return $this->dao->remove("Usuario","idUsuario={$id}");
	}
	//return instance of Usuario
	public function getById($id){
		$usuario=$this->dao->lista("Usuario",null,"idUsuario={$id}");
		$usuario=isset($usuario[0])?$usuario[0]:null;
		return new Usuario($usuario);
	}
	
	public function getByEmail($email){
		$usuario = $this->dao->lista("Usuario",null,"email='{$email}'");
		$usuario = isset($usuario[0]) ? $usuario[0] : null;
		return new Usuario($usuario);
	}

	public function getByLogin($email, $senha) {
		$usuario = $this->dao->lista("Usuario",null,"email='{$email}' AND senha='{$senha}'");
		$usuario = isset($usuario[0]) ? $usuario[0] : null;
		return new Usuario($usuario);
	}	

	public function getBySession() {	
		$email = isset($_SESSION['email']) ? $_SESSION['email'] : NULL;
		$senha = isset($_SESSION['senha']) ? $_SESSION['senha'] : NULL;		
		return $this->getByLogin($email, $senha);
	}
	
	//return is array
	public function getAll(){
		$users=array();
		foreach($this->dao->lista("Usuario",null) as $usuario){
			$users[] = new Usuario($usuario);
		}
		return $users;
	}

	public function getAllByEmpresa($empID) {
		$dempresa = new DEmpresa();
		$empresa = $dempresa->getById( $empID );
		
		$users=array();
		foreach( $this->dao->lista("Usuario, Cargo", null, "Cargo.idEmpresa = {$empID} AND Usuario.idCargo = Cargo.idCargo ORDER BY Cargo.nivel") as $usuario){
			$users[] = new Usuario($usuario);
		}
		return $users;
	}	

	//return is array
	public function getByCond($where){
		$users=array();
		foreach($this->dao->lista("Usuario",null,$where) as $usuario){
			//$usuario['departamento']=($usuario['departamento_codigo']==null?null:new Departamento())
			$users[] = new Usuario($usuario);
		}
		return $users;
	}

	/* return is Int
		-2	Não Logado
		-1	Empresa Desativada
		0 	Sem Permissão
		1	Pode acessar
	*/
	public function validaLogin( $nivel = 999 ) {
		$usuario = $this->getBySession();

		if(!is_object($usuario) || !$usuario->getidUsuario())
			return -2; ////Se nao tiver logado

		else //Se tiver Logado
		{
			$dcargo = new DCargo();
			$cargo = $dcargo->getById( $usuario->getidCargo() );

			$dempresa = new DEmpresa();
			$empresa = $dempresa->getById( $cargo->getidEmpresa() );

			if($empresa->getStatus() == 0)
				return -1; //Empresa desativada
			
			else if($cargo->getNivel() > $nivel)
				return 0; //Se nao tiver o nivel necessario	
			
			else if( $cargo->getNivel() == -1 && $nivel != -1 ) //Se for Admin Total e a pagina nao for do Admin	
				return 0;
		}
		return 1; //Caso nao der erro, ele esta logado
	}

	public function permissao( $nivel = 999 ) 
	{
		$valida = $this->validaLogin( $nivel );
		if($valida == -2) //Não esta logado
		{
			echo '<script type="text/javascript"> window.location = "'.__dir().'login" </script>';
			exit();
		}
		else if($valida == -1) //Empresa desativada
		{
			$_SESSION['error'] = "Empresa desativada!";
			$_SESSION['email'] = '';
			$_SESSION['senha'] = '';
			echo '<script type="text/javascript"> window.location = "'.__dir().'login" </script>';
			exit();
		}		
		else if($valida == 0) //Nao tem permissao
		{
			echo '<script type="text/javascript"> window.location = "'.__dir().'index/negado" </script>';
			exit();
		}

		return $valida;
	}	
}