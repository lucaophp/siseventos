<?php

class Notificacao implements IEntidade {
    
    private $idNotificacao;
    private $para;
    private $mensagem;
    private $assunto;
    private $idAcao;
    private $status;
    public function __construct($arr = null){
        $this->setAll($arr);
    }
    public function setAll($arr){
        $this->setIdNotificacao((!isset($arr['idNotificacao'])) ? null : $arr['idNotificacao']);
        $this->setIdAcao((!isset($arr['idAcao'])) ? null : $arr['idAcao']);
        $this->setAssunto((!isset($arr['assunto'])) ? null : $arr['assunto']);
        $this->setPara((!isset($arr['para'])) ? null : $arr['para']);
        $this->setMensagem((!isset($arr['mensagem'])) ? null : $arr['mensagem']);
        $this->setStatus((!isset($arr['status'])) ? null : $arr['status']);
        
    }
    public function getStatus() {
        return $this->status;
    }

    public function setStatus($status) {
        $this->status = $status;
    }

    
    public function getIdNotificacao() {
        return $this->idNotificacao;
    }

    public function setIdNotificacao($idNotificacao) {
        $this->idNotificacao = $idNotificacao;
    }

    
    public function getPara() {
        return $this->para;
    }

    public function getMensagem() {
        return $this->mensagem;
    }

    public function getAssunto() {
        return $this->assunto;
    }

    public function getIdAcao() {
        return $this->idAcao;
    }

    

    public function setPara($para) {
        $this->para = $para;
    }

    public function setMensagem($mensagem) {
        $this->mensagem = $mensagem;
    }

    public function setAssunto($assunto) {
        $this->assunto = $assunto;
    }

    public function setIdAcao($idAcao) {
        $this->idAcao = $idAcao;
    }


}
