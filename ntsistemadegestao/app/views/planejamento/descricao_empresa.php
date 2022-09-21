<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>DESCRIÇÃO DA EMPRESA</strong></p><br>
			<form method="POST">
	          	<table width="100%" border="0px">
	            	<tr>			
						<td width="100px" align="right"><label class="titulo"><strong>Histórico: </strong></label></td>
						<td><textarea name="historico" cols="70" class="textarea" id="historico"><?php echo $empresa->getHistorico(); ?></textarea></td>
					</tr>
	        	</table><br>
	          	
	          	<p class="titulo"><strong>ESTRUTURA ORGANIZACIONAL</strong></p><br>
	            <table width="100%" border="0px">
					<tr>			
						<td align="right" width="100px"><label class="titulo"><strong>Infra Estrutura: </strong></label></td>
						<td><textarea name="infraestrutura" cols="70" class="textarea" id="infraestrutura"><?php echo $empresa->getInfraestrutura(); ?></textarea></td>
					</tr>
					<tr>
						<td align="right"><label class="titulo"><strong>Mercado de Atuação: </strong></label></td>
						<td><textarea name="mercado" cols="70" class="textarea" id="mercado"><?php echo $empresa->getMercadoAtuacao(); ?></textarea></td>
					</tr>
					<tr>			
						<td align="right"><label class="titulo"><strong>Produtos e Serviços: </strong></label></td>
						<td><textarea name="produtos" cols="70" class="textarea" id="produtos"><?php echo $empresa->getProdutosServicos(); ?></textarea></td>
					</tr>
				</table>
	            <br>
	            
	            <table width="606px" border="0">
					<tr>
						<td>  </td>
						<td width="160"><input type="submit" name="submit" id="submit"  class="botoes" value="Atualizar"></td>
					</tr>
				</table>
			</form>
		</div>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>