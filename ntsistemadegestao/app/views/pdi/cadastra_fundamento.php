<div id="boxtudo">
	<div id="box3" >
	
	
    <p class="titulo"><strong>GERENCIAR FUNDAMENTOS</strong></p><br>

		<table width="100%" id="depts" class="hover compact stripe order-column row-border cell-border">
			
			<thead>
				<tr class="table-title">
					<th class="titulo-branco" width="50px">Nº</th>
					<th class="titulo-branco">Fundamento</th>
					<th class="titulo-branco">Descrição</th>
					<th class="titulo-branco">Seq.</th>
					<th class="titulo-branco" width="100px">Opções</th>
				</tr>
		</thead>

		<tbody>

			<?php
				$cont = 0;
				foreach($fundamentos as $fundamento)
				{
					$class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
					echo '<tr class='.$class.'>';
					echo "	<td align='center'>" . ($cont+1) . "</td>";
					//echo "	<td>{$fund->getFundamento()}</td>";
					echo "  <td>{$fundamento->getNome()}</td>";
					echo "  <td>{$fundamento->getDescricao()}</td>";
					echo "  <td>{$fundamento->getNivel()}</td>";
					echo "  <td align='center'>";
					echo " 		<a href=\"javascript:void()\" onclick=\"atualiza({$fundamento->getIdFundamento()},{$fundamento->getIdEmpresa()},'{$fundamento->getNome()}','{$fundamento->getDescricao()}',{$fundamento->getNivel()})\">Editar</a> |";
					echo " 		<form action=\"pdi\" method=\"POST\"> 
									<input type=\"hidden\" name=\"idFundamento\" value=\"{$fundamento->getIdFundamento()}\">
									<input type=\"submit\" name=\"excluiFundamento\" value=\"Excluir\" onclick=\"return confirm('Você tem certeza que quer excluir esse fundamento')==0?false:true;\">
								</form>
								";

					echo "	</td>";
					echo '</tr>';
					$cont++;
				}
			?>
		</tbody>
		</table>

		<br><br>
		<table width="100%" id="depts" class="hover compact stripe order-column row-border cell-border">
			<tr>
	           <td width="457" align="right"><a href="pdi/fundamentos/<?php echo $this->pdiUser->getIdPDI()?>">Auto-avaliar  </a> |   <a href="pdi/tabela_pdi">Ver tabela PDI</a></td>
	    	</tr>
		</table>
		<p class="titulo"><strong>ADICIONAR NOVO FUNDAMENTO OU ATUALIZAR FUNDAMENTO</strong></p><br>

		<form method="POST" enctype="multipart/form-data" id="formcadastro" action="pdi">
			<input type="hidden" name="idFundamento" id="idFundamento" value="NOVO">
			<input type="hidden" name="idEmpresa" id="idEmpresa" value="<?php echo $idEmpresa?>">

			<label class="titulo"><strong>Fundamento: </strong></label>
			<br>
			<input class="intup" type="text" name="nome" id="nome">
			<br><br>
			<label class="titulo"><strong>Descrição: </strong></label>
			<br>
			<input class="intup" type="text" name="descricao" id="descricao">
			<br><br>
			<label class="titulo"><strong>Sequência: </strong></label>
			<br>
			<input class="intup" type="text" name="nivel" id="nivel">
			<br><br>
			<input type="submit" name="salvaFundamento" id="submit"  class="botoes" value="Salvar">
		</form>
		

	</div>
</div>
<script type="text/javascript" src="public/js/pdi/cadastroFundamento.js"></script>
