<?php

class indicadorController extends Controller {
    private $dempresa;
    public function __construct() {
        $this->dusuario = new DUsuario();
        
        $this->dusuario->permissao(999);

        parent::__construct();
    }

    public function index() {
        $this->_page->getHeader();
        require_once("app/Views/indicador/index.php");
        $this->_page->getFooter();
    }

    public function negado() {
        $this->_page->getHeader();
        require_once("app/Views/negado.php");
        $this->_page->getFooter();
    }

    /*public function gerenciar() {



        $this->_page->getHeader();
        require_once("app/Views/indicador/gerenciar.php");
        $this->_page->getFooter();
    }*/

    public function cadastrar() {
        if(isset($_POST['excluirIndicador'])){
            $dindicador=new DIndicadorDesempenho();
            $dindicador->deleta($_POST['idIndicador']);
        }
        if(isset($_POST['cadastrarIndicador'])){
            $indicador=new IndicadorDesempenho();
            $indicador->setNome($_POST['nome']);
            $indicador->setIdCargo($_POST['idCargo']);
            $indicador->setPeriodicidade($_POST['periodicidade']);
            $indicador->setResultadoObtido($_POST['resultadoObtido']);
            $indicador->setCriterioGestao($_POST['criterioGestao']);
            $indicador->setTipoIndicador($_POST['tipoIndicador']);
            $indicador->setMeta($_POST['meta']);
            $indicador->setIdEstrategia(isset($_POST['idEstrategia'])||empty($_POST['idEstrategia'])?$_POST['idEstrategia']:null);
            $indicador->setIdDep($_POST['idDep']);
            
            if(@$_POST['idIndicador']=="NOVO"){
                $dindicador=new DIndicadorDesempenho($indicador);
                if($dindicador->insere()){
                    echo "<script>alert('Indicador Inserido com sucesso');</script>";
                }else{
                    echo "<script>alert('Houve um erro ao inserir o indicador');</script>";
                }
                
            }else{
                if(is_numeric($_POST['idIndicador'])){
                    $indicador->setIdIndicador($_POST['idIndicador']);
                    $dindicador=new DIndicadorDesempenho($indicador);
                    if($dindicador->atualiza()){
                        echo "<script>alert('Indicador Atualizado com sucesso');</script>";
                    }else{
                        echo "<script>alert('Houve um erro ao atualizar o indicador');</script>";
                    }
                    
                    
                }
            }
        }
        $cargos = new DCargo();
        $cargos = $cargos->getAllByEmpresa($this->_page->empresa->getIdEmpresa());
        $dptos = new DDepartamento();
        $dptos = $dptos->getAllByEmpresa($this->_page->empresa->getIdEmpresa());
        $this->_page->getHeader();
        require_once("app/Views/indicador/cadastrar.php");
        $dindicadores=new DIndicadorDesempenho();
        //print_r($this->_page);
        $empresa=$this->_page->empresa;
        $idEmpresa=$empresa->getIdEmpresa();
        $indicadores=$dindicadores->getByEmpresa($idEmpresa);
        require_once("app/Views/indicador/gerenciar.php");
        $this->_page->getFooter();
    }

}
