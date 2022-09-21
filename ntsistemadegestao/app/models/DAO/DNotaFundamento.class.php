<?php

class DNotaFundamento implements IDAO {

    private $dao;
    private $notaFundamento;

    public function __construct($obj = null) {
        //parent::__construct();
        $this->dao = new DAO();
        if ($obj instanceof NotaFundamento) {
            $this->notaFundamento = $obj;
        }
    }

    public function insere() {
        $id = $this->dao->insere("NotaFundamento", 
        	array('idNotaFundamento', 'idFundamento', 'idPDI', 'nota1', 'nota2', 'dataAvaliacao'), array(
        	$this->notaFundamento->getIdNotaFundamento(),
            $this->notaFundamento->getIdFundamento(),
            $this->notaFundamento->getIdPDI(),
            $this->notaFundamento->getNota1(),
            $this->notaFundamento->getNota2(),
            $this->notaFundamento->getDataAvaliacao(),
            )
        );
        return $id;
    }

    public function atualiza() {
        return $this->dao->update("NotaFundamento", array(
                    'idNotaFundamento' => $this->notaFundamento->getIdNotaFundamento(),
                    'idFundamento' => $this->notaFundamento->getIdFundamento(),
                    'idPDI' => $this->notaFundamento->getIdPDI(),
                    'nota1' => $this->notaFundamento->getNota1(),
                    'nota2' => $this->notaFundamento->getNota2(),
                    'dataAvaliacao' => $this->notaFundamento->getDataAvaliacao(),
                    
                        ), "idNotaFundamento={$this->notaFundamento->getIdNotaFundamento()}"
        );
    }

    public function deleta($id) {
        return $this->dao->remove("NotaFundamento", "idNotaFundamento={$id}");
    }
    public function getByPeriodo($idPDI){
    	$anoAtual=date("Y");
    	$dataAtual=strtotime(date("m-Y"));
    	if($dataAtual<=date("6-".$anoAtual)&&$dataAtual>=date("1-".$anoAtual)){

    	}


    }
    public function getAll() {
        $planos = array();
        foreach ($this->dao->lista("NotaFundamento", null, "1+1=2") as $plano) {
            $planos[] = new NotaFundamento($plano);
        }
        return $planos;
    }

    public function getByCond($where) {

        $planos = array();
        foreach ($this->dao->lista("NotaFundamento", null, $where) as $plano) {
            $planos[] = new NotaFundamento($plano);

        }

        return $planos;
    }

    public function getById($codigo) {
        $plan = $this->dao->lista("NotaFundamento", null, "idNotaFundamento={$codigo}");
        $plan = isset($plan[0]) ? $plan[0] : null;
        return new NotaFundamento($plan);
    }
    public function getMediaAutoAvaliacao($idPDI){
    	$nota=$this->dao->lista("NotaFundamento",array("avg(nota1) as media"),"idPDI=".$idPDI."");
    	return sprintf("%.2f",$nota[0]["media"]);
    }
    public function getMediaSupervisor($idPDI){
    	$nota=$this->dao->lista("NotaFundamento",array("avg(nota2) as media"),"idPDI=".$idPDI."");
    	return sprintf("%.2f",$nota[0]["media"]);
    }

    
    

}
