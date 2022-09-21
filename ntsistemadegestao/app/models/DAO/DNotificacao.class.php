<?php

class DNotificacao implements IDAO {
    private $dao;
    private $notificacao;
    public function __construct($obj=null) {
        $this->dao=new DAO();
        if($obj instanceof Notificacao){
            $this->notificacao=$obj;
            
        }
    }
    public function insere() {
        
        $id=$this->dao->insere("Notificacao",
            array(
                'assunto',
                'idAcao',
                'mensagem',
                'para',
                'status'
                ),
            array(
                $this->notificacao->getAssunto(),
                $this->notificacao->getIdAcao(),
                $this->notificacao->getMensagem(),
                $this->notificacao->getPara(),
                $this->notificacao->getStatus()
            )
        );
        $dnot=new DNotificacao();
        $not=$dnot->getById($id);
        $duser=new DUsuario();
        $para=$duser->getById($not->getPara());
        $to=$para->getEmail();
        $subject=$not->getAssunto();
        $message=$not->getMensagem();
        
        $this->sendMail($to, $subject, $message);
        
        return $id;
        
    }

    public function atualiza() {
        
        return $this->dao->update(
                "Notificacao",
                array(
                    'para' => $this->notificacao->getPara(),
                    'mensagem' => $this->notificacao->getMensagem(),
                    'idAcao' => $this->notificacao->getIdAcao(),
                    'assunto' => $this->notificacao->getAssunto(),
                    'status'=>$this->notificacao->getStatus()
                    
            ),
            "idNotificacao={$this->notificacao->getIdNotificacao()}"
        );

        
    }

    public function deleta($id) {
        return $this->dao->remove("Notificacao","idNotificacao={$id}");
        
    }

    public function getAll() {
        $notificacoes=array();
        foreach ($this->dao->lista("Notificacao", null) as $notificacao){
            $notificacoes[]=new Notificacao($notificacao);
        }
        return $notificacoes;
        
    }

    public function getByCond($where) {
        $notificacoes=array();
        foreach ($this->dao->lista("Notificacao", null,$where) as $notificacao){
            $notificacoes[]=new Notificacao($notificacao);
        }
        return $notificacoes;
        
    }

    public function getById($codigo) {
        $notificacao = $this->dao->lista("Notificacao",null,"idNotificacao={$codigo}");
        $notificacao = isset($notificacao[0]) ? $notificacao[0] : null;
        return new Notificacao($notificacao);
        
    }
    public function getByUser($idUser){
        $notificacoes=array();
        foreach ($this->dao->lista("Notificacao", null,"para={$idUser} ORDER BY idNotificacao DESC") as $notificacao){
            $notificacoes[]=new Notificacao($notificacao);
        }
        return $notificacoes;
        
        
    }
    public function sendMail($to,$subject,$message){
        return mail($to, $subject, $message);
        
    }

    

}
