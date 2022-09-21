<?php

class IndicadorDesempenho implements IEntidade {
    //int PK
    private $idIndicador;
    //int FK
    private $idDep;
    //string
    private $nome;
    //string
    private $periodo;
    //string
    private $tipoMetrica;
    //boolean
    private $min;
    //boolean
    private $max;
    //float
    private $meta;
    
    public function __construct(Array $arr = null) {
        $this->setAll($arr);
    }
    

    /**
     * <p>Após pego os dados de array passados pelo construtor e passado os mesmos como objetos para manipulação</p>
     * @param $arr : Array
     * @return void
     */
    public function setAll($arr) {
        $this->setIdIndicador((!isset($arr['idIndicador'])) ? null : $arr['idIndicador']);
        $this->setIdEstrategia((!isset($arr['idEstrategia'])) ? null : $arr['idEstrategia']);
        $this->setIdDep((!isset($arr['idDep'])) ? null : $arr['idDep']);
        $this->setNome((!isset($arr['nome'])) ? null : $arr['nome']);
        $this->setIdCargo((!isset($arr['idCargo'])) ? null : $arr['idCargo']);
        $this->setMeta((!isset($arr['meta'])) ? null : $arr['meta']);
        

        $this->setResultadoObtido((!isset($arr['resultadoObtido'])) ? null : $arr['resultadoObtido']);
        $this->setTipoIndicador((!isset($arr['tipoIndicador'])) ? null : $arr['tipoIndicador']);
        $this->setPeriodicidade((!isset($arr['periodicidade'])) ? null : $arr['periodicidade']);

        $this->setCriterioGestao((!isset($arr['criterioGestao'])) ? null : $arr['criterioGestao']);
    }
    
    public function getIdIndicador() {
        return $this->idIndicador;
    }

    public function getIdDep() {
        return $this->idDep;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getPeriodo() {
        return $this->periodo;
    }

    public function getTipoMetrica() {
        return $this->tipoMetrica;
    }

    public function getMin() {
        return $this->min;
    }

    public function getMax() {
        return $this->max;
    }

    public function getMeta() {
        return $this->meta;
    }

    public function setIdIndicador($idIndicador) {
        $this->idIndicador = $idIndicador;
    }

    public function setIdDep($idDep) {
        $this->idDep = $idDep;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function setPeriodo($periodo) {
        $this->periodo = $periodo;
    }

    public function setTipoMetrica($tipoMetrica) {
        $this->tipoMetrica = $tipoMetrica;
    }

    public function setMin($min) {
        $this->min = $min;
    }

    public function setMax($max) {
        $this->max = $max;
    }

    public function setMeta($meta) {
        $this->meta = $meta;
    }


    

}
