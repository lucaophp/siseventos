<?php

class PDI implements IEntidade {

    private $idPDI;
    private $idUsuario;
    private $objetivoMeta;
    public function __construct($arr = null){
        $this->setAll($arr);
    }
    public function setAll($arr){
        $this->setIdPDI((!isset($arr['idPDI'])) ? null : $arr['idPDI']);
        $this->setIdUsuario((!isset($arr['idUsuario'])) ? null : $arr['idUsuario']);
        $this->setObjetivoMeta((!isset($arr['objetivoMeta'])) ? null : $arr['objetivoMeta']);
       
        
    }

    public function getIdPDI() {
        return $this->idPDI;
    }

    public function getIdUsuario() {
        return $this->idUsuario;
    }

    public function getObjetivoMeta() {
        return $this->objetivoMeta;
    }

    public function setIdPDI($idPDI) {
        $this->idPDI = $idPDI;
    }

    public function setIdUsuario($idUsuario) {
        $this->idUsuario = $idUsuario;
    }

    public function setObjetivoMeta($objetivoMeta) {
        $this->objetivoMeta = $objetivoMeta;
    }

}
