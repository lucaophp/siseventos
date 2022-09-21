<?php

class planoacaoMiddle implements IMiddle {

    private $acesso;
    private $dusuario;
    public $_page;

    public function __construct($controller) {
        $this->_page = $controller->_page;
        $this->dusuario = new DUsuario();

        $this->dusuario->permissao(999);
    }

    public function verificaPermissao($nivelMinimo) {
        $dusuario = new DUsuario();
        return $dusuario->validaLogin($nivelMinimo);
    }

    public function before() {
        $this->dusuario = new DUsuario();

        $this->dusuario->permissao(999);
    }

    public function doPost(Array $post) {
        if(isset($_POST['exportaXLS'])){
            //exporta dados para xls.
            require_once("app/ExportExcel.php");
            $dados=new ExportExcel(base64_decode($_POST['exportaXLS']),$_POST['nomeArquivo']);
        }
        //CRUD DA AÇÃO

        if (isset($_POST['reprovar'])) {

            $reprovar = new DAcao();
            $reprovacao = $reprovar->getById($_POST['idAcao']);
            $user = $reprovacao->getIdUsuario();

            $dusuario = new DUsuario();
            $userLogados = $dusuario->getBySession();
            $userLogado = $userLogados->getidUsuario();
            $dacao = new DAcao();
            $dcargo = new DCargo();
            $cargo = $dcargo->getById($userLogados->getIdCargo());
            if (!($dacao->podeAvaliar($_POST['idAcao'], $cargo->getIdDep(), $userLogado, $cargo->getNivel()))) {
                echo "<meta charset='utf8'>";
                echo "<script>alert('Você não tem permissão para isso!!');</script>";
            } else {
                $reprovacao->setStatus(1);
                $reprovar = new DAcao($reprovacao);
                $reprovar->atualiza();
            }
        }
        if (isset($_POST['aprovar'])) {
            $aprovar = new DAcao();
            $aprovacao = $aprovar->getById($_POST['idAcao']);
            $user = $aprovacao->getIdUsuario();
            $dusuario = new DUsuario();
            $userLogados = $dusuario->getBySession();
            $userLogado = $userLogados->getidUsuario();
            $dacao = new DAcao();
            $dcargo = new DCargo();
            $cargo = $dcargo->getById($userLogados->getIdCargo());
            if (!($dacao->podeAvaliar($_POST['idAcao'], $cargo->getIdDep(), $userLogado, $cargo->getNivel()))) {
                echo "<meta charset='utf8'>";
                echo "<script>alert('Você não tem permissão para isso!!');</script>";
            } else {
                $aprovacao->setStatus(2);
                $aprovar = new DAcao($aprovacao);
                $aprovar->atualiza();
            }
        }
        if (isset($_POST['excluirAcao'])) {
            $dusuario = new DUsuario();


            //$dusuario->permissao(1);



            $acao = new DAcao();
            $a = $acao->getById($_POST['idAcao']);

            $resul = ($acao->deleta($_POST['idAcao']) != 0) ? "Ação Removida com Sucesso!!!" : "Houve um problema ao remover a Ação";

            //@unlink($a->getEvidencia());
            echo "<script>alert(\"" . $resul . "\");</script>";
        }
        #region "CRUD";
        //tratamento de quando vier um post para cadastro de um novo plano de ação

        if (isset($post['salvarPlano'])) {
            $dusuario = new DUsuario();
            //$dusuario->permissao(1);
            $erros = array();
            if ($post['idPlanoAcao'] == "NOVO") {
                //ENTÃO VAMOS CRIAR UM NOVO PLANO DE AÇÃO
                $dusuario->permissao(0);
                if (!isset($post['usuario'])) {
                    $erros[] = "Escolha um usuario";
                }
                if (!isset($post['departamento'])) {
                    $erros[] = "Escolha um departamento";
                }
                if (!isset($post['periodo'])) {
                    $erros[] = "Escolha o periodo";
                }
                if (empty($erros)) {
                    $plano = new PlanoAcao();
                    $plano->setIdDep((int) $post['departamento']);
                    $plano->setIdUsuario((int) $post['usuario']);
                    $plano->setPeriodo($post['periodo']);
                    $plano->setStatus((int) $post['status']);
                    //$plano->setObservacao($this->tratamento($post['obs']));
                    $plano->setUltimaAlteracao(date("Y-m-d G:i:s"));
                    $dplano = new DPlanoAcao($plano);
                    if ($dplano->insere()) {
                        echo "<script>alert('Plano de Ação criado com sucesso!!!')</script>";
                    } else {
                        echo "<script>alert('Houve um erro ao cadastrar o plano de ação!!!')</script>";
                    }
                } else {
                    echo "<pre>";
                    foreach ($erros as $e) {
                        echo "" . $e, "\n";
                    }
                    echo "</pre>";
                }
            } else {
                //se for atualizar os dados o campo idplanoacao terá o id do plano de ação
                $id = (int) $post['idPlanoAcao'];
                if (!isset($post['usuario'])) {
                    $erros[] = "Escolha um usuario";
                }
                if (!isset($post['departamento'])) {
                    $erros[] = "Escolha um departamento";
                }
                if (!isset($post['periodo'])) {
                    $erros[] = "Escolha o periodo";
                }
                if ($id != 0) {
                    if (count($erros) == 0) {
                        //então vou atualizar o registro.
                        $dusuario->permissao(0);
                        $plano = new PlanoAcao();
                        $plano->setIdPlanoAcao($id);
                        $plano->setIdDep((int) $post['departamento']);
                        $plano->setIdUsuario((int) $post['usuario']);
                        $plano->setPeriodo($post['periodo']);

                        $plano->setStatus($post['status']);
                        //$plano->setObservacao($this->tratamento($post['obs']));
                        $plano->setUltimaAlteracao(date("Y-m-d G:i:s"));
                        $dplano = new DPlanoAcao($plano);
                        if ($dplano->atualiza()) {
                            echo "<script>alert('Plano de Ação foi atualizado com sucesso!!!')</script>";
                        } else {
                            echo "<script>alert('Houve um erro ao atualizar o plano de ação!!!')</script>";
                        }
                    }
                }
            }
        }
        if (isset($post['excluirPlano'])) {
            //se for clicado no botão de excluir da tabela.
            $dusuario = new DUsuario();
            $dusuario->permissao(0);

            $id = (int) $post['idPlanoAcao'];
            if ($id != 0) {
                $dplano = new DPlanoAcao();

                if ($dplano->deleta($id)) {

                    echo "<script>alert('Plano de Ação foi deletado com sucesso!!!')</script>";
                } else {
                    echo "<script>alert('Houve um Erro ao deletar o plano de ação!!!')</script>";
                }
            } else {
                echo "<script>alert('Houve um Erro ao deletar o plano de ação(ID INEXISTENTE)!!!')</script>";
            }
        }
        #endregion;

        if (isset($_POST['salvar'])) {
            $this->postCRIAAcao($post);
        }
    }

    public function doGet(Array $get) {
        
    }

    protected function tratamento($str) {

        $str = str_replace("\"", "“", $str);
        $str = str_replace("'", "´", $str);
        $str = str_replace("\n", "<br>", $str);
        $str = str_replace("(", "<", $str);
        $str = str_replace(")", ">", $str);
        return $str;
    }

    private function postCRIAAcao(Array $post) {
        $error = array();


        if (empty($_POST['criterioAcao']))
            $error[] = "Não foi informado nenhum Critério de Gestão";
        if (empty($_POST['tipoAcao']))
            $error[] = "Não foi informado nenhum Tipo para a Ação";
        //if(empty($_POST['responsavel'])) $error[] = "Não foi informado nenhum Responsavel pelo Plano de Ação";
        //if(empty($_POST['idSupervisor'])) $error[] = "Não foi informado nenhum Supervisor do Plano de Ação";
        if (empty($_POST['oque']))
            $error[] = "Não foi informado <b>oque</b> é o Plano de Ação";
        if (empty($_POST['onde']))
            $error[] = "Não foi informado <b>onde</b>";
        if (empty($_POST['como']))
            $error[] = "Não foi informado <b>como</b>";
        if (empty($_POST['quem']))
            $error[] = "Não foi informado <b>quem</b>";
        //if(empty($_POST['porque'])) $error[] = "Não foi informado <b>por que</b>";
        if (empty($_POST['valorPrevisto']))
            $error[] = "Não foi informado o valor previsto";
        /* if (empty($_POST['valorRealizado']))
          $error[] = "Não foi informado o valor realizado"; */
        if (empty($_POST['dataInicio']))
            $error[] = "Não foi informado data de Inicio";
        if (empty($_POST['dataPrevisto']))
            $error[] = "Não foi informado <b>data prevista</b>";
        /* if (empty($_POST['dataConclusao']))
          $error[] = "Não foi informado data de Conclusão"; */
        /* if (empty($_POST['cronograma']))
          $error[] = "Não foi informado nenhum Cronograma de Execução"; */

        //------------------Tratando exceções da Evidencia---------------------
        $target_file = null;
        if (isset($_FILES) && count($_FILES) && !count($error)) {
            if (is_uploaded_file($_FILES["evidencia"]["tmp_name"]) && $_FILES["evidencia"]["error"] === 0) {
                $nome_imagem = md5(time() . basename($_FILES["evidencia"]["name"])) . '.' . pathinfo($_FILES["evidencia"]["name"], PATHINFO_EXTENSION);
                $target_file = 'public/evidencias/' . $nome_imagem;

                if (!move_uploaded_file($_FILES["evidencia"]["tmp_name"], $target_file))
                    $error[] = "Erro desconhecido ao enviar a Evidencia!";
            }
        }
        else if (!count($error))
            $error[] = 'Não foi enviado nenhuma evidencia!';
        //----------------------Fim da Evidencia--------------------------------
        $_SESSION['error'] = $error;

        if (!count($error)) {
            if (isset($_FILES) && ($_POST['evidenciaAntiga'] == "nothing")) {
                $_POST['evidencia'] = ($_POST['evidenciaAntiga'] != "nothing") ? $_POST['evidenciaAntiga'] : '';
            }
            if ($target_file != null) {
                $_POST['evidencia'] = $target_file;
            } else {
                $_POST['evidencia'] = ($_POST['evidenciaAntiga'] != "nothing") ? $_POST['evidenciaAntiga'] : '';
            }
            $_POST['idEstrategia'] = $this->tratamento($_POST['idEstrategia']);
            $_POST['criterioAcao'] = $this->tratamento($_POST['criterioAcao']);
            $_POST['tipoAcao'] = $this->tratamento($_POST['tipoAcao']);
            $_POST['onde'] = $this->tratamento($_POST['onde']);
            $_POST['quem'] = $this->tratamento($_POST['quem']);
            $_POST['como'] = $this->tratamento($_POST['como']);
            //$_POST['dataInicio']=date("Y-m-d",  strtotime($_POST['dataInicio']));
            if (@$_POST['dataInicio'] != null && @$_POST['dataInicio'] != "0000-00-00" && @$_POST['dataInicio'] != " ") {
                @$_POST['dataInicio'] = str_replace("/", "-", @$_POST['dataInicio']);
                @$_POST['dataInicio'] = date("Y-m-d", strtotime(@$_POST['dataInicio']));
            } else {
                if (isset($_POST['dataInicio'])) {
                    unset($_POST['dataInicio']);
                }
            }

            if (@$_POST['dataPrevisto'] != null && @$_POST['dataPrevisto'] != "0000-00-00" && @$_POST['dataPrevisto'] != " ") {
                @$_POST['dataPrevisto'] = str_replace("/", "-", @$_POST['dataPrevisto']);
                @$_POST['dataPrevisto'] = date("Y-m-d", strtotime(@$_POST['dataPrevisto']));
            } else {
                if (isset($_POST['dataPrevisto'])) {
                    unset($_POST['dataPrevisto']);
                }
            }


            if (@$_POST['dataConclusao'] != null && @$_POST['dataConclusao'] != "0000-00-00" && @$_POST['dataConclusao'] != " ") {
                @$_POST['dataConclusao'] = str_replace("/", "-", @$_POST['dataConclusao']);
                @$_POST['dataConclusao'] = date("Y-m-d", strtotime(@$_POST['dataConclusao']));
            } else {
                if (isset($_POST['dataConclusao'])) {
                    unset($_POST['dataConclusao']);
                }
            }
            //$_POST['idEstrategia']=$this->tratamento($_POST['idEstrategia']);
            if (isset($_POST['cronograma']))
                $_POST['cronograma'] = $this->tratamento($_POST['cronograma']);




            $_POST['idSupervisor'] = $this->_page->usuario->getIdUsuario();


            if ($_POST['idAcao'] == "NOVO") {
                $_POST['idUsuario'] = $this->_page->usuario->getIdUsuario();
                $acao = new Acao();
                $acao->setAll($_POST);

                $DAcao = new DAcao($acao);
                $acao->setIdAcao($DAcao->insere());
                $idPlan = $_POST['idPlanoAcao'];
                $planos = new DPlanoAcao();
                $plano = $planos->getById($idPlan);
                $plano->setUltimaAlteracao(date("Y-m-d"));
                $planos = new DPlanoAcao($plano);
                $planos->atualiza();
                $not = new Notificacao();
                $not->setIdAcao($acao->getIdAcao());
                $not->setAssunto("Nova Ação Cadastrada");
                $not->setMensagem("Ação cadastrada no sistema no seu plano de ação esperando sua aprovação\nFavor verificar no site.\n http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao");
                $not->setPara($acao->getIdUsuario());
                $dnot = new DNotificacao($not);
                $dnot->insere();
            } else {
                $acao = new Acao();
                $acao->setAll($_POST);

                $DAcao = new DAcao($acao);
                $dusuario = new DUsuario();
                //$dusuario->permissao(1);
                $acao->setIdAcao($DAcao->atualiza());
                $not = new Notificacao();
                $not->setIdAcao($_POST['idAcao']);
                $not->setAssunto("Nova Ação Atualizada");
                $not->setMensagem("
                        Ação atualizada no sistema no seu plano de ação esperando sua aprovação.
                        \nAção de : {$_POST['idUsuario']}
                        \nFavor verificar no site.
                        \n http://falcaogestaoestrategica.com/ntsistemadegestao/planoacao");
                $not->setPara($acao->getIdUsuario());
                $dnot = new DNotificacao($not);
                $dnot->insere();
                echo ("<script>alert('Atualizado com sucesso');window.location.href='" . $_SESSION['ultimaPagina'] . "'</script>");
            }


            if (!$acao->getIdAcao())
                $error[] = "Error desconhecido...";
        }
    }

    public function after() {
        $_SESSION['ultimaPagina'] = "../" . $_GET['key'];
    }

}
