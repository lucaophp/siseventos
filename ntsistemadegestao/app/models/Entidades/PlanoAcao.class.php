<?php
class PlanoAcao implements IEntidade {
    /**
     * @var Integer
     */
    private $idPlanoAcao;
    /**
     * @var Integer
     */
    private $idUsuario;
    /**
     * @var integer
     */
    private $idDep;
    /**
     * @var String
     */
    private $periodo;
    /**
     * @var String
     */
    private $observacao;
    /**
     * @var boolean
     */
    private $status;
    /**
     * @var DateTime
     */
    private $ultimaAlteracao;
    

    public function __construct(Array $arr=null) {
        $this->setAll($arr);
        
    }

    /**
     * <p>Após pego os dados de array passados pelo construtor e passado os mesmos como objetos para manipulação</p>
     * @param $arr : Array
     * @return void
     */
    public function setAll($arr) {
        $this->setIdPlanoAcao((!isset($arr['idPlanoAcao'])) ? null : $arr['idPlanoAcao']);
        $this->setIdDep((!isset($arr['idDep'])) ? null : $arr['idDep']);
        $this->setIdUsuario((!isset($arr['idUsuario'])) ? null : $arr['idUsuario']);

        $this->setPeriodo((!isset($arr['periodo'])) ? null : $arr['periodo']);
        $this->setStatus((!isset($arr['status'])) ? null : $arr['status']);
        $this->setObservacao((!isset($arr['observacao'])) ? null : $arr['observacao']);

        $this->setUltimaAlteracao((!isset($arr['ultimaAlteracao'])) ? null : $arr['ultimaAlteracao']);
        
    }
    
    public function getIdPlanoAcao() {
        return $this->idPlanoAcao;
    }

    public function getIdUsuario() {
        return $this->idUsuario;
    }

    public function getIdDep() {
        return $this->idDep;
    }

    public function getPeriodo() {
        return $this->periodo;
    }

    public function getObservacao() {
        return $this->observacao;
    }

    public function getStatus() {
        return $this->status;
    }

    public function getUltimaAlteracao() {
        return $this->ultimaAlteracao;
    }
    

    public function setIdPlanoAcao($idPlanoAcao) {
        $this->idPlanoAcao = $idPlanoAcao;
    }

    public function setIdUsuario($idUsuario) {
        $this->idUsuario = $idUsuario;
    }

    public function setIdDep($idDep) {
        $this->idDep = $idDep;
    }

    public function setPeriodo($periodo) {
        $this->periodo = $periodo;
    }

    public function setObservacao($observacao) {
        $this->observacao = $observacao;
    }

    public function setStatus($status) {
        $this->status = $status;
        
        
        
    }

    public function setUltimaAlteracao($ultimaAlteracao) {
        $this->ultimaAlteracao = $ultimaAlteracao;
    }
    


        

}
