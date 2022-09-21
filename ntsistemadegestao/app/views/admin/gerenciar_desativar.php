<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >			
			<p class="titulo"><strong>DESATIVAR EMPRESA</strong></p><br>
			<?php $status = $empresa->getStatus(); ?>
			
			Tem certeza que deseja <b><?php echo ($status == 0) ? 'ativar' : 'desativar'; ?></b> a empresa '<?php echo $empresa->getNome(); ?>'?<br><br>
			<form method="POST">
				<input type="submit" id="submit" name="submit" value="<?php echo ($status == 0) ? 'Ativar' : 'Desativar'; ?>" class="botoes">
				<a href="admin/gerenciar/"> 
					<input type="button" id="cancelar" name="cancelar" value="Cancelar" class="botoes">
				</a>
			</form>
	  </div> <!--Fim da conteudo box 2-->
	</div> <!--Fim da box 2-->
</div>