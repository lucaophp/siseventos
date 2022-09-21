<div id="boxtudo">
    <?php include('_LATERAL.php'); ?>

    <div id="box2" >
        <form action="planejamento/novo_sub_topico/<?php echo $id; ?>" method="post" id="tCampos">
            <div id="conteudo-box2" >
                <p class="titulo"><strong>Novo Sub-Tópico</strong></p><br>
                <input name="nome" type="text" class="intup" style="width:100%;" required>
                <input name="nivel" type="number" class="intup" style="width:100%;" required>
                <input type="submit" name="submit" id="submit" class="botoes-salvar" value="Salvar"> 
            </div>
        </form>
        <table width="600px" border="1px" cellpadding="0px" cellspacing="0px">
            <tr class="table-title"> 
                <th class="titulo-branco">Nome do SubTopico</th> 
                <th class="titulo-branco">Opções</th> 

            </tr>
            <?php
            $cont = 0;
            foreach ($subtopicos as $topico) {
                $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';

                $topico['nomeSubtopico'] = htmlspecialchars($topico['nomeSubtopico']);
                echo '<tr align="center" class=' . $class . '>';
                echo "<td>{$topico['nomeSubtopico']}</td>";

                echo "<td><a href='planejamento/novo_sub_topico/{$id}/alterar/{$topico['idSubtopico']}'>Alterar</a> 
				| 
                                                <form method='post' action='planejamento/novo_sub_topico/{$id}'>
							<button name='excluir' onclick='return(confirm(\"Deseja Remover Esse subtópico : {$topico['nomeSubtopico']}\\n Se sim aperte em OK\"))!=true?false:true;' value='{$topico['idSubtopico']}'>Excluir</button></td>
						</form>";
                echo '</tr>';
                $cont++;
            }
            ?>
        </table>
    </div>
    <!--Fim da conteudo box 2-->

    <!--Fim da conteudo box 2-->
</div><!--Fim da box 2-->

</div>