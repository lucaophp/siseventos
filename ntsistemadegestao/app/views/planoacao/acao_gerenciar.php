<?php

function pegaStatus($acao) {
    $comp = "";
    $dataConclusao = new DateTime($acao->getDataConclusao());
    $dataPrevisto = new DateTime($acao->getDataPrevisto());
    if ($acao->getStatus() == 0) {
        return "Em Analise <br>"
                . "<form action=\"planoacao/gerenciar/{$acao->getIdPlanoAcao()}\" method=\"POST\">"
                . "     <input type=\"hidden\" name=\"idAcao\" value=\"{$acao->getIdAcao()}\">"
                . "     <input type=\"submit\" name=\"aprovar\" value=\"Aprovar\">"
                . "     <input type=\"submit\" name=\"reprovar\" value=\"Reprovar\">"
                . "</form>";
    } else if ($acao->getStatus() == 1) {
        return "Reprovado";
    } else {
        if ($acao->getDataConclusao() == "0000-00-00") {
            $comp = "Em Andamento";
        } else {
            if ($dataConclusao <= $dataPrevisto) {
                $comp = "Concluida em dia";
            } else {
                $comp = "Concluida em Atraso";
            }
        }
        return "Aprovado <br>" . $comp;
    }
}

function characterSpecials($str) {
    $str = str_replace("'", "\\'", $str);
    $str = str_replace("\"", "\\\"", $str);
    $str = str_replace("\r", " \\n", $str);
    $str = str_replace("\n", " \\n", $str);
    $str = str_replace("<br>", " \\n", $str);
    return $str;
}
?>

<div id="gerenciar" style="overflow: scroll">


    <div style="min-width: 900px;" >
        <div id="conteudo-box2" >
            <p class="titulo"><strong><?php echo (getParam(3) == "estrategica") ? "Gerenciar Ações Estrategicas" : "GERENCIAR AÇÃO"; ?></strong></p><br>
            
            <?php 
            $somaPrevisto=0;
            $somaRealizado=0;
            $out = "
            <table width=\"100%\" id=\"users\" class=\"hover compact stripe order-column row-border cell-border\">
                <thead>
                    <tr class=\"table-title\">
                        <th class=\"titulo-branco\">ID</th>
                        <th class=\"titulo-branco\">Criterio de Gestão</th>
                        <th class=\"titulo-branco\">Tipo da ação</th>
                        <th class=\"titulo-branco\" style=\"min-width:400px\">O Que</th>
                        <th class=\"titulo-branco\" style=\"min-width:400px\">Como</th>
                        <th class=\"titulo-branco\" style=\"min-width:400px\">Por Que</th>
                        <th class=\"titulo-branco\">Onde</th>
                        <th class=\"titulo-branco\">Quem</th>
                        <th class=\"titulo-branco\">Quanto(Previsto)</th>
                        <th class=\"titulo-branco\">Quanto(Realizado)</th>
                        <th class=\"titulo-branco\">Quando(Inicio)</th>
                        <th class=\"titulo-branco\">Quando(Previsto)</th>
                        <th class=\"titulo-branco\">Quando(Realizado)</th>
                        <th class=\"titulo-branco\">Status</th>
                        <th class=\"titulo-branco\">Evidencia</th>
                        <th class=\"titulo-branco\">Excluir</th>
                        <th class=\"titulo-branco\">Editar</th>
                    </tr>
                </thead>
                

                <tbody>
";
            ?>
            <?php
            $cont = 0;
            foreach ($acoes as $acao) {


                $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
                $out.= '<tr class=' . $class . '>';
                $out.= "  <td>{$acao->getIdAcao()}</td>";
                $out.= "  <td>{$acao->getCriterioAcao()}</td>";
                $out.= "  <td>{$acao->getTipoAcao()}</td>";

                $out.= "  <td>{$acao->getOque()}</td>";
                $out.= "  <td>{$acao->getComo()}</td>";
                if (!is_numeric($acao->getIdEstrategia())) {
                    $estrategia = $acao->getIdEstrategia();
                    $out.= "  <td>{$acao->getIdEstrategia()}</td>";
                } else {
                    $estrategias = new DEstrategia();
                    $estrategia = $estrategias->getById($acao->getIdEstrategia());
                    $out.= "  <td>Estrategia:{$estrategia->getEstrategia()}<br>Classificação:{$estrategia->getClassificacao()}</td>";
                }

                $out.= "  <td>{$acao->getOnde()}</td>";
                $out.= "  <td>{$acao->getQuem()}</td>";
                $valorPrevisto = number_format($acao->getValorPrevisto(), 2, ',', '.');
                $out.= "  <td>R$ {$valorPrevisto}</td>";
                $somaPrevisto+=$acao->getValorPrevisto();
                $valorRealizado = number_format($acao->getValorRealizado(), 2, ',', '.');
                $out.= "  <td>R$ {$valorRealizado}</td>";
                $somaRealizado+=$acao->getValorRealizado();
                $dataInicio = date("d/m/Y", strtotime($acao->getDataInicio()));
                $out.= "  <td>{$dataInicio}</td>";
                $dataPrevisto = date("d/m/Y", strtotime($acao->getDataPrevisto()));
                $out.= "  <td>{$dataPrevisto}</td>";
                if ($acao->getDataConclusao() == null || $acao->getDataConclusao() == "0000-00-00") {
                    $dataConclusao = "--";
                } else {
                    $dataConclusao = date("d/m/Y", strtotime($acao->getDataConclusao()));
                }
                $out.= "  <td>{$dataConclusao}</td>";

                $status = pegaStatus($acao);
                $out.= "  <td>{$status}</td>";
                if ($acao->getEvidencia() != "") {
                    $out.= "  <td><a href=\"{$acao->getEvidencia()}\" target=\"_blank\">Evidencia</a></td>";
                } else {
                    $out.= "  <td>--</td>";
                }



                //$out.= "  <td><a href='planoacao/gerenciar/{$acao->getIdPlanoAcao()}'>Acessar</a></td>";
                $out.= $podeExcluir ? "  <td>
                      <form action=\"planoacao/gerenciar/{$acao->getIdPlanoAcao()}\" method=\"POST\">
                          <input type=\"hidden\" name=\"idAcao\" value=\"{$acao->getIdAcao()}\">
                          <input type=\"submit\" name=\"excluirAcao\" value=\"Excluir\" onclick=\"return confirm('Você tem certeza que quer excluir esse plano de ação')==0?false:true;\">
                      </form>
                    </td>" : "<td></td>";
                //$out.= "  <td><button onclick=\"atualiza('{$acao->getIdPlanoAcao()}','{$pa->getIdUsuario()}','{$pa->getPeriodo()}','{$pa->getObservacao()}','{$pa->getStatus()}','{$pa->getIdDep()}');\">Editar</button></td>";
                $dataInicio = date("d/m/Y", strtotime($acao->getDataInicio()));
                //$dataConclusao=date("d/m/Y",  strtotime($acao->getDataConclusao())); 
                if ($dataConclusao == "--") {
                    $dataConclusao = " ";
                }
                $dataPrevisto = date("d/m/Y", strtotime($acao->getDataPrevisto()));
                $ehdono = $pA->verificaDono($this->_page->usuario->getIdUsuario());
                $out.= $podeEditar ? " <td> 

                    <a onclick=\"document.body.scrollTop = document.documentElement.scrollTop = 0;javascript:atualiza('" . characterSpecials($acao->getIdAcao()) . "','" . characterSpecials($acao->getIdUsuario()) . "','" . characterSpecials($acao->getIdPlanoAcao()) . "','" . characterSpecials($acao->getCriterioAcao()) . "','" . characterSpecials($acao->getTipoAcao()) . "','" . characterSpecials($acao->getOque()) . "','" . characterSpecials($acao->getOnde()) . "','" . characterSpecials($acao->getComo()) . "','" . characterSpecials($acao->getQuem()) . "','" . characterSpecials($acao->getIdEstrategia()) . "','" . characterSpecials($acao->getValorPrevisto()) . "','" . characterSpecials($acao->getValorRealizado()) . "','" . characterSpecials($dataInicio) . "','" . characterSpecials($dataPrevisto) . "','" . characterSpecials($dataConclusao) . "','" . characterSpecials($acao->getCronograma()) . "','{$acao->getStatus()}',{$cargo->getNivel()},{$ehdono},'{$acao->getEvidencia()}');\" href=\"javascript:void()\">Editar</a>
                   </td>
                    
                  " : "<td></td>";
                $out.= '</tr>';
                $cont++;
            }
            ?>
            <?php $out.="
                
                </tbody>
            </table>
";
            ?>
           
            <?php echo $out; ?>
            
            
            
            

        </div><!--Fim da conteudo box 2-->
    </div><!--Fim da box 2-->
</div>
<div style="width: 900px;margin: auto">
     Valor Previsto:<br>R$<input value="<?php printf("%.2f",$somaPrevisto);?>" class="intup" readonly="" style="width: 95%"><br>
     Valor Realizado:<br>R$<input value="<?php printf("%.2f",$somaRealizado);?>"class="intup" readonly="" style="width: 95%"><br>
     Diferença:<br>R$<input value="<?php printf("%.2f",$somaRealizado-$somaPrevisto);?>"class="intup" readonly="" style="width: 95%"><br>
    <form action="planoacao/gerenciar/<?php echo getParam(2) ?>" method="post">
        <input type="hidden" name="nomeArquivo" value="PlanoAcao_<?php echo getParam(2); ?>_<?php echo date("d-m-Y_h:i:s"); ?>">
        <button type="submit" name="exportaXLS" style="width:100%;height:50px;background:blue;color:#fff;font-size:20px;" value="<?php echo base64_encode($out); ?>">Exportar para Excel(xls)</button>
    </form>
    
    
    

</div>

<script>

    $(document).ready(function() {
        $('#users').dataTable({
            "language": {"url": "public/js/jquery.dataTables.pt-BR.js"},
            "pageLength": 5
        });

    });
</script>

