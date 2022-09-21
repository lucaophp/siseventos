<?php

class planoacaoController extends Controller {
    

    public function __construct() {

        parent::__construct();
    }
    

    public function index() {
        $this->_page->getHeader();
        require_once('app/Views/planoacao/index.php');
        $this->_page->getFooter();
    }

    public function cadastrar() {
        $this->_page->getHeader();
        
        //carregamento normal
        $users = new DUsuario();
        $users = $users->getAllByEmpresa($this->_page->empresa->getIdEmpresa());
        $dptos = new DDepartamento();
        $dptos = $dptos->getAllByEmpresa($this->_page->empresa->getIdEmpresa());
        //endcarregamento
        $DPA = new DPlanoAcao();
        $cargo = new DCargo();
        $cargo = $cargo->getById($this->_page->usuario->getidCargo());
        
        //Então vai mostrar todos planos de ações do DEP
            
        

        
        //se for adm local tem acesso a todos as açoes.
        if($this->verificaPermissao(0)){
           $empresa=$this->_page->empresa;
           $idEmpresa=$empresa->getIdEmpresa();
           $PAs = $DPA->getByEmpresa($idEmpresa);
           //verifica se quer de algum departamento e periodo especifico.
           if(getParam(2)=="view-dep"&&is_numeric(getParam(3))&&getParam(3)!=false&&getParam(4)!=false){
                //pega o periodo criptografado e descritografa
                $periodo=base64_decode(getParam(4));
                
                $PAs = $DPA->getByCond("idDep=".getParam(3)." AND periodo = '{$periodo}'");
                
           }
                
        }else if($this->verificaPermissao(1)){
           //DIRETOR
           //$PAs = $DPA->getByDep($cargo->getIdDep());
           $empresa=$this->_page->empresa;
           $idEmpresa=$empresa->getIdEmpresa();
           $PAs = $DPA->getByEmpresa($idEmpresa);
            
        }else if($this->verificaPermissao(999)){
            //OUTROS
            $PAs = $DPA->getBySubordinados($cargo->getIdDep(),$cargo->getNivel(),$this->_page->usuario->getIdUsuario());

        }

        
        $podeEditar=$this->verificaPermissao(1);
        $podeExcluir=$this->verificaPermissao(1);

        require_once("app/Views/planoacao/cadastrar.php");
        require_once('app/Views/planoacao/gerenciar.php');
        
        $this->_page->getFooter();
    }

    public function gerenciar() {
        $idPlano = getParam(2);


        if (isset($idPlano) && !empty($idPlano) && is_numeric($idPlano)) {  //Se for informado um ID (method GET)
            //Então vai mostrar as ações desse plano
            
            $this->_page->getHeader();
   
            $pA=new DPlanoAcao();
            $pa=$pA->getById($idPlano);
            if($pa==null){
                echo "<script>alert('Plano de Ação inexistente!!!');</script>";
                return;
            }
            $dusuario=new DUsuario();
            $usuario=$dusuario->getById($pa->getIdUsuario());
            //armazena os cargos da empresa
            $cargo = new DCargo();
            $cargo = $cargo->getById($this->_page->usuario->getidCargo());
            //faz veificações de permissoes
            $podeEditar=$this->verificaPermissao(1)||$pA->verificaDono($this->_page->usuario->getIdUsuario());
            $podeExcluir=$this->verificaPermissao(1)||$pA->verificaDono($this->_page->usuario->getIdUsuario());
            //faz verificação sobre questões de periodo do PA.
            $separaPeriodo=explode(" - ",$pa->getPeriodo());
            $ano=$separaPeriodo[0];
            $dataMaximaAcoes=($separaPeriodo[1]==1)?"31/06":"31/12";
            $dataAtual=new DateTime();
            $mesAtual= $dataAtual->format("m");
            $anoAtual= $dataAtual->format("Y");
            $planoAtivo=$pa->getStatus();
            if((int)$separaPeriodo[0]>=(int)$anoAtual&&$planoAtivo){
                if(!((int)$separaPeriodo[1]==1&&(int)$mesAtual<=6||(int)$separaPeriodo[1]==2&&(int)$mesAtual<=12)&&$planoAtivo){
                    $planoAtivo=false;
                    $pa->setStatus(false);
                    $pA=new DPlanoAcao($pa);
                    $pA->atualiza();
                }


            }
            //importa a view de cadastro de ações.
            
            require_once('app/Views/planoacao/acao_cadastrar.php');
            //operações relacionadas a ações
            $acao=new DAcao();
            $acoes=$acao->getByCond("idPlanoAcao=".$idPlano);
            //buscar ações estrategicas precisa passar o 3 parametro "estrategica".
            if(getParam(3)=="estrategica"){
                
                $acoes=$acao->getByCond("idPlanoAcao=".$idPlano." AND tipoAcao='Estratégica'");

            }
            
            require_once('app/Views/planoacao/acao_gerenciar.php');
            $this->_page->getFooter();
            
        } else {
            
            $DPA = new DPlanoAcao();
            $cargo = new DCargo();
            $cargo = $cargo->getById($this->_page->usuario->getidCargo());
            
            if($this->verificaPermissao(999)){

                $PAs = $DPA->getByDep($cargo->getIdDep());
            
            }

            //se for adm local tem acesso a todos as açoes.
            if($this->verificaPermissao(0)){
                $empresa=$this->_page->DEmpresa();
                $idEmpresa=$empresa->getIdEmpresa();
                $PAs = $DPA->getByEmpresa($idEmpresa);
                
                
            }

            
            
            $podeEditar=$this->verificaPermissao(1);
            $podeExcluir=$this->verificaPermissao(1);
            $this->_page->getHeader();
            require_once('app/Views/planoacao/gerenciar.php');
            $this->_page->getFooter();
        }
    }

    public function negado() {
        $this->_page->getHeader();
        require_once("app/Views/negado.php");
        $this->_page->getFooter();
    }

    public function acao_cadastrar() {
        $ddep = new DDepartamento();
        $deps = $ddep->getAllByEmpresa($this->_page->empresa->getidEmpresa());

        $DUsuario = new DUsuario();
        


        if (!isset($_POST) || empty($_POST)) { //Se nao for enviado dados POST
            
        } else {
            
            $this->_page->getHeader();
            require_once('app/Views/planoacao/acao_cadastrar_concluido.php');
            $this->_page->getFooter();
        }
    }

    public function encontra_estrategia() {
        require 'app/Controllers/planejamentoController.php';
        new planejamentoController();
        $idPlan = planejamentoController::$idPlanejamento;
        $estrategia = new DEstrategia();
        $estrategias = $estrategia->getByCond("idPlan={$idPlan}");
        require_once("app/Views/planoacao/encontra_estrategia.php");
    }

  
}
