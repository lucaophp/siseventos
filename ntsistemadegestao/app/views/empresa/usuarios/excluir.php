<div id="boxtudo">
	<?php include('app/Views/empresa/_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >			
			<p class="titulo"><strong>Excluir Usuario</strong></p><br>
			
			Tem certeza que deseja <b>EXCLUIR</b> o usuario?<br><br>
			<b>Nome: </b> <?php echo $usuario->getNome(); ?> <br>
			<b>Cargo: </b> <?php echo $usuario->getCargo(); ?> <br>
			<b>Departamento: </b> <?php echo $usuario->getDepartamento(); ?> <br>			
			<br><br>

			<form method="POST">
				<input type="submit" id="submit" name="submit" value="Excluir" class="botoes">
				<a href="empresa/estrutura_usuarios/"> 
					<input type="button" id="cancelar" name="cancelar" value="Cancelar" class="botoes">
				</a>
			</form>
	  </div> <!--Fim da conteudo box 2-->
	</div> <!--Fim da box 2-->
</div>