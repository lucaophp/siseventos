<div id="boxtudo">
    <?php include('app/Views/indicador/_LATERAL.php'); ?>
    <div id="box2" >
        <div id="conteudo-box2" >
            <form method="POST" enctype="multipart/form-data" id="formcadastro">
                <p class="titulo"><strong>CADASTRAR INDICADOR DE DESEMPENHO</strong></p><br>	
                <input type="hidden" name="idIndicador" id="idIndicador" value="NOVO">
                <table width="600" border="0px">
                    <tr>
                        <td height="39" align="right"></td>
                        <td colspan="4" align="left">&nbsp;</td>
                    </tr>

                    <tr>

                    </tr>
                    <tr>			
                        <td width="109" height="39" align="right"><label class="titulo"><strong>Indicador: </strong></label></td>
                        <td width="157"><select class="det" name="tipoIndicador" id="indicador">
                                <option value=""> Selecione um Indicador </option>
                                <option value="Estratégico">Estratégico </option>
                                <option value="Individual"> Individual </option> 
                                <option value="Rotina"> Rotina </option>
                            </select></td>
                        <td width="34">&nbsp;</td>
                        <td width="94" align="right" id="estrategiaTitulo"><label class="titulo"><strong>Estrátegia: </strong></label></td>
                        <td width="184"><input class="intup" type="text" name="idEstrategia" id="estrategia">
                            <div id="resposta" style="display: none;background-color: #ccc;border-radius: 30px;box-shadow: 5px 5px 5px rgba(0,0,0,0.5);position: absolute;overflow: auto;width:450px;height: 300px;"></div>

                        </td>

                    </tr>

                    <tr>
                        <td width="109" height="39" align="right"><label class="titulo"><strong>Departamento/<br>
                                    Setor: </strong></label></td>
                        <td>
                            <select class="det" name="idDep" id="departamento">
                                <option value=""> Selecione um Departamento </option>
                                <?php foreach ($dptos as $dpto): ?>
                                    <option value="<?php echo $dpto->getIdDep(); ?>"> <?php echo $dpto->getNome(); ?> </option>
                                <?php endforeach; ?>
                            </select></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <td height="39" colspan="5" align="right">&nbsp;</td>
                    </tr>
                    <tr>			
                        <td width="109" height="39" align="right"><label for="nome" class="titulo"><strong>Nome: </strong></label></td>
                        <td><input class="intup" type="text" name="nome" id="nome"></td>
                        <td>&nbsp;</td>
                        <td align="right"><label class="titulo"><strong>Min/Max: </strong></label></td>
                        <td><select class="det" name="minmax" id="cargo">
                                <option value="MIN"> MIN </option>
                                <option value="MAX"> MAX </option>
                                
                            </select></td>
                    </tr>
                    <tr>
                        <td width="109" height="39" align="right"><label for="criterioGestao" class="titulo"><strong>Critério de Gestão:</strong></label></td>
                        <td><select class="det" name="criterioGestao" id="criterioGestao">
                                <option value=""> Selecione um Critério de Ação </option>
                                <option value="Liderança"> Liderança </option>
                                <option value="Estratégias e Planos"> Estratégias e Planos </option>
                                <option value="Clientes"> Clientes </option>
                                <option value="Sociedade"> Sociedade </option>
                                <option value="Informações e Conhecimento"> Informações e Conhecimento </option>
                                <option value="Pessoas"> Pessoas </option>
                                <option value="Processos"> Processos </option>
                                <option value="Resultados"> Resultados </option>
                            </select></td>
                        <td>&nbsp;</td>
                        <td width="109" height="39" align="right"><label for="criterioGestao" class="titulo"><strong>Critério de Gestão:</strong></label></td>
                        <td><select class="det" name="tipoMetrica" id="criterioGestao">
                                <option value=""> Selecione uma Metrica </option>
                                <option value="Liderança"> R$ </option>
                                <option value="Estratégias e Planos"> % </option>
                                <option value="Clientes"> KG </option>
                                
                            </select></td>
                    </tr>
                    <tr>
                        <td height="39" colspan="5" align="right">&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="39" align="right"><label for="meta" class="titulo"><strong>Meta: </strong></label></td>
                        <td><input class="intup" type="text" name="meta" id="meta"></td>
                        <td>&nbsp;</td>
                        <td align="right"><label class="titulo"><strong>Periodicidade Indicador: </strong></label></td>
                        <td>
                            <select class="intup" name="periodicidade" id="periodicidade">
                                <option value="Mensal">Mensal</option>
                                <option value="Trimestral">Trimestral</option>
                                <option value="Semestral">Semestral</option>
                                <option value="Anual">Anual</option>
                            </select>



                        </td>
                    </tr>
                    <tr>
                        <td height="39" align="right"><label for="det-setor2" class="titulo"><strong>Resultado Obtido:</strong></label></td>
                        <td><input class="intup" type="text" name="resultadoObtido" id="resultado"></td>
                        <td>&nbsp;</td>
                        <td height="39" align="right"><label class="titulo"><strong>Delta: </strong></label></td>
                        <td><input class="intup" type="text" name="delta" id="delta" disabled="true"></td>
                    </tr>
                    <tr>
                        <td height="39" colspan="5" align="right">&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="39" align="right">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2" align="center"><input type="submit" name="cadastrarIndicador" id="submit2"  class="botoes" value="Salvar"></td>
                    </tr>
                    <tr>
                        <td height="39" align="right">&nbsp;</td>
                        <td align="center">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td height="39" align="right">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br><br>
            </form>
            <br><br><br>
        </div> <!--Fim da conteudo box 2-->
    </div> <!--Fim da box 2-->
</div>

<script type="text/javascript">
    function sinalizar() {
        var meta = document.getElementById("meta").value;
        var resultado = document.getElementById("resultado").value;
        //meta = parseFloat(meta);
        //resultado = parseFloat(resultado);


        if (!isNaN(resultado)) {
            meta = meta.replace(",", ".");

            resultado = resultado.replace(",", ".");
            document.getElementById("delta").value = resultado - meta;
        } else {
            document.getElementById("delta").value = 0;
        }
        if (document.getElementById("delta").value >= 0) {
            document.getElementById("delta").style.background = "green";
            document.getElementById("delta").style.color = "#ccc";

        } else {
            document.getElementById("delta").style.background = "red";
            document.getElementById("delta").style.color = "#fff";

        }
    }
    $(function() {
        // valida o formulário

        $('#formcadastro').validate({
            errorPlacement: function(error, element) {
                $(element).removeClass('form-valid');
                $(element).addClass("form-error");
            },
            success: function(label, element) {
                $(element).removeClass('form-error');
                $(element).addClass('form-valid');
            },
            // define regras para os campos
            rules: {
                nome: {required: true},
                cargo: {required: true},
                indicador: {required: true, minlength: 1},
                periodicidade: {required: true, minlength: 1},
                meta: {required: true},
                criterioGestao: {required: true},
                departamento: {required: true},
                //cargo: {required: true},
                email: {required: true, email: true},
                senha: {required: true, minlength: 4, maxlength: 16},
                //cargo: {required: true},
                // logo: { required: true, accept: "image/*" },
            },
        });

        $("#meta,#resultado").change(function() {
            sinalizar();


        })
        $("#estrategia,#indicador").click(function() {
            if (document.getElementById("indicador").value == "Estratégico") {

                document.getElementById("estrategia").disabled = true;
                document.getElementById("estrategiaTitulo").style.display = "block";
                document.getElementById("estrategia").style.display = "block";
                ajax();
            } else {
                document.getElementById("estrategia").disabled = true;
                document.getElementById("estrategiaTitulo").style.display = "none";
                document.getElementById("estrategia").style.display = "none";
            }


        });
        $(":not(#estrategia)").click(function() {
            document.getElementById("estrategia").disabled = false;
            $("#resposta").hide();


        });

        function ajax() {

            $.ajax({
                url: "planoacao/encontra_estrategia",
                context: document.body.table

            }).done(function(e) {
                $("#resposta").fadeToggle();
                document.getElementById("resposta").innerHTML = e
            });
        }
    });
    function session_start(id) {
        document.getElementById("estrategia").value = id;
        $("#resposta").toggle();
    }
</script>