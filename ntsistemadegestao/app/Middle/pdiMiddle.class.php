<?php

class pdiMiddle implements IMiddle {
	//tenho que mudar essa logica pois o programador não sabe ingles.
    public function before() {
        $dusuario = new DUsuario();
        $dusuario->permissao(999);
    }

    public function doPost(Array $post) {
        //[Atualização de PDI]
        if (isset($post['atualizarPDI'])) {
            $this->atualizarPDI($post);
            
        }
        if (isset($post["avaliarPDI"])) {

            $this->avaliarPDI($post);
        }
        if(isset($post["salvaFundamento"])){
        	$this->salvaFundamento($post);
        }
        if(isset($post['excluiFundamento'])){
        	$dfund=new DFundamento();
        	if($dfund->deleta($post['idFundamento'])){
        		echo "<script>alert('Removido com sucesso!!!');</script>";
        	}else{
        		echo "<script>alert('Houve um erro ao excluir,pois possui dependencia!!!');</script>";
        	}
        }
    }

    public function doGet(Array $get) {
        
    }
    private function atualizarPDI($post){
        $pdi = new PDI($post);
        $dpdi = new DPDI($pdi);
        if ($dpdi->atualiza() >= 1) {
            echo "<script>alert('Atualizado com sucesso!!!');</script>";
        } else {
            echo "<script>alert('Houve um erro ao atualizar!!!');</script>";
        }
    } 
    private function salvaFundamento($post){
    	if($post['idFundamento']=="NOVO"){
    		$fundamento=new Fundamento($post);
    		$dfund=new DFundamento($fundamento);
    		if($dfund->insere()){
    			echo "<script>alert('Inserido com sucesso!!!');</script>";
    		}else{
    			echo "<script>alert('Houve um erro ao inserir!!!');</script>";
    		}
    	}else if((int)$post['idFundamento']>0){
    		$fundamento=new Fundamento($post);
    		$dfund=new DFundamento($fundamento);
    		if($dfund->atualiza()){
    			echo "<script>alert('Atualizado com sucesso!!!');</script>";
    		}else{
    			echo "<script>alert('Houve um erro ao atualizar!!!');</script>";
    		}

    	}

    }
    private function avaliarPDI($post) {
        $dpdi = new DPDI();
        $pdi = $dpdi->getById(getParam(2));
        if ($pdi == null) {
            echo "<script>alert('PDI inexistente');</script>";
            return;
        }
        $dusuario = new DUsuario();
        if ($dusuario->getBySession()->getIdUsuario() == $pdi->getIdUsuario()) {
            //Então pode fazer auto-avaliação(nota1)

            foreach ($post["fundamento"] as $fundamento) {

                if ($fundamento["nota1"] != "") {
                    $npdi = new NotaFundamento();
                    $npdi->setIdPDI(getParam(2));
                    $npdi->setIdFundamento($fundamento["id"]);
                    $npdi->setDataAvaliacao(date("Y-m-d"));
                    $npdi->setNota1($fundamento["nota1"]);
                    $dnpdi = new DNotaFundamento($npdi);
                    $result=$dnpdi->getByCond("idFundamento={$fundamento['id']} AND idPDI=" . getParam(2) . "");
                    if (empty($result)) {
                        $dnpdi->insere();
                    } else {
                        $notas = $dnpdi->getByCond("idFundamento={$fundamento['id']} AND idPDI=" . getParam(2) . "");

                        $nota = isset($notas[0]) ? $notas[0] : null;
                        $npdi->setIdNotaFundamento($nota->getIdNotaFundamento());
                        $npdi->setNota2($nota->getNota2());
                        $dnpdi = new DNotaFundamento($npdi);
                        $dnpdi->atualiza();
                    }
                }
            }
        } else {
            foreach ($post["fundamento"] as $fundamento) {

                if ($fundamento["nota2"] != "") {
                    $npdi = new NotaFundamento();
                    $npdi->setIdPDI(getParam(2));
                    $npdi->setIdFundamento($fundamento["id"]);
                    $npdi->setDataAvaliacao(date("Y-m-d"));
                    $npdi->setNota2($fundamento["nota2"]);
                    $dnpdi = new DNotaFundamento($npdi);
                    $result=$dnpdi->getByCond("idFundamento={$fundamento['id']} AND idPDI=" . getParam(2) . "");
                    if (empty($result)) {
                        $dnpdi->insere();
                    } else {
                        $notas = $dnpdi->getByCond("idFundamento={$fundamento['id']} AND idPDI=" . getParam(2) . "");

                        $nota = isset($notas[0]) ? $notas[0] : null;
                        $npdi->setIdNotaFundamento($nota->getIdNotaFundamento());
                        $npdi->setNota1($nota->getNota1());
                        $dnpdi = new DNotaFundamento($npdi);
                        $dnpdi->atualiza();
                    }
                }
            }
        }
    }

    public function after() {
        
    }

}
