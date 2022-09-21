<?php
class adminController extends Controller{

	public function __construct(){
		$dusuario = new DUsuario();
		$dusuario->permissao( -1 );

		parent::__construct();
	}
	
	public function index(){
		$this->_page->getHeader();
		require_once('app/Views/admin/index.php');
		$this->_page->getFooter();
	}
	
	public function cadastro()
	{
		if(!isset($_POST) || empty($_POST))
		{
			$this->_page->getHeader();
			require_once('app/Views/admin/cadastro.php');
			$this->_page->getFooter();
		}
		else
		{
			$error = array();

			if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para a empresa";
			if(empty($_POST['CNPJ'])) $error[] = "Não foi informado nenhum CNPJ";
			
			//---------------------Tratando exceções do Admin Local-----------------		
			$DUser = new DUsuario();
			$admin['nome'] = $_POST['nomeAdmin'];
			$admin['email'] = $_POST['emailAdmin'];
			$admin['senha'] = $_POST['senhaAdmin'];
			
			$verifica = $DUser->getByEmail( $admin['email'] ); //Verifica se existe usuario cadastrado com esse Email
			if($verifica->getidUsuario()) { //Se existir usuario cadastrado com o email
				$error[] = "Este email ja esta sendo utilizado!";
			}			
			//----------------------Fim do Admin local------------------------------


			if(!count($error)) //Se não ocorreu error, cadastra a empresa.
			{
				$emp['nome'] = $_POST['nome'];
				$emp['CNPJ'] = $_POST['CNPJ'];
				$emp['logo'] = $nome_imagem;
				$emp['status'] = 1;
				$empresa = new Empresa($emp);

				$dempresa = new DEmpresa($empresa);
				$empresa->setidEmpresa( $dempresa->insere() );
				if($empresa->getidEmpresa())
				{
					$dep = new Departamento( array('nome' => '', 'idEmpresa' => $empresa->getidEmpresa() ) );
					$ddep = new DDepartamento( $dep );
					$dep->setidDep( $ddep->insere() );
					
					$cargo = new Cargo( array(
						'nivel' => 0,
						'idDep' => $dep->getidDep(),
						'nomeFuncao' => '',
						'idEmpresa' => $empresa->getidEmpresa()
					));
					$dcargo = new DCargo( $cargo );
					$cargo->setidCargo( $dcargo->insere() );
					
					$admin['status'] = true;
					$admin['idCargo'] = $cargo->getidCargo();
					$usuario = new Usuario($admin);		
					$dusuario = new DUsuario($usuario);
					$usuario->setidUsuario( $dusuario->insere() );
					
					if(!$usuario->getidUsuario() || !$cargo->getidCargo() || !$dep->getidDep())
					{
						if($usuario->getidUsuario()) $dusuario->deleta( $usuario->getidUsuario() );
						if($cargo->getidCargo()) $dcargo->deleta( $cargo->getidCargo() );
						if($dep->getidDep()) $ddep->deleta( $dep->getidDep() );
						if($empresa->getidEmpresa()) $dempresa->deleta( $empresa->getidEmpresa() );
						
						$error[] = 'Erro Desconhecido!';
					}
				}
			}
			$this->_page->getHeader();
			require_once('app/Views/admin/cadastro_concluido.php');
			$this->_page->getFooter();			
		}
	}
	
	public function gerenciar(){
		$empID = getParam(2);
		if( isset($empID) && !empty($empID) && is_numeric($empID) )  //Se for informado um ID (method GET)
		{
			$DEmpresa = new DEmpresa();
			$empresa = $DEmpresa->getById( $empID ); //Pega informacoes da Empresa Informada
			$adminEmpresa = $DEmpresa->getAdmin( $empID ); //Pega o Admin da Empresa Informada
			$DUsuario = new DUsuario();

			if( !isset($_POST) || empty($_POST) ) //Se nao for enviado dados por POST (atualizar empresa)
			{					
				$this->_page->getHeader();
				require_once('app/Views/admin/gerenciar_empresa.php');
				$this->_page->getFooter();
			}
			else //Se for enviado dados POST (atualizar empresa)
			{
				$error = array();

				if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para a empresa";
				if(empty($_POST['CNPJ'])) $error[] = "Não foi informado nenhum CNPJ";
				if(empty($_POST['adminNome'])) $error[] = "Não foi informado nenhum nome para o Administrador";

				if($_POST['adminEmail'] != $adminEmpresa->getEmail())
				{
					$verifica = $DUsuario->getByEmail( $_POST['adminEmail'] ); //Verifica se existe usuario cadastrado com esse Email
					if($verifica->getidUsuario()) { //Se existir usuario cadastrado com o email
						$error[] = "Este email ja esta sendo utilizado!";
					}
				}

				if(!empty($_POST['adminSenha']) && strlen($_POST['adminSenha']) >= 3)
				{
					$adminEmpresa->setSenha($_POST['adminSenha']);
				}

				if(!count($error)) //Se não ocorreu error, cadastra a empresa.
				{
					$emp['idEmpresa'] = $empID;
					$emp['nome'] = $_POST['nome'];
					$emp['CNPJ'] = $_POST['CNPJ'];
					$emp['status'] = $_POST['status'];					
					
					$empresa->setAll( $emp );					
					$DEmpresa->setEmpresa($empresa); //Seta como a empresa atual
					$DEmpresa->atualiza(); //Atualiza as informações da empresa	

					$adminEmpresa->setEmail( $_POST['adminEmail'] );
					$adminEmpresa->setNome( $_POST['adminNome'] );
					$DUsuario->setUsuario( $adminEmpresa );
					$DUsuario->atualiza();
				}
				$this->_page->getHeader();
				require_once('app/Views/admin/gerenciar_empresa_concluido.php');
				$this->_page->getFooter();
			}
		}
		else if (!is_numeric($empID) && $empID == 'changeStatus')			
		{
			$empID = getParam(3);
			$DEmpresa = new DEmpresa();
			$empresa = $DEmpresa->getbyId( $empID );

			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado nada por post
				$this->_page->getHeader();
				require_once('app/Views/admin/gerenciar_desativar.php'); //pergunta se deseja desativar mesmo
				$this->_page->getFooter();
			}
			else //Se for enviado algo por POST
			{
				$error = array();
				//Desativar a empresa
				$empresa->setStatus( !$empresa->getStatus() );
				$DEmpresa->setEmpresa( $empresa );
				$DEmpresa->atualiza();

				$this->_page->getHeader();
				require_once('app/Views/admin/gerenciar_desativar_concluido.php'); //pergunta se deseja desativar mesmo
				$this->_page->getFooter();
			}
		}
		else //Se não for informado um ID (method GET).
		{
			$DEmpresa = new DEmpresa();
			$empresas = $DEmpresa->getAll();			

			$this->_page->getHeader();
			require_once('app/Views/admin/gerenciar.php');
			$this->_page->getFooter();
		}
	}	
}