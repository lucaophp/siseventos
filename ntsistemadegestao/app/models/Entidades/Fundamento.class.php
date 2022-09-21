<?php

class Fundamento implements IEntidade {

    private $idFundamento;
    private $idEmpresa;
    private $nome;
    private $descricao;
    private $nivel;

    public function __construct($arr = null) {
        $this->setAll($arr);
    }

    public function setAll($arr) {
        $this->setIdFundamento((!isset($arr['idFundamento'])) ? null : $arr['idFundamento']);
        $this->setIdEmpresa((!isset($arr['idEmpresa'])) ? null : $arr['idEmpresa']);
        $this->setNome((!isset($arr['nome'])) ? null : $arr['nome']);
        $this->setDescricao((!isset($arr['descricao'])) ? null : $arr['descricao']);
        $this->setNivel((!isset($arr['nivel'])) ? null : $arr['nivel']);
        
    }

    public function getIdFundamento() {
        return $this->idFundamento;
    }

    public function getIdEmpresa() {
        return $this->idEmpresa;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getDescricao() {
        return $this->descricao;
    }

    public function getNivel() {
        return $this->nivel;
    }

    public function setIdFundamento($idFundamento) {
        $this->idFundamento = $idFundamento;
    }

    public function setIdEmpresa($idEmpresa) {
        $this->idEmpresa = $idEmpresa;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function setDescricao($descricao) {
        $this->descricao = $descricao;
    }

    public function setNivel($nivel) {
        $this->nivel = $nivel;
    }

}
