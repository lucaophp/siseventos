<?php

class planejamentoController extends Controller {

    private $dados = array();
    private $idPlan;
    static $idPlanejamento;
    private $topicos;

    public function __construct() {
        parent::__construct();
        $empresa = $this->_page->empresa;
        $dao = new DAO();
        $result = $dao->lista("PlanejamentoEstrategico", null, "idEmpresa={$empresa->getIdEmpresa()}");
        if ((empty($result))) {
            $dempresa = new DEmpresa($empresa);
            $plan = new PlanejamentoEstrategico();
            $plan->setidEmpresa($empresa->getIdEmpresa());
            $plan->setconsideracoesIniciais("");
            $plan->setconsideracoesFinais("");
            $plano = new DPlanejamentoEstrategico($plan);
            $id = $plano->insere();
            if (!$id) {
                echo "falha";
            } else {
                $this->idPlan = $id;
            }
        } else {
            $lista = $dao->lista("PlanejamentoEstrategico", null, "idEmpresa={$empresa->getIdEmpresa()}");
            $lista = (isset($lista[0])) ? $lista[0] : null;
            $this->idPlan = $lista["idPlan"];
        }
        self::$idPlanejamento=$this->idPlan;
        $this->topicos = $dao->lista("Topico", null, "idPlan={$this->idPlan} ORDER BY nivel ASC");
    }

    public function index() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/index.php");
        $this->_page->getFooter();
    }

    public function novo_topico() {
        //novo tópico via post
        if (isset($_POST['novo'])) {
            $id = $this->idPlan;
            $topico = new Topico(array('idPlan' => $id, 'nome' => ($_POST['nome']),'nivel'=>$_POST['nivel']));
            $topico = new DTopico($topico);
            if (!$topico->insere()) {
                echo "Falha";
            }
            $dao=new DAO();
            $this->topicos = $dao->lista("Topico", null, "idPlan={$this->idPlan} ORDER BY nivel ASC");
        }
        //exclusão via POST
        if(isset($_POST['excluir'])){
            $topico = new DTopico();
            $_POST['excluir']=(int)$_POST['excluir'];
            if (!$topico->deleta($_POST['excluir'])) {
                echo "Falha";
            }
            $dao=new DAO();
            $this->topicos = $dao->lista("Topico", null, "idPlan={$this->idPlan} ORDER BY nivel ASC");

        }
        //Atualização do tópico via POST

        if(isset($_POST['atualiza'])){
            $id=(int)$_POST['idTopico'];
            $topico=new DTopico();
            $topico=$topico->getById($id);
            $topico->setNome(trim($_POST['nome']));
            $topico->setNivel(trim($_POST['nivel']));
            $topicoGrava=new DTopico($topico);
            if (!$topicoGrava->atualiza()) {
                echo "Falha";
            }
            $dao=new DAO();
            $this->topicos = $dao->lista("Topico", null, "idPlan={$this->idPlan} ORDER BY nivel ASC");
        }
        
        if(getParam(3)!=null&&getParam(2)=="alterar"){
            $id=(int)getParam(3);
            if($id!=0){
                $dao=new DAO();
                $topico = $dao->lista("Topico", null, "idPlan={$this->idPlan} AND idTopico={$id} ORDER BY nivel ASC LIMIT 0,1");
                $topico=isset($topico[0])?$topico[0]:array();
                $this->_page->getHeader();
                require_once("app/Views/planejamento/alterar_novo_topico.php");
                $this->_page->getFooter();
                return;

            }


        }
        //if()

        $this->_page->getHeader();
        require_once("app/Views/planejamento/novo_topico.php");
        $this->_page->getFooter();
    }

    /**
     * @param null $arr
     */
    public function novo_sub_topico($arr = null) {
        $id = (int)getParam(2);
        
        //$id=isset($arr[0])?$arr[0]:null;
        if (isset($_POST['submit'])) {
            //$id=isset($arr[0])?$arr[0]:null;

            $topico = new Subtopico(array('idTopico' => $id, 'nomeSubtopico' => ($_POST['nome']),'nivel'=>$_POST['nivel']));
            $topico = new DSubtopico($topico);

            if (!$topico->insere()) {
                echo "Falha";
            }
        }
        if(isset($_POST['atualiza'])){
            $dsubtopico=new DSubtopico();
            $subtopico=$dsubtopico->getById((int)$_POST['idSubtopico']);
            $subtopico->setNomeSubtopico(trim($_POST['nome']));
            $subtopico->setNivel($_POST['nivel']);
            $dsubtopico->setSubtopico($subtopico);
            if(!$dsubtopico->atualiza()){
                echo "<script>alert('Erro ao atualizar o subtopico');</script>";
            }else{
                echo "<script>alert('Subtopico atualizado com sucesso');</script>";
                
            }
        }
        if(isset($_POST['excluir'])){
            $SUBtopico = new DSubtopico();
            $_POST['excluir']=(int)$_POST['excluir'];
            if (!$SUBtopico->deleta($_POST['excluir'])) {
                echo "Falha";
            }
            
        }
        $subtopicoDAO=new DAO();
        $subtopicos=$subtopicoDAO->lista("Subtopico",null,"idTopico={$id}");
        if((getParam(4)!="")){
            $dsubtopico=new DSubtopico();
            $subtopico=$dsubtopico->getById((int)  getParam(4));
            $this->_page->getHeader();
            require_once("app/Views/planejamento/alterar_novo_subtopico.php");
            $this->_page->getFooter();
            return;
            
            
            
        }



        $this->_page->getHeader();
        require_once("app/Views/planejamento/novo_sub_topico.php");
        $this->_page->getFooter();
    }

    public function topico() {
        $id = getParam(2);

        $this->dados = new DSubtopico();
        $this->dados = $this->dados->getByCond("idTopico={$id} ORDER BY nivel ASC");
        $topico = new DTopico();
        $topico = $topico->getById($id);
        $this->_page->getHeader();
        require_once("app/Views/planejamento/lista_subtopicos.php");
        $this->_page->getFooter();
    }

    public function subtopico() {
        
        $id = getParam(2);
        if(isset($_POST['removeItem'])){
            $item=new DItem();
            
            $msg=($item->deleta($_POST['id']))?"Removido com sucesso!!!":"Erro ao Remover!!!";
            echo "<script>alert('".$msg."');</script>";
        }
        if (isset($_POST['submit'])) {
            $item = new Item(array('idSubtopico' => $id, 'nomeItem' => trim($_POST['titulo']), 'texto' => trim($_POST['missao'])));
            $item = new DItem($item);
            if (!$item->insere()) {
                echo "Falha ao inserir um item";
            }
        }
        $this->dados = new DSubtopico();
        $this->dados = $this->dados->getById($id);
        $itens = new DItem();
        $itens = $itens->getByCond("idSubtopico={$id}");
        if (empty($itens)) {
            $itens = array();
        }
        
        $this->_page->getHeader();
        require_once("app/Views/planejamento/lista_itens_subtopico.php");
        $this->_page->getFooter();
    }

    public function considera_inicio() {
        $dao = new DAO();
        $empresa = $this->_page->empresa;
        if (isset($_POST["submit"])) {
            $dempresa = new DEmpresa($empresa);
            $plano = new DPlanejamentoEstrategico();
            $plan = $plano->getById($this->idPlan);
            $plan->setidEmpresa($empresa->getIdEmpresa());
            $plan->setconsideracoesIniciais($_POST['texto']);
            $plano = new DPlanejamentoEstrategico($plan);

            if (!$plano->atualiza()) {
                echo "falha";
            }
        }
        $this->dados = $dao->lista("PlanejamentoEstrategico", null, "idEmpresa={$empresa->getIdEmpresa()}");
        $this->dados = isset($this->dados[0]) ? $this->dados[0] : null;


        $this->_page->getHeader();
        require_once("app/Views/planejamento/considera_inicio.php");
        $this->_page->getFooter();
    }

    public function descricao_empresa() {
        $empresa = $this->_page->empresa;
        $dempresa = new DEmpresa($empresa);

        if (!isset($_POST) || empty($_POST)) { //Se nao for enviado dados POST
            $this->_page->getHeader();
            require_once("app/Views/planejamento/descricao_empresa.php");
            $this->_page->getFooter();
        } else { //Se for enviado dados POST
            $error = array();

            if (empty($_POST['historico']))
                $error[] = "Não foi informado nenhum Historico";
            if (empty($_POST['infraestrutura']))
                $error[] = "Não foi informado nenhuma Infraestrutura";
            if (empty($_POST['mercado']))
                $error[] = "Não foi informado nenhum Mercado de Atuação";
            if (empty($_POST['produtos']))
                $error[] = "Não foi informado nenhum Produtos e Serviços";

            if (!count($error)) { //Se não ocorreu error, edita a empresa
                $empresa->setHistorico($_POST['historico']);
                $empresa->setInfraestrutura($_POST['infraestrutura']);
                $empresa->setMercadoAtuacao($_POST['mercado']);
                $empresa->setProdutosServicos($_POST['produtos']);
                $dempresa->setEmpresa($empresa);
                if (!$dempresa->atualiza())
                    $error[] = "Erro desconhecido!";
            }
            $this->_page->getHeader();
            require_once('app/Views/planejamento/descricao_empresa_concluido.php');
            $this->_page->getFooter();
        }
    }

  

    public function etapaIV() {
        //apenas a listagem de todos os planos de açoes separados por periodo.
        
        $dao=new DAO();
        $periodos=$dao->lista("PlanoAcao as pa INNER JOIN Departamento as d ON pa.idDep=d.idDep",array("distinct(pa.periodo)"),"1=1 ORDER BY pa.periodo DESC");
        $dep=new DDepartamento();
        $departamentos=$dep->getAllByEmpresa($this->_page->empresa->getIdEmpresa());
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIV.php");
        $this->_page->getFooter();
    }

    public function etapaV() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaV.php");
        $this->_page->getFooter();
    }

    public function considera_finais() {
        $dao = new DAO();
        $empresa = $this->_page->empresa;
        if (isset($_POST["submit"])) {
            $dempresa = new DEmpresa($empresa);
            $plano = new DPlanejamentoEstrategico();
            $plan = $plano->getById($this->idPlan);
            $plan->setidEmpresa($empresa->getIdEmpresa());
            $plan->setconsideracoesFinais($_POST['texto']);
            $plano = new DPlanejamentoEstrategico($plan);

            if (!$plano->atualiza()) {
                echo "falha";
            }
        }
        $this->dados = $dao->lista("PlanejamentoEstrategico", null, "idEmpresa={$empresa->getIdEmpresa()}");
        $this->dados = isset($this->dados[0]) ? $this->dados[0] : null;
        $this->_page->getHeader();
        require_once("app/Views/planejamento/considera_finais.php");
        $this->_page->getFooter();
    }

    public function anexos() {

        if (isset($_POST["submit"])) {
            if (move_uploaded_file($_FILES["anexo"]["tmp_name"], "public/arq/" . basename($_FILES['anexo']['name']))) {
                $anexo = new Anexo(array('arquivo' => "public/arq/" . basename($_FILES['anexo']['name']), 'idPlan' => $this->idPlan));
                $anexo = new DAnexo($anexo);
                if (!$anexo->insere()) {
                    echo "Falha";
                }
            }
        }
        $anexo = new DAnexo();
        $this->dados = $anexo->getByCond("idPlan={$this->idPlan}");
        $this->_page->getHeader();
        require_once("app/Views/planejamento/anexos.php");
        $this->_page->getFooter();
    }

    public function I_geral() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaI/a_geral.php");
        $this->_page->getFooter();
    }

    public function I_operacional() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaI/b_operacional.php");
        $this->_page->getFooter();
    }

    public function I_interno() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaI/c_interno.php");
        $this->_page->getFooter();
    }

    public function I_previsao() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaI/d_previsao.php");
        $this->_page->getFooter();
    }

    public function III_externo() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/a_externo.php");
        $this->_page->getFooter();
    }

    public function III_interno() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/b_interno.php");
        $this->_page->getFooter();
    }

    public function III_forcascompetitivas() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/c_forcascompetitivas.php");
        $this->_page->getFooter();
    }

    public function III_reducao_despeso() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/d_reducao_despeso.php");
        $this->_page->getFooter();
    }

    public function III_macro() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/e_macro.php");
        $this->_page->getFooter();
    }

    public function III_alternativa() {
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/f_alternativa.php");
        $this->_page->getFooter();
    }

    public function III_mapa() {

        if (isset($_POST['EstrategiaAlternativa']) && isset($_POST['EA'])) {
            $estrategia = new Estrategia(array('idPlan' => $this->idPlan, 'tipo' => $_POST['EA'], 'classificacao' => "Estrategia Alternativa", 'estrategia' => $_POST['EstrategiaAlternativa']));
            $estrategia = new DEstrategia($estrategia);
            if (!$estrategia->insere()) {
                echo "FALHA";
            }
        }
        if (isset($_POST['EstrategiaRD']) && isset($_POST['ERD'])) {
            $estrategia = new Estrategia(array('idPlan' => $this->idPlan, 'tipo' => $_POST['ERD'], 'classificacao' => "Estrategia Redução de Dispesas", 'estrategia' => $_POST['EstrategiaRD']));
            $estrategia = new DEstrategia($estrategia);
            if (!$estrategia->insere()) {
                echo "FALHA";
            }
        }
        if (isset($_POST['EstrategiaMacro']) && isset($_POST['EM'])) {
            $estrategia = new Estrategia(array('idPlan' => $this->idPlan, 'tipo' => $_POST['EM'], 'classificacao' => "Estrategia Macro", 'estrategia' => $_POST['EstrategiaMacro']));
            $estrategia = new DEstrategia($estrategia);
            if (!$estrategia->insere()) {
                echo "FALHA";
            }
        }
        $this->_page->getHeader();
        require_once("app/Views/planejamento/etapaIII/g_mapa.php");
        $this->_page->getFooter();
    }

    public function exibe_mapa() {
        $estrategia = new DEstrategia();
        $estrategias = $estrategia->getByCond("idPlan={$this->idPlan}");

        require_once("app/Views/planejamento/etapaIII/exibe_mapa.php");
    }

}
