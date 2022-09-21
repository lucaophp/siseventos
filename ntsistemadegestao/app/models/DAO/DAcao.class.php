<?php
class DAcao {
    /**
     * @var DAO
     */
    private $dao;
    /**
     * @var Acao
     */
    private $acao;

    public function __construct($obj = null){
        $this->dao = new DAO();
        if($obj instanceof Acao){
            $this->acao = $obj;
        }
    }

    public function setAcao($obj = null) {
        $this->acao = $obj;
    }

    public function insere(){
        $id=$this->dao->insere("Acao",
            array(
                'idAcao',
                'idPlanoAcao',
                'idUsuario',
                'como',
                'cronograma',
                'dataConclusao',
                'dataPrevisto',
                'dataInicio',
                'onde',
                'oque',
                'idEstrategia',
                'valorPrevisto',
                'valorRealizado',
                'quem',
                'status',
                'idSupervisor',
                'criterioAcao',
                'tipoAcao',
                'evidencia'
                ),
            array(
                $this->acao->getIdAcao(),
                $this->acao->getIdPlanoAcao(),
                $this->acao->getIdUsuario(),
                $this->acao->getComo(),
                $this->acao->getCronograma(),
                $this->acao->getDataConclusao(),
                $this->acao->getdataPrevisto(),
                $this->acao->getDataInicio(),
                $this->acao->getOnde(),
                $this->acao->getOque(),
                $this->acao->getIdEstrategia(),
                $this->acao->getValorPrevisto(),
                $this->acao->getValorRealizado(),

                $this->acao->getQuem(),
                $this->acao->getStatus(),
                $this->acao->getIdSupervisor(),
                $this->acao->getCriterioAcao(),
                $this->acao->getTipoAcao(),
                $this->acao->getEvidencia()
            )
        );
        return $id;
    }

    public function atualiza(){
        return $this->dao->update(
                "Acao",
                array(
                    'idUsuario' => $this->acao->getIdUsuario(),
                    'idPlanoAcao' => $this->acao->getIdPlanoAcao(),
                    'como' => $this->acao->getComo(),
                    'cronograma'=>$this->acao->getCronograma(),
                    'dataConclusao'=>$this->acao->getDataConclusao(),
                    'dataPrevisto'=>$this->acao->getdataPrevisto(),
                    'dataInicio'=>$this->acao->getDataInicio(),
                    'onde'=>$this->acao->getOnde(),
                    'oque'=>$this->acao->getOque(),
                    'idEstrategia'=>$this->acao->getIdEstrategia(),
                    'valorPrevisto'=>$this->acao->getValorPrevisto(),
                    'valorRealizado'=>$this->acao->getValorRealizado(),

                    'quem'=>$this->acao->getQuem(),
                    'status'=>$this->acao->getStatus(),
                    'idSupervisor'=>$this->acao->getIdSupervisor(),
                    'criterioAcao'=>$this->acao->getCriterioAcao(),
                    'tipoAcao'=>$this->acao->getTipoAcao(),
                    'evidencia'=>$this->acao->getEvidencia()
            ),
            "idAcao={$this->acao->getidAcao()}"
        );
    }

    public function deleta($codigo){
        return $this->dao->remove("Acao","idAcao={$codigo}");
    }

    /**
     * @return Acao
     **/
    public function getById($codigo){
        $acao = $this->dao->lista("Acao",null,"idAcao={$codigo}");
        $acao = isset($acao[0]) ? $acao[0] : null;
        return new Acao($acao);
    }

    /**
     * @return array
     **/

    public function getAll(){
        $acaoarr=array();
        foreach($this->dao->lista("Acao",null) as $acao){
            $acaoarr[]=new Acao($acao);
        }
        return $acaoarr;
    }
    /**
     * @return array
     **/

    public function getByCond($where){
        $acaoarr=array();
        foreach($this->dao->lista("Acao",null,$where) as $acao){
            $acaoarr[]=new Acao($acao);
        }
        return $acaoarr;
    }


    public function getByUser($user) {
      /*
      SELECT a.*
FROM acao a, cargo c, usuario u
WHERE
  u.idUsuario = a.idUsuario
  AND u.idCargo = c.idCargo
  AND c.nivel > 0
  AND c.idDep = 2
*/
      $acoes = array();
      foreach( $this->dao->lista("Acao", null, "idUsuario = {$user} OR idSupervisor = {$user}") as $a){
        $acoes[] = new Acao($a);
      }
      return $acoes;
    }
    public function podeAvaliar($acao,$dep,$logado,$nivel){
      $acoes = array();
      foreach( $this->dao->lista("
        Acao as a INNER JOIN Usuario as u ON a.idUsuario=u.idUsuario
        INNER JOIN Cargo as c ON c.idCargo=u.idCargo 
        INNER JOIN Departamento as dep ON dep.idDep=c.idDep
        ", null, 
        "(a.idUsuario <> {$logado} AND c.nivel<{$nivel} AND dep.idDep={$dep} AND a.idAcao={$acao}) OR ({$nivel} in(-1,0,1))") as $a){
        $acoes[] = new Acao($a);
      }
      if(empty($acoes)){
        return false;
      }
      return true;

    }
    public function getBySQL($sql) {
        $acoes=array();
        foreach ($this->dao->consulta($sql) as $a) {
            $acoes[] = new Acao($a);
        }
        return $acoes;
    }

}
