<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>ESTRUTURA ORGANIZACIONAL</strong></p><br>	
			<?php
			$cargos = array(array('Diretor Geral', 'Diretor Administrativo', 'Gerente Administrativo', '', '', ''),
							array('Diretor Geral', 'Diretor Administrativo', 'Gerente Administrativo', 'Supervisor Financeiro', 'Quase Estagiario', '&nbspEstagiario&nbsp'),
							array('Diretor Geral', 'Diretor Administrativo', '', '', '', ''),
							array('Diretor Geral', 'Diretor Administrativo', 'Gerente Administrativo', 'Supervisor Financeiro', '', ''),
							array('Diretor Geral', 'Diretor Administrativo', 'Gerente Administrativo', '', '', '')
						);
			?>

			<table border="1px" width="650"  cellspacing="0" style="border-collapse: collapse">
				<tr>
					<th class="titulo">1º Nivel</th> <th  class="titulo">2º Nivel</th> <th  class="titulo">3º Nivel</th> <th  class="titulo">4º Nivel</th> <th  class="titulo">5º Nivel</th> <th  class="titulo">6º Nivel</th>
				</tr>
				<?php 
				foreach($cargos as $cargo) //Percorre os cargos (definidos acima)
				{
					echo "<tr class='tabela' align='center'> <td>{$cargo[0]}</td><td>{$cargo[1]}</td><td>{$cargo[2]}</td><td>{$cargo[3]}</td><td>{$cargo[4]}</td><td>{$cargo[5]}</td> </tr>";
				}
				?>
			</table>

			<br>
			<a href="empresa/estrutura_cadastroUsuario"><input type="button" class="botoes" value="Gerenciar Usuarios"/></a>
			<input type="button" class="botoes" value="Atualizar Estrutura"/>
		</div><!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>