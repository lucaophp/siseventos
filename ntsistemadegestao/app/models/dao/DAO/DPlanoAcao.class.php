<?php

class DPlanoAcao implements IDAO {

    private $dao;
    private $planoAcao;

    public function __construct($obj = null) {
        //parent::__construct();
        $this->dao = new DAO();
        if ($obj instanceof PlanoAcao) {
            $this->planoAcao = $obj;
        }
    }

    public function insere() {
        $id = $this->dao->insere("PlanoAcao", array('idPlanoAcao', 'idDep', 'idUsuario', 'periodo', 'status', 'ultimaAlteracao', 'observacao'), array($this->planoAcao->getIdPlanoAcao(),
            $this->planoAcao->getIdDep(),
            $this->planoAcao->getIdUsuario(),
            $this->planoAcao->getPeriodo(),
            $this->planoAcao->getStatus(),
            $this->planoAcao->getUltimaAlteracao(),
            $this->planoAcao->getObservacao())
        );
        return $id;
    }

    public function atualiza() {
        return $this->dao->update("PlanoAcao", array(
                    'idPlanoAcao' => $this->planoAcao->getIdPlanoAcao(),
                    'idDep' => $this->planoAcao->getIdDep(),
                    'idUsuario' => $this->planoAcao->getIdUsuario(),
                    'periodo' => $this->planoAcao->getPeriodo(),
                    'status' => $this->planoAcao->getStatus(),
                    'observacao' => $this->planoAcao->getObservacao(),
                    'ultimaAlteracao' => $this->planoAcao->getUltimaAlteracao()
                        ), "idPlanoAcao={$this->planoAcao->getIdPlanoAcao()}"
        );
    }

    public function deleta($id) {
        return $this->dao->remove("PlanoAcao", "idPlanoAcao={$id}");
    }

    public function getAll() {
        $planos = array();
        foreach ($this->dao->lista("PlanoAcao", null, "1+1=2") as $plano) {
            $planos[] = new PlanoAcao($plano);
        }
        return $planos;
    }

    public function getByCond($where) {

        $planos = array();
        foreach ($this->dao->lista("PlanoAcao", null, $where) as $plano) {
            $planos[] = new PlanoAcao($plano);
        }

        return $planos;
    }

    public function getById($codigo) {
        $plan = $this->dao->lista("PlanoAcao", null, "idPlanoAcao={$codigo}");
        $plan = isset($plan[0]) ? $plan[0] : null;
        return new PlanoAcao($plan);
    }

    public function getByDep($idDep) {
        $planos = array();
        foreach ($this->dao->lista("PlanoAcao", null, "idDep={$idDep}") as $plano) {
            $planos[] = new PlanoAcao($plano);
        }

        return $planos;
    }
    public function getByEmpresa($idEmpresa){
        $planos = array();
        foreach ($this->dao->lista("PlanoAcao as pa inner join Departamento as d ON pa.idDep=d.idDep", null, "d.idEmpresa={$idEmpresa}") as $plano) {
            $planos[] = new PlanoAcao($plano);
        }

        return $planos;
        
    }

}
