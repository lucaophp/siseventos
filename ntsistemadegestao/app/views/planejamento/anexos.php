<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
		<form action="planejamento/anexos" method="post" id="tCampos" enctype="multipart/form-data">
			<div id="conteudo-box2" >
				<p class="titulo"><strong>ANEXOS</strong></p><br>
	          	<input type="file" name="anexo"><br> 
	            <input type="submit" id="submit" class="botoes" name="submit" value="Salvar"> 
			</div>
        </form><br>
        <p class="titulo"><strong>ANEXOS ANTERIORES</strong></p><br>
		<table>
			<?php foreach ($this->dados as $value): ?>
			<tr>
				<td><a href="<?php echo $value->getArquivo();?>" target="blank"><?php echo $value->getArquivo();?></a></td>
			</tr> 
			<?php endforeach; ?>
		</table>
		
	</div><!--Fim da box 2-->
	
</div>