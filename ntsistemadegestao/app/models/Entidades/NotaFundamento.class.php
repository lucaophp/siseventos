<?php

class NotaFundamento implements IEntidade {

    private $idNotaFundamento;
    private $idFundamento;
    private $idPDI;
    private $nota1;
    private $nota2;
    private $dataAvaliacao;
    public function __construct($arr = null){
        $this->setAll($arr);
    }
    public function setAll($arr){
        $this->setIdNotaFundamento((!isset($arr['idNotaFundamento'])) ? null : $arr['idNotaFundamento']);
        $this->setIdFundamento((!isset($arr['idFundamento'])) ? null : $arr['idFundamento']);
        $this->setIdPDI((!isset($arr['idPDI'])) ? null : $arr['idPDI']);
        $this->setNota1((!isset($arr['nota1'])) ? null : $arr['nota1']);
        $this->setNota2((!isset($arr['nota2'])) ? null : $arr['nota2']);
        $this->setDataAvaliacao((!isset($arr['dataAvaliacao'])) ? null : $arr['dataAvaliacao']);
       
        
    }
    public function getIdNotaFundamento() {
        return $this->idNotaFundamento;
    }

    public function getIdFundamento() {
        return $this->idFundamento;
    }

    public function getIdPDI() {
        return $this->idPDI;
    }

    public function getNota1() {
        return $this->nota1;
    }

    public function getNota2() {
        return $this->nota2;
    }

    public function getDataAvaliacao() {
        return $this->dataAvaliacao;
    }

    public function setIdNotaFundamento($idNotaFundamento) {
        $this->idNotaFundamento = $idNotaFundamento;
    }

    public function setIdFundamento($idFundamento) {
        $this->idFundamento = $idFundamento;
    }

    public function setIdPDI($idPDI) {
        $this->idPDI = $idPDI;
    }

    public function setNota1($nota1) {
        $this->nota1 = $nota1;
    }

    public function setNota2($nota2) {
        $this->nota2 = $nota2;
    }

    public function setDataAvaliacao($dataAvaliacao) {
        $this->dataAvaliacao = $dataAvaliacao;
    }



}
