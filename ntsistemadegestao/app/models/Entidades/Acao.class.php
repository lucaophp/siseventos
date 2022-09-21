<?php
/**
 * User: Lucas Batista Fialho
 * Date: 03/02/2015
 * Time: 14:18
 */

class Acao {
    
    

     /**
     * @var int
     */
    private $idAcao;
    /**
     * <p>Chave estrangeira de Plabo AÇÃO</p>
     * 
     * @var int
     */
    private $idPlanoAcao;
    /**
     * <p>Chave estrangeira da Tabela usuario</p>
     * @var int
     */
    private $idUsuario;
    /**
     * @var int
     */
    private $idSupervisor;
    /**
     * @var string
     */
    private $criterioAcao;
    /**
     * @var string
     */
    private $tipoAcao;
    /**
     * @var string
     */
    private $oque;
    /**
     * @var string
     */
    private $como;
    /**
     * @var string
     */
    private $idEstrategia;
    /**
     * @var string
     */
    private $onde;
    /**
     * @var string
     */
    private $quem;
    /**
     * @var float
     */
    private $valorPrevisto;
    /**
     * @var string
     */
    private $valorRealizado;
    /**
     * @var DateTime
     */
    private $dataInicio;
    /**
     * @var DateTime
     */
    private $dataPrevisto;
    /**
     * @var DateTime
     */
    private $dataConclusao;
    /**
     * @var string
     */
    private $cronograma;
    /**
     * @var int
     */
    private $status=-1;
    /**
     * @var String
     */
    private $evidencia;

    /**
     * @construct
     */
    public function __construct($arr = null){
        $this->setAll($arr);
    }

    /**
     * <p>Após pego os dados de array passados pelo construtor e passado os mesmos como objetos para manipulação</p>
     * @param $arr : Array
     * @return void
     */
    public function setAll($arr) {
        $this->setIdAcao((!isset($arr['idAcao'])) ? null : $arr['idAcao']);
        $this->setIdPlanoAcao((!isset($arr['idPlanoAcao'])) ? null : $arr['idPlanoAcao']);
        $this->setIdUsuario((!isset($arr['idUsuario'])) ? null : $arr['idUsuario']);
        $this->setComo((!isset($arr['como'])) ? null : $arr['como']);
        $this->setCronograma((!isset($arr['cronograma'])) ? null : $arr['cronograma']);
        $this->setDataConclusao((!isset($arr['dataConclusao'])) ? null : $arr['dataConclusao']);
        $this->setdataPrevisto((!isset($arr['dataPrevisto'])) ? null : $arr['dataPrevisto']);
        $this->setDataInicio((!isset($arr['dataInicio'])) ? null : $arr['dataInicio']);
        $this->setOnde((!isset($arr['onde'])) ? null : $arr['onde']);
        $this->setOque((!isset($arr['oque'])) ? null : $arr['oque']);
        $this->setIdEstrategia((!isset($arr['idEstrategia'])) ? null : $arr['idEstrategia']);
        $this->setValorPrevisto((!isset($arr['valorPrevisto'])) ? null : $arr['valorPrevisto']);
        $this->setValorRealizado((!isset($arr['valorRealizado'])) ? null : $arr['valorRealizado']);
        $this->setQuem((!isset($arr['quem'])) ? null : $arr['quem']);
        $this->setStatus((!isset($arr['status'])) ? null : $arr['status']);
        $this->setIdSupervisor((!isset($arr['idSupervisor'])) ? null : $arr['idSupervisor']);
        $this->setCriterioAcao((!isset($arr['criterioAcao'])) ? null : $arr['criterioAcao']);
        $this->setTipoAcao((!isset($arr['tipoAcao'])) ? null : $arr['tipoAcao']);
        $this->setEvidencia((!isset($arr['evidencia'])) ? null : $arr['evidencia']);
    }
    public function getIdPlanoAcao() {
        return $this->idPlanoAcao;
    }

    public function setIdPlanoAcao($idPlanoAcao) {
        $this->idPlanoAcao = $idPlanoAcao;
    }

    /**
     * @return int
     */
    public function getIdAcao()
    {

        return $this->idAcao;
    }

    /**
     * @param int $idAcao
     */
    public function setIdAcao($idAcao)
    {
        $this->idAcao = $idAcao;
    }

    /**
     * @return int
     */
    public function getIdUsuario()
    {
        return $this->idUsuario;
    }

    /**
     * @param int $idUsuario
     */
    public function setIdUsuario($idUsuario)
    {
        $this->idUsuario = $idUsuario;
    }

    /**
     * @return string
     */
    public function getOque()
    {
        return $this->oque;
    }

    /**
     * @param string $oque
     */
    public function setOque($oque)
    {
        $this->oque = $oque;
    }

    /**
     * @return string
     */
    public function getComo()
    {
        return $this->como;
    }

    /**
     * @param string $como
     */
    public function setComo($como)
    {
        $this->como = $como;
    }

    /**
     * @return string
     */
    public function getIdEstrategia()
    {
        return $this->idEstrategia;
    }

    /**
     * @param string $idEstrategia
     */
    public function setIdEstrategia($idEstrategia)
    {
        $this->idEstrategia = $idEstrategia;
    }

    /**
     * @return string
     */
    public function getOnde()
    {
        return $this->onde;
    }

    /**
     * @param string $onde
     */
    public function setOnde($onde)
    {
        $this->onde = $onde;
    }

    /**
     * @return string
     */
    public function getQuem()
    {
        return $this->quem;
    }

    /**
     * @param string $quem
     */
    public function setQuem($quem)
    {
        $this->quem = $quem;
    }

    /**
     * @return float
     */
    public function getValorPrevisto()
    {
        return $this->valorPrevisto;
    }

    /**
     * @param float $valorPrevisto
     */
    public function setValorPrevisto($valorPrevisto)
    {
        $this->valorPrevisto = $valorPrevisto;
    }

    /**
     * @return string
     */
    public function getValorRealizado()
    {
        return $this->valorRealizado;
    }

    /**
     * @param string $valorRealizado
     */
    public function setValorRealizado($valorRealizado)
    {
        $this->valorRealizado = $valorRealizado;
    }

    /**
     * @return DateTime
     */
    public function getDataInicio()
    {
        return $this->dataInicio;
    }

    /**
     * @param DateTime $dataInicio
     */
    public function setDataInicio($dataInicio)
    {
        $this->dataInicio = $dataInicio;
    }

    /**
     * @return DateTime
     */
    public function getdataPrevisto()
    {
        return $this->dataPrevisto;
    }

    /**
     * @param DateTime $dataPrevisto
     */
    public function setdataPrevisto($dataPrevisto)
    {
        $this->dataPrevisto = $dataPrevisto;
    }

    /**
     * @return DateTime
     */
    public function getDataConclusao()
    {
        return $this->dataConclusao;
    }

    /**
     * @param DateTime $dataConclusao
     */
    public function setDataConclusao($dataConclusao)
    {
        $this->dataConclusao = $dataConclusao;
    }

    /**
     * @return string
     */
    public function getCronograma()
    {
        return $this->cronograma;
    }

    /**
     * @param string $cronograma
     */
    public function setCronograma($cronograma)
    {
        $this->cronograma = $cronograma;

    }

    public function getTipoAcao()
    {
        return $this->tipoAcao;
    }
    public function setTipoAcao($tipoAcao)
    {
        $this->tipoAcao = $tipoAcao;

    }

    public function getCriterioAcao()
    {
        return $this->criterioAcao;
    }
    public function setCriterioAcao($criterioAcao)
    {
        $this->criterioAcao = $criterioAcao;

    }

    public function getIdSupervisor()
    {
        return $this->idSupervisor;
    }
    public function setIdSupervisor($idSupervisor)
    {
        $this->idSupervisor = $idSupervisor;

    }

    public function getStatus()
    {
        return $this->status;
    }
    public function setStatus($status)
    {
        $this->status = $status;

    }
    public function getEvidencia(){
        return $this->evidencia;
    }
    public function setEvidencia($evidencia){
        $this->evidencia = $evidencia;
    }
}
