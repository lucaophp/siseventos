<?php
class Log{
    private $error;
    private static $instance;
    private $datahora;
    private function __construct($e){
        $this->error=$e;
        $this->datahora=date("d/m/Y G:i:s");
    }
    public function neoWarning(){
        if(!file_exists("../system/logs/logW.txt")){
            $fp=@fopen("../system/logs/logW.txt","w+");

        }else{
            $fp=@fopen("../system/logs/logW.txt","a+");
        }
        if($fp==null){
            return;
        }
        
        $errno   = $this->error["type"];
        $errfile = $this->error["file"];
        $errline = $this->error["line"];
        $errstr  = $this->error["message"];
        fprintf($fp,"============================================\n");
        fprintf($fp,"Codigo do erro: %s\n",$errno);
        fprintf($fp,"Data hora do Erro: %s\n",$this->datahora);
        fprintf($fp,"Na pagina: %s\n",$_GET['key']);
        fprintf($fp,"Arquivo com erro: %s\n",$errfile);
        fprintf($fp,"Na linha: %s\n",$errline);
        fprintf($fp,"Descricao:\n %s\n",$errstr);
        fprintf($fp,"============================================\n");
        fclose($fp);
        
        
        
    }
    public function neoError(){
        $fp=fopen("../system/logs/logError.txt","a+");
        fprintf($fp,"============================================\n");
        fprintf($fp,"Codigo do erro: %s\n",$this->error->getCode());
        fprintf($fp,"Data hora do Erro: %s\n",$this->datahora);
        fprintf($fp,"Na pagina: %s\n",$_GET['key']);
        fprintf($fp,"Descricao:\n %s\n",$this->error->getMessage());
        fprintf($fp,"============================================\n");
        fclose($fp);
    }
    public static function getInstance($tipo,$e){
        self::$instance=new Log($e);
        if($tipo=="ERROR"){
            self::$instance->neoError();
        }else if($tipo=="WARNING"){
            self::$instance->neoWarning();
            
        }else if($tipo=="ACCESS"){
            self::$instance->neoAccess();
            
        }
        return self::$instance; 
    }
}