<?php

class UserController extends Controller{

    public function __construct() {
        if (!isset($_SESSION["user"])) {

            $this->expulsar();
        } else {
            if ($_SESSION["user"]["evento_id"] != $_SESSION["event"]["id"]) {


                $this->expulsar();
            }
            
        }
    }
    
    //actions
    public function index() {


        return null;
    }

    public function programacao($param = null) {

    }

    public function minicursos($param = null) {
        
        
        if(isset($param[0])&&isset($param[1])){

            if($param[0]=="add"){
                $existe=InscritoMinicurso::find("all",array("conditions"=>"usuario_id={$_SESSION['user']['id']} AND minicurso_id={$param[1]}"));
                if(empty($existe)){
                    $minicurso=Minicurso::find($param[1]);


                    //verificar se o minicurso pretendido está no mesmo dia de um que já foi inscrito.

                    $minicursosInscritos=InscritoMinicurso::find("all",array("conditions"=>"usuario_id={$_SESSION['user']['id']}"));
                    $critical=0;
                    foreach($minicursosInscritos as $ins){
                        if((((strtotime($ins->minicursos->data_hora_inicio->format("Y-m-d G:i:s")))>=(strtotime($minicurso->data_hora_inicio->format("Y-m-d G:i:s")))
                            &&(strtotime($ins->minicursos->data_hora_inicio->format("Y-m-d G:i:s")))<=(strtotime($minicurso->data_hora_fim->format("Y-m-d G:i:s")))  
                           )
                           &&((strtotime($ins->minicursos->data_hora_fim->format("Y-m-d G:i:s")))<=(strtotime($minicurso->data_hora_fim->format("Y-m-d G:i:s")))
                            &&(strtotime($ins->minicursos->data_hora_fim->format("Y-m-d G:i:s")))>=(strtotime($minicurso->data_hora_inicio->format("Y-m-d G:i:s")))  
                           )
                        )
                        ||(((strtotime($minicurso->data_hora_inicio->format("Y-m-d G:i:s")))>=(strtotime($ins->minicursos->data_hora_inicio->format("Y-m-d G:i:s")))
                            &&(strtotime($minicurso->data_hora_inicio->format("Y-m-d G:i:s")))<=(strtotime($ins->minicursos->data_hora_fim->format("Y-m-d G:i:s")))  
                           )
                           &&((strtotime($minicurso->data_hora_fim->format("Y-m-d G:i:s")))<=(strtotime($ins->minicursos->data_hora_fim->format("Y-m-d G:i:s")))
                            &&(strtotime($minicurso->data_hora_fim->format("Y-m-d G:i:s")))>=(strtotime($ins->minicursos->data_hora_inicio->format("Y-m-d G:i:s")))  
                           )
                        )){
                            alert("Houve Conflito com o minicurso ".$ins->minicursos->nome.".");
                            $critical++;
                        }   
                    }
                    $verMaxMinicurso=InscritoMinicurso::find("all",array("conditions"=>"usuario_id={$_SESSION['user']['id']}"));
                    $event=Evento::find($_SESSION["event"]["id"]);
                    if(count($verMaxMinicurso)==$event->max_minicursos){
                        alert("Você não pode se inscrever em mais minicursos por conta do \\n limite de {$event->max_minicursos} minicursos.");
                        $critical++;
                    }
                    if($critical==0){
                        $new=new InscritoMinicurso();
                        $new->usuario_id=$_SESSION['user']['id'];
                        $new->minicurso_id=$param[1];
                        if(($minicurso->vagas-$minicurso->vagas_preenchidas)==0){
                            $new->tipo=0;
                        }else{
                            $new->tipo=1;
                            $minicurso->vagas_preenchidas-=$minicurso->vagas_preenchidas;
                            $minicurso->save();
                        }
                        alert(($new->save())?"Sucesso!!!":"Erro!!!");
                    }

                }
            }
            if($param[0]=="desistir"){
                $existe=InscritoMinicurso::find("all",array("conditions"=>"usuario_id={$_SESSION['user']['id']} AND id={$param[1]}","limit"=>1,"offset"=>0));
                $existe=isset($existe[0])?$existe[0]:array();
                if(!empty($existe)){
                    if($existe->tipo==0){
                        //está na fila.
                        if(!$existe->delete()){
                            alert("Erro ao sair do minicurso");
                        }

                    }else if($existe->tipo==1){
                        //inscrito.
                        $existe->minicursos->vagas_preenchidas-=1;
                        $existe->minicursos->save();
                        $minicursos=$existe->minicursos;
                        if(!$existe->delete()){
                            alert("Erro ao sair do minicurso");
                            $existe->minicursos->vagas_preenchidas+=1;
                            $existe->minicursos->save();

                        }else{
                            if($minicursos->vagas-$minicursos->vagas_preenchidas>0){
                                $individuo=$this->findOnQueue($minicursos->id);
                                if(!empty($individuo)){
                                    $minicursos->vagas_preenchidas+=1;
                                    $individuo->tipo=1;
                                    $minicursos->save();
                                    $individuo->save();
                                    //a fila andou...

                                }
                            }
                        }

                    }
                }

            }
        }
        $_SESSION['minicurso2']=Minicurso::find("all",array("conditions"=>"evento_id={$_SESSION['event']['id']} AND id NOT IN (SELECT minicurso_id FROM inscrito_minicursos WHERE usuario_id={$_SESSION['user']['id']})"));
        $_SESSION['minicurso']=InscritoMinicurso::find("all",array("conditions"=>"usuario_id={$_SESSION['user']['id']}")); 

    }


    public function alterar($param = null) {
        
        if(isset($_POST['atualizar'])){
            #region "validação"
            if($_POST['valida']!=$_SESSION['palavra']){
                alert("Codigo invalido!!!");
                back();
                return;

            }
            $validacao=Usuario::find("all",["conditions"=>"cpf={$_POST['cpf']} and evento_id={$_SESSION['event']['id']} and id<>{$_SESSION["user"]["id"]}"]);
            //print_r($validacao);
            if(!empty($validacao)){

                alert("Erro!!! Existe um CPF identico cadastrado no nosso servidor");
                back();
                return;
            }
            $validacao=Usuario::find("all",["conditions"=>"email='{$_POST['email']}' and evento_id={$_SESSION['event']['id']} and id<>{$_SESSION["user"]["id"]}"]);
            if(!empty($validacao)){

                alert("Erro!!! Existe um E-Mail identico cadastrado no nosso servidor");
                back();
                return;
            }
            if(isset($_POST['matricula'])){
                $validacao=Usuario::find("all",["conditions"=>"matricula={$_POST['matricula']} and evento_id={$_SESSION['event']['id']} and id<>{$_SESSION["user"]["id"]}"]);
                if(!empty($validacao)){

                    alert("Erro!!! Existe uma matricula identica cadastrada no nosso servidor");
                    back();
                    return;
                }

            }
            $cliente=Usuario::find($_SESSION["user"]["id"]);
            $cliente->matricula=$_POST['matricula'];
            $cliente->email=$_POST['email'];
            $cliente->data_nascimento=$_POST['data_nascimento'];
            $cliente->cpf=$_POST['cpf'];
            if(($_POST['alterarSenha'])){
                $cliente->senha=sha1($_POST['pass']);

            }
            if($cliente->save()){
                alert("Dados Atualizados com Sucesso!!!");
            }else{
                alert("Erro ao atualizar os dados!!!");
            }
           
        }

        
        $_SESSION['cliente']=Usuario::find($_SESSION["user"]["id"]);


    }

    public function subtrabalho($param = null) {

    }

    public function palestras($param = null) {

    }

    public function maratona($param = null) {

    }

    public function perfil($param = null) {
        $this->index();
    }

    private function expulsar() {
        $url = "/" . MainConfig::$_dir . "/" . $_SESSION["event"]["url"] . "/";
        echo "
        <script>
            window.location.href='{$url}';
        </script>";
        exit();
    }

    public function sair() {
        if (isset($_SESSION["user"]))
            unset($_SESSION["user"]);
        $this->expulsar();
    }
    //functions(não pode ser acessada por url).
    private function findOnQueue($idMinicurso){
        $inscritos=InscritoMinicurso::find("all",array("conditions"=>"minicurso_id=$idMinicurso AND tipo=0 LIMIT 0,1"));
        return $inscritos;


    }

}
