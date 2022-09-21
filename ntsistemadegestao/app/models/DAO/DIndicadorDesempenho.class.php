<?php

class DIndicadorDesempenho implements IDAO {

    private $dao;
    private $indicador;

    public function __construct($obj = null) {
        //parent::__construct();
        $this->dao = new DAO();
        if ($obj instanceof IndicadorDesempenho) {
            $this->indicador = $obj;
        }
    }

    public function insere() {
        $id = $this->dao->insere("IndicadorDesempenho", array(
            'idIndicador','idEstrategia','idDep','idCargo','meta','nome','resultadoObtido','tipoIndicador','periodicidade','criterioGestao'
            ), array(
            $this->indicador->getIdIndicador(),
            $this->indicador->getIdEstrategia(),
            $this->indicador->getIdDep(),
            $this->indicador->getIdCargo(),
            $this->indicador->getMeta(),
            $this->indicador->getNome(),
            $this->indicador->getResultadoObtido(),
            $this->indicador->getTipoIndicador(),
            $this->indicador->getPeriodicidade(),
            $this->indicador->getCriterioGestao()

            )
        );
        return $id;
    }

    public function atualiza() {
        return $this->dao->update("IndicadorDesempenho",
        array(
	    'idIndicador' => $this->indicador->getIdIndicador(),
            'idEstrategia' =>$this->indicador->getIdEstrategia(),
            'idDep'=>$this->indicador->getIdDep(),
            'idCargo'=>$this->indicador->getIdCargo(),
            'meta'=>$this->indicador->getMeta(),
            'nome'=>$this->indicador->getNome(),
            'resultadoObtido'=>$this->indicador->getResultadoObtido(),
            'tipoIndicador'=>$this->indicador->getTipoIndicador(),
            'periodicidade'=>$this->indicador->getPeriodicidade(),
            'criterioGestao'=>$this->indicador->getCriterioGestao()
       ),"idIndicador={$this->indicador->getIdIndicador()}");
    }

    public function deleta($id) {
        return $this->dao->remove("IndicadorDesempenho", "idIndicador={$id}");
    }

    public function getAll() {
        $indicadores = array();
        foreach ($this->dao->lista("IndicadorDesempenho", null, "1+1=2") as $indicador) {
            $indicadores[] = new IndicadorDesempenho($indicador);
        }
        return $indicadores;
    }

    public function getByCond($where) {

        $indicadores = array();
        foreach ($this->dao->lista("IndicadorDesempenho", null, $where) as $indicador) {
            $indicadores[] = new IndicadorDesempenho($indicador);
        }
        return $indicadores;
    }

    public function getById($codigo) {
        $plan = $this->dao->lista("IndicadorDesempenho", null, "idIndicador={$codigo}");
        $plan = isset($plan[0]) ? $plan[0] : null;
        return new IndicadorDesempenho($plan);
    }
    public function getByEmpresa($idEmpresa){
        $inds = array();
        foreach ($this->dao->lista("IndicadorDesempenho as ind inner join Departamento as d ON ind.idDep=d.idDep", null, "d.idEmpresa={$idEmpresa}") as $ind) {
            $inds[] = new IndicadorDesempenho($ind);
        }

        return $inds;
        
    }

}
