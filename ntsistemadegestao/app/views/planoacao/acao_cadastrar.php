<!--Verifica se esta inativo, se estiver desabilita tudo-->
<div id="boxtudo" onclick="">

    
    <?php include('_LATERAL.php'); ?>

    <div id="box2" >
        <div id="conteudo-box2" >
            <hr>
            <h3>Informações sobre o plano de ação</h3>
            <p style="color:blue">Período: <?php echo $pa->getPeriodo();?></p>
            <p style="color:blue">Responsável: <?php echo $usuario->getNome();?></p>
            <p>Plano de Ação <?php echo $pa->getStatus()==1?"Ativo":"Inativo";?></p><br>

            
            <hr>
            <p class="titulo"><strong>  </strong></p>
            <form name="form" method="POST" action="planoacao/acao_cadastrar" enctype="multipart/form-data" >
                <input type="hidden" name="idAcao" id="idAcao" value="NOVO">
                <input type="hidden" name="idPlanoAcao" id="idPlanoAcao" value="<?php echo $idPlano; ?>">
                <input type="hidden" name="idUsuario" id="idUsuario" value="<?php echo $pa->getIdUsuario();?>">
                <table width="350" border="0" class="titulo">
                    <tr>
                        </td>
                        <td>Criterio de Gestão</td>
                        <td>
                            <select  class="intup" name="criterioAcao" id="criterioAcao" >
                                <option value='Liderança'>Liderança</option>
                                <option value='Estratégias e Planos'>Estratégias e Planos</option>
                                <option value='Clientes'>Clientes</option>
                                <option value='Sociedade'>Sociedade</option>
                                <option value='Informações e Conhecimento'>Informações e Conhecimento</option>
                                <option value='Pessoas'>Pessoas</option>
                                <option value='Processos'>Processos</option>
                                <option value='Resultados'>Resultados</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Tipo da acão</td>
                        <td>
                            <select  class="intup"  name="tipoAcao" id="tipoAcao">
                                <option value='Estratégica'>Estratégica</option>
                                <option value='Individual'>Individual</option>
                                <option value='Rotina'>Rotina</option>
                            </select>
                        </td>
                    </tr>
                    
                    <!--
                    <tr>
                        <td>Responsavel  pelo plano de Ação/ Setor</td>
                        <td>
                            <select  class="intup" name="responsavel" id="responsavel">

                            </select>
                        </td>
                    </tr>
                    -->

                    <tr>
                </table>
                <br>

                <table width="690" border="0" class="titulo">
                    <tr>
                        <td>O que</td>
                        <td><input class="intup" type="text" name="oque" id="oque"></td>

                        <td align="center">Onde</td>
                        <td><input  class="intup" type="text" name="onde" id="onde"></td>
                    </tr>
                    <tr>
                        <td height="27">Como</td>
                        <td><input  class="intup" type="text" name="como" id="como"></td>

                        <td align="center" >Quem</td>
                        <td><input  class="intup" type="text" name="quem" id="quem"></td>
                    </tr>
                    <tr>
                        <td>Por que</td>
                        <td>
                            <input  class="intup" type="text" name="idEstrategia" value=" " id="idEstrategia">
                            <br><a href="planoacao/cadastrar#" id="textoEstrategia" onclick="ajax();return false;"><em>Selecionar Estrátegia</em></a>
                            <div id="resposta" class="intup" style="display: none;background-color: #ccc;border-radius: 30px;box-shadow: 5px 5px 5px rgba(0,0,0,0.5);position: absolute;overflow: auto;width:450px;height: 300px;"></div>

                        </td>

                        <td align="center">Quanto</td>
                        <td>
                            <table width="183" border="0">
                                <tr>
                                    <td>Previsto</td>
                                    <td width="57"><input name="valorPrevisto" class="intup" type="text" id="valorPrevisto" size="10" style="width: 140px;" onChange="atualizarDiferenca();"></td>
                                </tr>
                                <tr>
                                    <td>Realizado </td>
                                    <td><input name="valorRealizado" id="valorRealizado" type="text" onblur="atualizarDiferenca()" size="10" style="width: 140px;" onChange="atualizarDiferenca();" readOnly="true"></td>
                                </tr>
                                <tr>
                                    <td>Diferença</td>
                                    <td><input name="diferenca" type="text" id="diferenca" size="10" style="width: 140px;" readOnly="true"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

                </br>
                <table width="690" border="0" class="titulo">
                    <tr>
                        <td width="175px">Data de Inicio</td>
                        <td><input  class="intup" class="dataH" name="dataInicio" type="text" id="dataInicio" size="10" onblur="verificaData(this,'<?php echo $dataMaximaAcoes;?>','<?php echo $ano;?>')"></td>
                    </tr>
                    <tr>
                        <td>Quando</td>
                        <td><input  class="intup" class="dataH" name="dataPrevisto" type="text" id="dataPrevisto" size="10" onblur="verificaData(this,'<?php echo $dataMaximaAcoes;?>','<?php echo $ano;?>')"></td>
                    </tr>
                    <tr>
                        <td>Data da Conclusão </td>
                        <td><input  class="intup" class="dataH"  name="dataConclusao" type="text" id="dataConclusao" size="10" readOnly="true"></td>
                    </tr>
                </table>

                </br>
                <table width="690px" border="0" class="titulo">
                    <tr>
                        <td style="min-width:175px">Cronograma de Execução da ação</td>
                        <td width="520px"><textarea name="cronograma" class="textarea editorC" id="cronograma" cols="60"></textarea></td>
                    </tr>
                    <tr>
                        <td>Status <br><small>0-Em analise 1-Reprovado 2-Aprovado</small></td>
                        <td><input class="intup" id="status" name="status" value="0" type="text" size="10" readOnly="true"></td>
                    
                    </tr>
                    <tr>
                        <td>Evidência/Conclusão da Ação</td>
                        <input type="hidden" name="evidenciaAntiga" id="evidenciaAntiga" value="nothing">
                        <td><input name="evidencia" id="evidencia" type="file" size="10"></td>
                    </tr>
                </table>

                <br><br>
                <center>
                    <table width="400" border="0" id="butoes" align="center">
                        <tr>
                            <td width="53"><input class="botoes-salvar" type="reset" name="excluir" id="excluir" value="Limpar"></td>
                            <td width="52"><input class="botoes-salvar" type="submit" name="salvar" id="salvar" value="Salvar"></td>
                        </tr>
                    </table>
                </center>

            </form>

            <p><br></p>
        </div><!--Fim da conteudo box 2-->
    </div><!--Fim da box 2-->
</div>
<script>
    function session_start(id) {
        document.getElementById("idEstrategia").value = id;
        $("#resposta").toggle();
    }
    function verificaData(date,dateMax,anoMax){
        var dataNova=date.value.split("/");
        var dataMaxima=dateMax.split("/");
        if(date.value===""){
            return;
        }
        if(dataNova[2]!=anoMax){
            alert("Fora do periodo do plano de ação");
            date.value="";
            return;
        }
        if(parseInt(dataNova[1])>parseInt(dataMaxima[1])){
            alert("Fora do periodo do plano de ação");
            date.value="";
            return;
        }



    }
</script>

<script type="text/javascript" src="public/js/planoacao/main.js">
    
</script>
<script type="text/javascript">
    function inativa(){
            
            var lista = document.getElementsByTagName("input");

            for(var i=0; i<lista.length; i++){

               lista[i].readOnly = true;
            }
            var lista = document.getElementsByTagName('select');

            for(var i=0; i<lista.length; i++){
               lista[i].readOnly = true;
            }
            var lista = document.getElementsByTagName('textarea');

            for(var i=0; i<lista.length; i++){
               lista[i].readOnly = true;
            }

        

    }
</script>
<?php
    if($pa->getStatus()==false){
        echo "<script>inativa();</script>";


    }
?>
