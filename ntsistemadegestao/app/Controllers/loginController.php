<?php
class loginController extends Controller{
	public function __construct(){
		parent::__construct();
	}
	
	public function index()
	{		
		//var_dump($_SESSION);

		$DEmpresa = new DEmpresa();
		$empresas = $DEmpresa->getAll();

		$dusuario = new DUsuario();
		$user = $dusuario->getBySession();
		if( is_object($user) && $user->getidUsuario() > 0) //Se o usuario tiver logado
		{
			if($user->getNivel() != -1 ) echo '<script type="text/javascript"> window.location = "'.__dir().'empresa/historico" </script>';
			else echo '<script type="text/javascript"> window.location = "'.__dir().'admin" </script>';
			exit();
		}

		if( !isset($_POST) || empty($_POST))
		{
			require_once("app/Views/login.php");
		}
		else
		{
			$email = isset($_POST['email']) ? $_POST['email'] : NULL;
			$senha = isset($_POST['senha']) ? $_POST['senha'] : NULL;
		
			$usuario = $dusuario->getbyLogin($email, $senha);
			if(is_object($usuario) && $usuario->getidUsuario())
			{				
				$_SESSION['email'] = $email;
				$_SESSION['senha'] = $senha;
				//else $_SESSION['error'] = 2;
			}
			else
			{
				$_SESSION['error'] = "Usuario ou senha invalidos!";
			}
			echo '<script type="text/javascript"> window.location = "'.__dir().'login" </script>';			
		}
	}
	public function esqueci(){
		if(isset($_POST['esqueci'])){
			$dusuario=new DUsuario();
			$usuario=$dusuario->getByEmail($_POST['email']);
			if(!empty($usuario)){
				//criptografa a senha em base_64 gerando assim o codigo de recuperação;
				$senhaEnc=base64_encode($usuario->getSenha());
				$msg=sprintf("[Sistema Falcao Gestão Estrategica]\nSeu codigo de recuperação é : %s \n Recuperar no link http://falcaogestaoestrategica.com/login/recuperar ",$senhaEnc);
				
				mail($usuario->getEmail(),"Recuperação de Senha",$msg);
				echo "<script>alert('E-Mail de recuperação enviado!!!');</script>";

			}else{
				echo "<script>alert('E-mail inexistente!!!');</script>";
			}
			

		}
		require_once("app/Views/esqueci.php");
	}
	public function recuperar(){
		if(isset($_POST['recuperar'])){
			//o codigo de verficação é a senha(criptografada em SHA1); 
			$codigoVerificacao=base64_decode($_POST['codigo']);
			$email=trim($_POST['email']);
			$nsenha=trim($_POST['nsenha']);
			$dusuario=new DUsuario();
			$usuario=$dusuario->getByCond("email='{$email}' AND senha='{$codigoVerificacao}'");
			if(empty($usuario)){
				echo "<script>alert('E-mail ou Codigo Incorretos!!!');</script>";
			}else{
				$usuario=isset($usuario[0])?$usuario[0]:null;
				$usuario->setSenha(sha1($nsenha));
				$dusuario=new DUsuario($usuario);
				$status=$dusuario->atualiza();
				if($status){
					echo "<script>alert('Senha Recuperada Com Sucesso!!!');</script>";
				}else{
					echo "<script>alert('Houve Problemas ao Recuperar a Senha!!!');</script>";

				}
			}


		}
		require_once("app/Views/recuperar.php");
	}

	public function sair()
	{
		session_destroy();
		echo '<script type="text/javascript"> window.location = "'.__dir().'login" </script>';
	}

	public function negado()
	{
		//$this->_page->getHeader();
		require_once('app/Views/negado.php');
		//$this->_page->getFooter();
	}
}