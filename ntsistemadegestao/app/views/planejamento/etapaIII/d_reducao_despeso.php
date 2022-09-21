<div id="boxtudo">
	<?php include('app/Views/planejamento/_LATERAL.php'); ?>

	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>ETAPA III - FORMULAÇÃO DA ESTRATÉGIA</strong></p><br>
			<p class="titulo"><strong>D) Estrátegias de Redução de Despesos</strong></p><br>
			<table width="80%" border="0px" id="tCampos" name="tCampos">
            	<?php
            	for($i = 0; $i < 1; $i++)
            	{
            		?>
					<tr><td><table>
						<tr>
							<td> <label class="titulo"><strong>Titulo:</strong></label></td> 
							<td> <input type="text" placeholder="Titulo do Tópico" class="intup" style="width: 378px;"/></td>
						</tr><tr>
							<td> <label class="titulo"><strong>Conteudo:</strong></label></td> 
							<td> <textarea name="missao" cols="60" class="textarea" id="infra-estrutura"></textarea> </td>
						</tr>
					</table></td></tr>
					<tr><td><br></td></tr>
					<?php
				}
				?>
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
			<br>
            
            
          <table width="419" border="0" id="butoes">
			<tr>
				  <td colspan="3" align="right"><a href="planejamento/III_macro"><img src="http://www.redecultura.com.br/entrar_files/ceta.png"  alt="" width="55" height="55"/></a></td>
			  </tr>
            <tr>
					<td width="212"><input type="button" name="addButton" id="addButton"  class="botoes-salvar" value="Adicionar Tópico"></td>
					<td width="196"><input type="submit" name="submit" id="submit"  class="botoes-salvar" value="Salvar nova Versão"></td>
					<td width="135"><input type="submit" name="submit2" id="submit2"  class="botoes-salvar" value="Versões Anteriores"></td>
				</tr>
				
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