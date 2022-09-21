<div id="boxtudo">
	<?php include('app/Views/planejamento/_LATERAL.php'); ?>

	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>ETAPA III - FORMULAÇÃO DA ESTRATÉGIA</strong></p><br>
			<p class="titulo"><strong>G) Mapa Estrátegico</strong></p><br>
			<table width="550" border="0">			  
			  <tr>
				<td width="544" align="center">
				  <table width="539" border="0">					
					  <tr>
						<td width="179" align="center"><div id="mapa-estrategico">
						  <table width="167" border="0">
							<form action="planejamento/III_mapa" method="post">
							  <tr>
								<td width="161"  class="titulo" height="30" align="center"><strong>Estratégia RD</br>
								</strong></td>
							  </tr>
							  <tr>
								<td height="51" align="center">
									<input type="radio" name="ERD" id="ER" value="Estratégia de rotatividade"> ER 
									<input type="radio" name="ERD" id="ED" value="Estratégia de desinvestimento"> ED 
									<input type="radio" name="ERD" id="EL" value="Estratégia de liquidação"> EL	                        	
								</td>
							  </tr>
							  <tr>
								<td height="65" align="center" class="titulo">Inserir Estratégia<br>
									<textarea name="EstrategiaRD" required="required" class="text" id="inserir1" type="text"></textarea>
								</td>
							  </tr>
							  <tr>
								<td align="right"><input type="submit" name="addButton2" id="addButton2"  class="botoes-salvar" value="Enviar"></td>
							  </tr>
							</form>	
						  </table>
						</div></td>				

						<td width="169"><div id="mapa-estrategico">
						  <table width="167" border="0">
							<form action="planejamento/III_mapa" method="post">
								<tr>
								  <td width="161" height="30" align="center" class="titulo"><strong>Estratégia Macro</strong></br></td>
								</tr>
								<tr>
									<td height="51" align="center">
										<input type="radio" name="EM" value="Estratégia de concentração" id="radio4"> ECO
										<input type="radio" name="EM" value="Estratégia de estabilidade" id="radio5"> EE
										<input type="radio" name="EM" value="Estratégia de crescimento" id="radio6"> ECR 
									</td>
								</tr>
								<tr>
								  <td height="65" align="center" class="titulo">Inserir Estratégia<br>
								  <textarea  name="EstrategiaMacro" required="required" class="text" id="inserir2" type="text"></textarea></td>
								</tr>
								<tr>
								  <td align="right"><input type="submit" name="addButton3" id="addButton3"  class="botoes-salvar" value="Enviar"></td>
								</tr>
							</form>
						  </table>
						</div></td>


						<td width="177"><div id="mapa-estrategico">
						  <table width="167" border="0">
							<tr>
							  <td width="161" height="30" align="center" class="titulo"><strong>Estratégia Alternativa</br>
							  </strong></td>
							</tr>
							<form action="planejamento/III_mapa" method="post">
								<tr>
									<td height="51" align="center">
										<input type="radio" name="EA" value="Liderança de custos" id="radio7"> LC
										<input type="radio" name="EA" value="Diferenciação" id="D"> D
										<input type="radio" name="EA" value="Enfoque" id="E"> E 
									</td>
								</tr>
								<tr>
								  <td height="65" align="center" class="titulo">Inserir Estratégia<br>
					              <textarea  name="EstrategiaAlternativa" required="required" class="text" id="inserir3" type="text"></textarea></td>
								</tr>
								<tr>
								  <td align="right"><input type="submit" name="addButton4" id="addButton4"  class="botoes-salvar" value="Enviar"></td>
								</tr>
							</form>
						  </table>
						</div></td>
					  </tr>
				  </table>
				</td>
			  </tr>
			</table>		
			<br>    
		          
			<table width="616" border="0" id="butoes">			
				<tr>
					<td width="610" align="center"><input type="button" onclick="window.open('planejamento/exibe_mapa','width=200, height=100');" name="addButton" id="addButton"  class="botoes-salvar" value="Visualizar Mapa"></td>
				</tr>				
			</table>
		</div><!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>