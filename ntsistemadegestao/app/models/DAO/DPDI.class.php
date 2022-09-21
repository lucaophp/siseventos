<?php
class DPDI implements IDAO{
    private $dao;
    private $PDI;

    public function __construct($obj = null) {
        //parent::__construct();
        $this->dao = new DAO();
        if ($obj instanceof PDI) {
            $this->PDI = $obj;
        }
    }

    public function insere() {
        $id = $this->dao->insere("PDI", array('idPDI', 'idUsuario', 'objetivoMeta'), 
            array(

                $this->PDI->getIdPDI(),
                $this->PDI->getIdUsuario(),
                $this->PDI->getObjetivoMeta(),
            )
        );
        return $id;
    }

    public function atualiza() {
        return $this->dao->update("PDI", array(
                    'idPDI' => $this->PDI->getIdPDI(),
                    'idUsuario' => $this->PDI->getIdUsuario(),
                    'objetivoMeta' => $this->PDI->getObjetivoMeta(),
                    
                    ), "idPDI={$this->PDI->getIdPDI()}"
        );
    }

    public function deleta($id) {
        return $this->dao->remove("PDI", "idPDI={$id}");
    }
    public function verificaUsuario($idUsuario){
        $result=$this->dao->lista("PDI", null, "idUsuario={$idUsuario}");
        if(empty($result)){
            return false;

        }else{
            return true;
        }
    }

    public function getAll() {
        $pdis = array();
        foreach ($this->dao->lista("PDI", null, "1+1=2") as $pdi) {
            $pdis[] = new PDI($pdi);
        }
        return $pdis;
    }

    public function getByCond($where) {

        $pdis = array();
        foreach ($this->dao->lista("PDI", null, $where) as $pdi) {
            $pdis[] = new PDI($pdi);
        }

        return $pdis;
    }

    public function getById($codigo) {
        $plan = $this->dao->lista("PDI", null, "idPDI={$codigo}");
        $plan = isset($plan[0]) ? $plan[0] : null;
        return new PDI($plan);
    }
    public function getByEmpresa($idEmpresa){
        $pdis = array();
        foreach ($this->dao->lista("
            PDI as p INNER JOIN 
            Usuario as u ON p.idUsuario=u.idUsuario INNER JOIN 
            Cargo as c ON u.idCargo=c.idCargo"
            , null, 
            "c.idEmpresa={$idEmpresa}") as $pdi) {
            $pdis[] = new PDI($pdi);
        }

        return $pdis;
    }
    public function getByUser($idUsuario){
        $plan=$this->dao->lista("PDI", null, "idUsuario={$idUsuario}");
        $plan = isset($plan[0]) ? $plan[0] : null;
        return new PDI($plan);
    }
    public function getBySubordinados($idDep,$nivel,$logado){
        $pdis = array();
        foreach ($this->dao->lista("
            PDI as p INNER JOIN
            Usuario as u ON p.idUsuario=u.idUsuario INNER JOIN 
            Cargo as c ON u.idCargo=c.idCargo"
            , null, 
            "(c.idDep={$idDep} AND c.nivel>={$nivel})") as $pdi) {
            $pdis[] = new PDI($pdi);
        }

        return $pdis;
    }
}