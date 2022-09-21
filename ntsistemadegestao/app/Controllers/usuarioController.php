<?php
class usuarioController extends Controller{
	public function __construct(){
		parent::__construct();
	}
	public function index(){		
		$this->_page->getHeader();
		require_once("app/Views/usuario/index.php");
		$this->_page->getFooter();
	}

	public function perfil() 
	{
		$usuario = $this->_page->usuario;

		if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
			$this->_page->getHeader();
			require_once('app/Views/usuario/perfil.php');
			$this->_page->getFooter();
		}
		else
		{
			$error = array();
			if(empty($_POST['nome'])) $error[] = "Não foi informado nenhum nome";
			//if(empty($_POST['email'])) $error[] = "Não foi informado nenhum email";

			//---------------Tratando exceções da foto de perfil-------------------
			if(is_uploaded_file( $_FILES["perfil"]["tmp_name"] ) && $_FILES["perfil"]["error"] === 0 )
			{
				$nome_imagem = md5( time() . basename($_FILES["perfil"]["name"]) );
				$target_file = 'public/images/users/' . $nome_imagem;
			    if( @getimagesize($_FILES["perfil"]["tmp_name"]) === false) 
			    	$error[] = "O Arquivo enviado não é uma imagem.";
				else if($_FILES["perfil"]["size"] > 1000000) 
					$error[] = "A imagem enviada tem mais de 1MB";
				else if(!preg_match("/^image\/(pjpeg|jpeg|png|gif|bmp)$/", $_FILES["perfil"]["type"]))
					$error[] = 'Apenas são suportados imagens no formato JPG, PNG, GIF e BMP';
				else if(!move_uploaded_file($_FILES["perfil"]["tmp_name"], $target_file))
					$error[] = "Erro desconhecido ao enviar a imagem!";
			}
			//----------------------Fim da foto perfil--------------------------------			
			
			$dusuario = new DUsuario();
			/*
			$verifica = $dusuario->getByEmail( $_POST['email'] ); //Verifica se existe usuario cadastrado com esse Email
			if($verifica->getidUsuario()) { //Se existir usuario cadastrado com o email
				$error[] = "Este email ja esta sendo utilizado!";
			}
			*/

			if(!count($error))
			{
				$usuario->setNome( $_POST['nome'] );
				if(isset($nome_imagem)) $usuario->setImagem( $nome_imagem );
				$dusuario->setUsuario( $usuario );
				$dusuario->atualiza();
			}

			$this->_page->getHeader();
			require_once('app/Views/usuario/perfil_concluido.php');
			$this->_page->getFooter();	
		}		
	}		

	public function password() 
	{
		$usuario = $this->_page->usuario;

		if( !isset($_POST) || empty($_POST) ) { //Se nao for enviado dados POST
			$this->_page->getHeader();
			require_once('app/Views/usuario/senha.php');
			$this->_page->getFooter();
		}
		else
		{
			$error = array();
			if(empty($_POST['atual'])) $error[] = "Não foi informado nenhuma senha atual";
			else if(empty($_POST['pass'])) $error[] =  "Não foi informado nenhuma senha nova";
			else if(empty($_POST['rpass']))  $error[] = "Não foi informado nenhuma senha nova";
			else if(strlen($_POST['pass']) < 4 ) $error[] = "A Senha precisa ter no minimo 4 caratectes";		
			else if($_POST['pass'] != $_POST['rpass']) $error[] = "As senha não são iguais";
			else if($usuario->getSenha() != sha1($_POST['atual'])) $error[] = "A Senha atual é invalida!";

			$dusuario = new DUsuario();
			if(!count($error))
			{
				$usuario->setSenha( sha1($_POST['pass']) );			
				$dusuario->setUsuario( $usuario );
				$dusuario->atualiza();
				$_SESSION['error'] = "Por segurança, refaça o login";
			}

			$this->_page->getHeader();
			require_once('app/Views/usuario/senha_concluido.php');
			$this->_page->getFooter();	
		}		
	}			
}