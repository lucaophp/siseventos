<?php

require_once("app/PageConstructor.php");


class Controller {

    public $_page;
    private $middle;
    private $nomeMiddle;

    public function __construct() {
        $this->_page = new Page();
        $this->callMiddle();
        
        if(isset($_POST)){
    
            $this->post();
        }
        if(isset($_GET)){
            $this->get();
        }

    }
    public function verificaPermissao($nivelMinimo){
        $dusuario=new DUsuario();
        return $dusuario->validaLogin($nivelMinimo);
        
        
    }
    public function callMiddle(){
        
        $this->nomeMiddle=IndexRouter::$_control."Middle";
        if(file_exists("app/Middle/".$this->nomeMiddle.".class.php")){
            $this->middle=new $this->nomeMiddle($this);
            $this->middle->before();

        }else{
            $this->nomeMiddle=null;
        }
    }
    public function post(){
        if($this->nomeMiddle!=null){
            $m=new $this->nomeMiddle($this);
            $m->doPost($_POST);
        }

    }
    public function get(){
        if($this->nomeMiddle!=null){
            $m=new $this->nomeMiddle($this);
            $m->doGet($_GET);
        }

    }

    protected function tratamento($str) {

        $str = str_replace("\"", "“", $str);
        $str = str_replace("'", "´", $str);
        //$str = str_replace("\n", "<br>", $str);
        $str = str_replace("(", "<", $str);
        $str = str_replace(")", ">", $str);
        return $str;
    }
    public function __destruct(){
        $this->nomeMiddle=IndexRouter::$_control."Middle";
        if(file_exists("app/Middle/".$this->nomeMiddle.".class.php")){
            $m=new $this->nomeMiddle($this);
            $m->after();


        }else{
            $this->nomeMiddle=null;
        }


    }

}
