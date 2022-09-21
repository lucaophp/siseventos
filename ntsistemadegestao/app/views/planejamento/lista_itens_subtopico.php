<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong><?php echo $this->dados->getNomeSubtopico()?></strong></p><br>
            <form action="planejamento/subtopico/<?php echo $id;?>" method="POST">
	            <table width="80%" border="0px" id="tCampos">
	            	
					<tr><td><table>
						<tr>
							<td> <label class="titulo"><strong>Titulo:</strong></label></td> 
							<td> <input name="titulo" type="text" placeholder="Titulo do Tópico" class="intup" style="width: 378px;"/></td>
						</tr><tr>
						
							<td> <label class="titulo"><strong>Conteudo:</strong></label></td> 
							<td> <textarea name="missao" cols="60" class="textarea" id="infra-estrutura"></textarea> </td>
						
						</tr>
					</table></td></tr>
					<tr><td><br></td></tr>
						
				</table>
				
	            <?php /*            
          	<table width="100%" border="0px">
				<tr>
					<td align="right"><label class="titulo"><strong>Missão: </strong></label></td>
					<td align="center"><textarea name="missao" cols="70" class="textarea" id="infra-estrutura"></textarea></td>					
				</tr><tr>
					<td align="right"><label class="titulo"><strong>Visão: </strong></label></td>
					<td align="center"><textarea name="visao" cols="70" class="textarea" id="visao"></textarea></td>
				</tr><tr>			
					<td align="right"><label class="titulo"><strong>Valores: </strong></label></td>
					<td align="center"><textarea name="valores" cols="70" class="textarea" id="valores"></textarea></td>
				</tr><tr>
                	<td align="right"><label class="titulo"><strong>Objetivos/Metas: </strong></label></td>
					<td align="center"><textarea name="metas" cols="70" class="textarea" id="metas"></textarea></td>
				</tr>
			</table>
            <br>
            */ ?>
            
            <table width="419" border="0" id="butoes">
				<tr>
					<!--<td width="212"><input type="button" name="addButton" id="addButton"  class="botoes-salvar" value="Adicionar Tópico"></td>-->
					<td width="196"><input type="submit" name="submit" id="submit"  class="botoes-salvar" value="Salvar nova Versão"></td>
					<td width="135"><input type="submit" name="submit2" id="submit2"  class="botoes-salvar" value="Versões Anteriores"></td>
				</tr>
			</table>
<br><br>
			<table  class="tb-estrategico">
					<tr style="border:1px solid #000">
						<th width="63">Titulo</th>
						<th width="184">Conteudo</th>
                                                <th width="63">Remover</th>
                                                
					</tr>
					<?php foreach($itens as $item):?>
					
					<tr>
					  <td>&nbsp;</td>
					  <td>&nbsp;</td>
			  </tr><tr>
						<td><p class="planejamento"><?php echo  $item->getNomeItem();?></p></td>
						<td><p  class="planejamento"><?php echo $item->getTexto();?></p></td>
                                                <td style="text-align: center"><p  class="planejamento">
                                                        <form action="<?php echo $_SERVER["PHP_SELF"]?>" method="POST">
                                                            <input type="hidden" name="id" value="<?php echo $item->getidItem();?>">
                                                            <input type="submit" name="removeItem" value="Remover" onclick="return confirm('Você tem certeza???')?true:false;">
                                                        </form>
                                                    
                                                    </p>
                                                </td>
					</tr>
					<?php endforeach;?>
			</table>
		</div>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>

<script type="text/javascript">
	//var campos = <?php echo $i;?>;
	var CAMPO = "<tr><td><table><tr>" +
		"<td> <label class='titulo'><strong>Titulo:</strong></label></td>" +
		"<td> <input type='text' placeholder='Titulo do Tópico' value='' class='intup' style='width: 378px;'/> </td> </tr>" +
		"<tr> <td> <label class='titulo'><strong>Conteudo:</strong></label></td>" +
		"<td> <textarea name='missao' cols='60' class='textarea' id='infra-estrutura'></textarea> </td>" + 
		"</tr></table></td></tr>" +
		"<tr><td><br></td></tr>";

	$( "#addButton" ).click(function() {
		$( "#tCampos tr:last" ).after( CAMPO );
	});


</script>
