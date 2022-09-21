<?php
class empresaController extends Controller{

	private $empresa;
	private $DEmpresa;
	private $DUsuario;

	public function __construct(){
		$this->DUsuario = new DUsuario();
		$this->DUsuario->permissao();

		parent::__construct();
	}
	
	public function index(){
		$this->_page->getHeader();
		require_once('app/Views/empresa/index.php');
		$this->_page->getFooter();
	}
	
	public function historico(){

		$this->_page->getHeader();
		require_once('app/Views/empresa/historico.php');
		$this->_page->getFooter();
	}		
	
	public function estrutura(){
		$this->DUsuario->permissao(0); //Apenas Adm Local

		$ddep = new DDepartamento();
		$deps = $ddep->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );

		$dcargo = new DCargo();
		$cargos = $dcargo->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );
		
		$dempresa = new DEmpresa();
		$empresa = $dempresa->getbyId( $this->_page->empresa->getidEmpresa() );
	
		$this->_page->getHeader();
		require_once('app/Views/empresa/estrutura.php');
		$this->_page->getFooter();
	}
	
	public function estrutura_(){
		$this->_page->getHeader();
		require_once('app/Views/empresa/estrutura_.php');
		$this->_page->getFooter();
	}

	public function infraestrutura(){
		$this->_page->getHeader();
		require_once('app/Views/empresa/infraestrutura.php');
		$this->_page->getFooter();
	}	

	public function mercado(){
		$this->_page->getHeader();
		require_once('app/Views/empresa/mercado.php');
		$this->_page->getFooter();
	}	
	
	public function produtos(){
		$this->_page->getHeader();
		require_once('app/Views/empresa/produtos.php');
		$this->_page->getFooter();
	}	

	public function estrutura_gerenciar() {
		$this->DUsuario->permissao(0); //Apenas Adm Local

		$ddep = new DDepartamento();
		$deps = $ddep->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );

		$dcargo = new DCargo();
		$cargos = $dcargo->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );

		$opcao = getParam(2);

		if($opcao == 'addCargo')
		{
			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/cargo.php');
				$this->_page->getFooter();
			}
			else //Se for enviado dados POST
			{
				$error = array();
				if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para o Cargo";
				if(empty($_POST['nivel'])) $error[] = "Não foi informado nenhum nivel para o Cargo";
				if(!empty($_POST['nivel']) && $_POST['nivel'] < 1) $error[] = "O Nivel deve ser maior ou igual a 1";
				if(empty($_POST['departamento'])) $error[] = "Não foi informado nenhum departamento para o Cargo";

				$cargo = new Cargo( array(
					'nivel' => $_POST['nivel'],
					'idDep' => $_POST['departamento'],
					'nomeFuncao' => $_POST['nome'],
					'idEmpresa' => $this->_page->empresa->getidEmpresa()
				));

				if(!count($error))
				{
					$dcargo = new DCargo( $cargo );
					$cargo->setidCargo( $dcargo->insere() );
				}

				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/cargo_concluido.php');
				$this->_page->getFooter();				
			}
		}
		else if($opcao == 'editCargo')
		{
			$idCargo = getParam(3);
			$cargo = $dcargo->getById( $idCargo );
			$dcargo->setCargo( $cargo );

			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/editCargo.php');
				$this->_page->getFooter();
			}
			else //Se for enviado dados POST
			{
				$error = array();
				if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para o Cargo";
				if(empty($_POST['nivel'])) $error[] = "Não foi informado nenhum nivel para o Cargo";
				if(!empty($_POST['nivel']) && $_POST['nivel'] < 1) $error[] = "O Nivel deve ser maior ou igual a 1";
				if(empty($_POST['departamento'])) $error[] = "Não foi informado nenhum departamento para o Cargo";

				$cargoEdit['idCargo'] = $idCargo;
				$cargoEdit['idDep'] = $_POST['departamento'];
				$cargoEdit['nivel'] = $_POST['nivel'];				
				$cargoEdit['nomeFuncao'] = $_POST['nome'];
				$cargoEdit['idEmpresa'] = $this->_page->empresa->getidEmpresa();

				if(!count($error))
				{
					$cargo->setAll( $cargoEdit );
					$dcargo->setCargo( $cargo );
					$dcargo->atualiza();
				}

				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/editCargo_concluido.php');
				$this->_page->getFooter();				
			}			
		}
		else if($opcao == 'excluirCargo')
		{
			$idCargo = getParam(3);
			$cargo = $dcargo->getById( $idCargo );
			$dcargo->setCargo( $cargo );

			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado nada por post
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/excluirCargo.php'); //pergunta se deseja desativar mesmo
				$this->_page->getFooter();
			}
			else //Se for enviado algo por POST
			{
				$error = array();
				if($dcargo->deleta( $cargo->getidCargo() ) == 0)
				{
					$error[] = "Existem usuarios ligados ao cargo!";
				}

				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/excluirCargo_concluido.php');
				$this->_page->getFooter();
			}
		}


		else if($opcao == 'addDepartamento')
		{
			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/departamento.php');
				$this->_page->getFooter();
			}
			else //Se for enviado dados POST
			{
				$error = array();
				if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para o Departamento";

				$dep = new Departamento( 
					array('nome' => $_POST['nome'], 
						'idEmpresa' => $this->_page->empresa->getidEmpresa() //Empresa do Usuario 
					) 
				);

				if(!count($error))
				{
					$ddep = new DDepartamento( $dep );
					$dep->setidDep( $ddep->insere() );
				}
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/departamento_concluido.php');
				$this->_page->getFooter();				
			}
		}
		else if($opcao == 'editDepartamento')
		{
			$idDep = getParam(3);
			$dep = $ddep->getById( $idDep );
			$ddep->setDepartamento( $dep );

			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/editDepartamento.php');
				$this->_page->getFooter();
			}
			else //Se for enviado dados POST
			{
				$error = array();
				if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para o Departamento";

				if(!count($error))
				{
					$dep->setNome( $_POST['nome'] );
					$ddep->setDepartamento( $dep );
					$ddep->atualiza();
				}

				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/editDepartamento_concluido.php');
				$this->_page->getFooter();				
			}			
		}
		else if($opcao == 'excluirDepartamento')
		{
			$idDep = getParam(3);
			$dep = $ddep->getById( $idDep );
			$ddep->setDepartamento( $dep );

			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado nada por post
				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/excluirDepartamento.php'); //pergunta se deseja desativar mesmo
				$this->_page->getFooter();
			}
			else //Se for enviado algo por POST
			{
				$error = array();
				if($ddep->deleta( $dep->getidDep() ) == 0)
				{
					$error[] = "Existem cargos ligados ao departamento!";
				}

				$this->_page->getHeader();
				require_once('app/Views/empresa/gerenciar/excluirDepartamento_concluido.php');
				$this->_page->getFooter();
			}
		}

		else
		{
			$this->_page->getHeader();
			require_once('app/Views/empresa/estrutura_gerenciar.php');
			$this->_page->getFooter();
		}
	}

	public function estrutura_usuarios() {
		$this->DUsuario->permissao(0); //Apenas Adm Local

		$ddep = new DDepartamento();
		$deps = $ddep->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );

		$dcargo = new DCargo();
		$cargos = $dcargo->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );
				
		$userID = getParam(2);
		if( isset($userID) && !empty($userID) && is_numeric($userID) )  //Se for informado um ID (method GET)
		{
			$DUsuario = new DUsuario();
			$usuario = $DUsuario->getById( $userID ); //Pega informacoes da Empresa Informada

			if( !isset($_POST) || empty($_POST) ) //Se nao for enviado dados por POST (atualizar empresa)
			{	
				$this->_page->getHeader();
				require_once('app/Views/empresa/usuarios/gerenciar.php');
				$this->_page->getFooter();
			}
			else //Se for enviado dados POST (atualizar empresa)
			{
				$error = array();

				if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para o Usuario";
				if(empty($_POST['email'])) $error[] = "Não foi informado nenhum email para o Usuario";
				if(empty($_POST['cargo'])) $error[] = "Não foi informado nenhum cargo para o Usuario";
				
				if(!count($error))
				{				
					$usuario->setNome( $_POST['nome'] );
					$usuario->setidCargo( $_POST['cargo'] );
					if($_POST['queroMudarEmail']=="sim"){
						
						$verifica = $DUsuario->getByEmail( $_POST['email'] ); //Verifica se existe usuario cadastrado com esse Email
						if(empty($verifica)){
							$usuario->setEmail($_POST['email']);
						}else{
							$error[]="E-Mail já existe!!!";
						}
						
					}
					

					$DUsuario->setUsuario( $usuario );
					$DUsuario->atualiza();
				}
				$this->_page->getHeader();
				require_once('app/Views/empresa/usuarios/gerenciar_concluido.php');
				$this->_page->getFooter();
			}
		}
		else if (!is_numeric($userID) && $userID == 'delete') {
			$userID = getParam(3);

			$empID = getParam(3);
			$DUsuario = new DUsuario();
			$usuario = $DUsuario->getById( $userID );

			if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado nada por post
				$this->_page->getHeader();
				require_once('app/Views/empresa/usuarios/excluir.php'); //pergunta se deseja desativar mesmo
				$this->_page->getFooter();
			}
			else //Se for enviado algo por POST
			{
				$error = array();
				$DUsuario->setUsuario( $usuario );				
				$DUsuario->deleta( $usuario->getidUsuario() );

				$this->_page->getHeader();
				require_once('app/Views/empresa/usuarios/excluir_concluido.php');
				$this->_page->getFooter();
			}
		}

		else //Se não for informado um ID (method GET).
		{
			$dusuario = new DUsuario();
			$users = $dusuario->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );
			$usuarios = array();
			$i = 0;
			foreach($users as $user) {
				$dcargo = new DCargo();
				$cargo = $dcargo->getById( $user->getidCargo() );

				$ddep = new DDepartamento();
				$dep = $ddep->getById( $cargo->getidDep() );

				if($cargo->getNivel() > 0) { //Se o nivel for positivo (Assim nao entra os Admin Locais)
					$usuarios[$i]['ID'] = $user->getidUsuario();
					$usuarios[$i]['nome'] = $user->getNome();
					$usuarios[$i]['nivel'] = $cargo->getNivel();
					$usuarios[$i]['idCargo'] = $cargo->getidCargo();
					$usuarios[$i]['cargo'] = $cargo->getNomeFuncao();
					$usuarios[$i]['idDep'] = $dep->getidDep();
					$usuarios[$i]['dep'] = $dep->getNome();
					$i++;
				}
			}

			$this->_page->getHeader();
			require_once('app/Views/empresa/estrutura_usuarios.php');
			$this->_page->getFooter();
		}
	}	

	public function estrutura_usuarios_cadastro() 
	{
		$this->DUsuario->permissao(0); //Apenas Adm Local

		$ddep = new DDepartamento();
		$deps = $ddep->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );

		$dcargo = new DCargo();
		$cargos = $dcargo->getAllByEmpresa( $this->_page->empresa->getidEmpresa() );		

		if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
			$this->_page->getHeader();
			require_once('app/Views/empresa/usuarios/cadastro.php');
			$this->_page->getFooter();
		}
		else
		{
			$error = array();
			if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para o Usuario";
			if(empty($_POST['email'])) $error[] = "Não foi informado nenhum email para o Usuario";
			if(empty($_POST['senha'])) $error[] = "Não foi informado nenhuma senha para o Usuario";
			if(empty($_POST['cargo'])) $error[] = "Não foi informado nenhum cargo para o Usuario";
			
			$DUser = new DUsuario();
			$verifica = $DUser->getByEmail( $_POST['email'] ); //Verifica se existe usuario cadastrado com esse Email
			if($verifica->getidUsuario()) { //Se existir usuario cadastrado com o email
				$error[] = "Este email ja esta sendo utilizado!";
			}	

			if(!count($error))
			{
				$usuario = new Usuario(array(
					'nome' => $_POST['nome'],
					'email' => $_POST['email'],
					'senha' => sha1($_POST['senha']),
					'idCargo' => $_POST['cargo'],
					'status' => true,
					'imagem' => 'PADRAO'
				));
				$dusuario = new DUsuario($usuario);
				$usuario->setidUsuario( $dusuario->insere() );
			}

			$this->_page->getHeader();
			require_once('app/Views/empresa/usuarios/cadastro_concluido.php');
			$this->_page->getFooter();	
		}		
	}	

	public function editar(){
		$empresa = $this->_page->empresa;
		$dempresa = new DEmpresa();

		if( !isset($_POST) || empty($_POST) ) //Se nao for enviado dados por POST (atualizar empresa)
		{					
			$this->_page->getHeader();
			require_once('app/Views/empresa/editar.php');
			$this->_page->getFooter();
		}
		else //Se for enviado dados POST (atualizar empresa)
		{
			$error = array();

			if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome para a empresa";
			if(empty($_POST['telefone'])) $error[] = "Não foi informado nenhum telefone para a empresa";
			if(empty($_POST['pais'])) $error[] = "Não foi informado nenhum pais para a empresa";
			if(empty($_POST['estado'])) $error[] = "Não foi informado nenhum estado para a empresa";
			if(empty($_POST['cidade'])) $error[] = "Não foi informado nenhum cidade para a empresa";
			if(empty($_POST['bairro'])) $error[] = "Não foi informado nenhum bairro para a empresa";
			if(empty($_POST['rua'])) $error[] = "Não foi informado nenhum rua para a empresa";

			//------------------Tratando exceções da logomarca---------------------
			$uploadLogo = false;
			if(isset($_FILES) && count($_FILES))
			if(is_uploaded_file( $_FILES["logo"]["tmp_name"] ) && $_FILES["logo"]["error"] === 0 )
			{
				$nome_imagem = md5( time() . basename($_FILES["logo"]["name"]) );
				$target_file = 'public/images/business/' . $nome_imagem;
			    if( @getimagesize($_FILES["logo"]["tmp_name"]) === false) 
			    	$error[] = "O Arquivo enviado não é uma imagem.";
				else if($_FILES["logo"]["size"] > 1000000) 
					$error[] = "A imagem enviada tem mais de 1MB";
				else if(!preg_match("/^image\/(pjpeg|jpeg|png|gif|bmp)$/", $_FILES["logo"]["type"]))
					$error[] = 'Apenas são suportados imagens no formato JPG, PNG, GIF e BMP';
				else if(!move_uploaded_file($_FILES["logo"]["tmp_name"], $target_file))
					$error[] = "Erro desconhecido ao enviar a imagem!";
				else $uploadLogo = true; //Nao ocorreu erro com a imagem.
			}
			//----------------------Fim da logomarca--------------------------------
			
			if(!count($error)) //Se não ocorreu error, cadastra a empresa.
			{
				$empresa->setTelefone($_POST['telefone']);
				$empresa->setPais($_POST['pais']);
				$empresa->setEstado($_POST['estado']);
				$empresa->setCidade($_POST['cidade']);
				$empresa->setBairro($_POST['bairro']);
				$empresa->setRua($_POST['rua']);

				if($uploadLogo) $empresa->setLogo($nome_imagem); //Se Enviou nova Imagem				
				$dempresa->setEmpresa( $empresa );
				$dempresa->atualiza(); //Atualiza as informações da empresa
			}
			$this->_page->getHeader();
			require_once('app/Views/empresa/editar_concluido.php');
			$this->_page->getFooter();
		}
	}	
}