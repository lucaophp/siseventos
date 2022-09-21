<div id="boxtudo">
	<?php include('app/Views/empresa/_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>CADASTRO DE USUÁRIOS</strong></p><br>
			
			<?php
				if(!count($error) && $usuario->getidUsuario() > 0) { //Se o ID do departamento for positivo (dep cadastrada com sucesso)		
					echo "Você editou com sucesso o usuário '{$usuario->getNome()}'<br>";
					echo "<br> <a href='empresa/estrutura_usuarios'> Voltar </a>";
				}
				else //Se nao foi cadastrada
				{
					echo 'Falha ao editar usuario no banco de dados!<br>';
					echo 'Por favor, tente novamente mais tarde.<br>';					

					if(count($error)) { //Mostra os erros encontrados.
						echo '<br>Os seguintes erros foram encontrados: <br>';
						foreach($error as $e) {
							echo '<li>' . $e . '</li>';
						}
					}
					echo '<br><br>Caso o erro persista, contate o Administrador.';
				}
			?>

	  </div> <!--Fim da conteudo box 2-->
	</div> <!--Fim da box 2-->
</div>