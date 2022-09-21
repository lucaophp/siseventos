<div id="boxtudo">

    <div id="box3" >
        <p><br>
            <a href="#"></a></p>
        <table width="817" border="0">
            <tbody>
                <tr>
                    <td width="457" align="right"><a href="pdi/fundamentos/<?php echo $this->pdiUser->getIdPDI()?>">Auto-avaliar  </a> |   <a href="pdi/tabela_pdi">Ver tabela PDI</a></td>
                </tr>
                <tr>
                    <td align="right">&nbsp;</td>
                </tr>
            </tbody>
        </table>
        <table width="860" height="272" border="0">
            <tr>
                <td width="854" align="center"><table width="835" border="0">
                        <tr>
                            <td width="418" height="270" align="center"><div id="pdi">
                                    <table width="334" border="0">
                                        <form action="pdi#" method="post">
                                            <tr>
                                                <td width="328"  class="titulo" height="30" align="center"><strong>Curriculo</strong></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><table width="334" border="0">
                                                        <tbody>
                                                            <tr>
                                                                <td width="107" align="left"><label for="nome" class="titulo">Nivel <br>Hierárquico</label></td>
                                                                <td width="217">
                                                                	<input class="det" name="nivelHierarquico" id="nivel" value="<?php echo "Nivel: ".$nivel;?>" disabled>
                                                                        
                                                                    
                                                                </td>
                                                            </tr>
                                                            <!--<tr>
                                                                <td align="left"><label for="nome" class="titulo">Matricula</label></td>
                                                                <td><input class="intup1" type="text" name="matricula" id="matricula" ></td>
                                                            </tr>-->
                                                            <tr>
                                                                <td align="left"><label for="nome" class="titulo">Departamento/<br>Setor </label>			                      </td>
                                                                <td>
                                                                	<input class="det" type="text" name="departamento" id="Departamento" value="<?php echo $departamento?>" disabled>
                                                                        

                                                                    		
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><label for="nome" class="titulo">Cargo </label>			                      </td>
                                                                <td>
                                                                	<input class="det" type="text" name="cargo" id="cargo" value="<?php echo $cargo;?>" disabled>
                                                                        
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left"><label for="nome" class="titulo">Nome: </label>			                      </td>
                                                                <td><input class="det" type="text" name="nome" id="nome" value="<?php echo $nome; ?>" disabled></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <p><br><br><br> </p>                 </td>
                                            </tr>
                                        </form>
                                    </table>
                                </div></td>
                            <td width="388"><div id="pdi">
                                    <table width="392" border="0" align="center">
                                        <form action="pdi" method="post">
                                            <tr>
                                                <td width="321" height="30" align="center" class="titulo"><strong>Objetivos/ Metas</strong></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><span class="titulo">
                                                		<input type="hidden" name="idPDI" value="<?php echo $this->pdiUser->getIdPDI()?>">
                                                		<input type="hidden" name="idUsuario" value="<?php echo $this->pdiUser->getIdUsuario();?>">
                                                        <textarea  name="objetivoMeta"  class="textarea-pdi" id="objetivoMeta" type="text"><?php echo $this->pdiUser->getObjetivoMeta();?></textarea>
                                                    </span><br></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><input type="submit" name="atualizarPDI" id="atualizarPDI"  class="botoes-salvar" value="Salvar"></td>
                                            </tr>
                                        </form>
                                    </table>
                                </div></td>
                        </tr>
                    </table></td>
            </tr>
        </table>
        <p class="titulo">&nbsp;</p><br>

    </div><!--Fim da box 2-->

</div>
