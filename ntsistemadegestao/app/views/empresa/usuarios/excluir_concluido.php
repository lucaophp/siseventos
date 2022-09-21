<div id="boxtudo">
	<?php include('app/Views/empresa/_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>GERENCIAR EMPRESA</strong></p><br>
			
			<?php
				if(!count($error)) { //Se o ID da empresa for positivo (empresa cadastrada com sucesso)		
					echo "Você <b>EXCLUIU</b> com sucesso o usuario '{$usuario->getNome()}'!<br>";
				}
				else //Se nao foi cadastrada
				{
					echo 'Falha ao excluir usuario!<br>';
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
			<br><a href="empresa/estrutura_usuarios"> Voltar </a>

	  </div> <!--Fim da conteudo box 2-->
	</div> <!--Fim da box 2-->
</div>