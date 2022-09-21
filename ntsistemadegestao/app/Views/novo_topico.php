<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
        <form action="planejamento/novo_topico" method="post" id="tCampos">
			<div id="conteudo-box2" >
				<p class="titulo"><strong>Novo Tópico</strong></p><br>
	            <input name="nome" type="text" placeholder="Digite o titulo do tópico" class="intup" style="width:100%;" required>
	            <input name="nivel" type="number" placeholder="Digite a ordem do tópico" class="intup" style="width:100%;" required>
	            <input type="submit" name="novo" id="submit" class="botoes-salvar" value="Salvar"> 
			</div>
        </form>
        
	<br>
	<table width="600px" border="1px" cellpadding="0px" cellspacing="0px">
		<tr class="table-title"> 
		<th class="titulo-branco">Nome do Topico</th> 
		<th class="titulo-branco">Opções</th> 
		
		</tr>
		<?php

			$cont = 0;
			foreach($this->topicos as $topico)
			{
				$class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';

				$topico['nome']= htmlspecialchars($topico['nome']);
				echo '<tr align="center" class='.$class.'>';
				echo "<td>{$topico['nome']}</td>";
				
				echo "<td><a href='planejamento/novo_topico/alterar/{$topico['idTopico']}'>Alterar</a> 
				| 
						<form method='post' action='planejamento/novo_topico'>
							<button href='planejamento/novo_topico/' name='excluir' onclick='return(confirm(\"Deseja Remover Esse tópico : {$topico['nome']}\\n Se sim aperte em OK\"))!=true?false:true;' value='{$topico['idTopico']}'>Excluir</button></td>
						</form>";
				echo '</tr>';
				$cont++;
			}
		?>
	</table>
</div>
		<!--Fim da conteudo box 2-->
	
	
    
</div>