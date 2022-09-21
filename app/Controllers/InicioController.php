<?php
import("MySql.Persistence");


class InicioController extends Controller {

    public function index() {
        if (isset($_POST["logar"])) {
            $_POST["pass"] = sha1($_POST["pass"]);
            $resul = Persistence::query("SELECT * FROM usuarios WHERE login='{$_POST["email"]}' AND senha='{$_POST["pass"]}' AND evento_id='{$_SESSION['event']['id']}'");
            if (!empty($resul)) {
                $_SESSION["user"] = $resul[0];
                $this->redirectUser();
            }
        }

        //$usuario::find(19);
        //echo "<pre>";
        //print_r(Usuario::all(array("joins" => array('eventos'))));
        //echo "</pre>";

        return array("page" => "inicio/login.phtml");
    }

    public function inscrevase() {
        //return array("page"=>"index/inscrevase.phtml");
        if (isset($_POST['inscrever'])) {
            #region "validação"
            if($_POST['valida']!=$_SESSION['palavra']){
                alert("Codigo invalido!!!");
                back();
                return;

            }
            $validacao=Usuario::find("all",["conditions"=>"cpf={$_POST['cpf']} and evento_id={$_SESSION['event']['id']}"]);
            //print_r($validacao);
            if(!empty($validacao)){

                alert("Erro!!! Existe um CPF identico cadastrado no nosso servidor");
                back();
                return;
            }
            $validacao=Usuario::find("all",["conditions"=>"email='{$_POST['email']}' and evento_id={$_SESSION['event']['id']}"]);
            if(!empty($validacao)){

                alert("Erro!!! Existe um E-Mail identico cadastrado no nosso servidor");
                back();
                return;
            }
            if(isset($_POST['matricula'])){
                $validacao=Usuario::find("all",["conditions"=>"matricula={$_POST['matricula']} and evento_id={$_SESSION['event']['id']}"]);
                if(!empty($validacao)){

                    alert("Erro!!! Existe uma matricula identica cadastrada no nosso servidor");
                    back();
                    return;
                }

            }
            #endregion;
            $usuario = new Usuario();
            $usuario->nome = $_POST['nome'];
            $usuario->cpf = $_POST['cpf'];
            $usuario->email = $_POST['email'];
            $usuario->login = $_POST['email'];
            $dataNascimento=explode("/", $_POST['data_nascimento']);
            $dta = new DateTime();
            $dta->setDate($dataNascimento[2], $dataNascimento[1], $dataNascimento[0]);
            $usuario->data_nascimento = $dta;
            $usuario->senha = sha1($_POST['pass']);
            $usuario->matricula = $_POST['matricula'];
            $usuario->evento_id = $_SESSION['event']['id'];
            $usuario->acessosimples = 1;
            if ($usuario->save()) {
                alert("sucesso");
                $this->redirect();
            }
        }
    }
    public function redirect() {
        $url = "/" . MainConfig::$_dir . "/" . $_SESSION["event"]["url"] . "/";
        echo "
        <script>
            window.location.href='{$url}';
        </script>";
    }

    public function redirectUser() {
        $url = "/" . MainConfig::$_dir . "/" . $_SESSION["event"]["url"] . "/";
        echo "
		<script>
			window.location.href='{$url}user';
		</script>";

    }

}
