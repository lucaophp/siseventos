<div id="gerenciar">
	
	<div>
		<div id="conteudo-box2" >
			<p class="titulo"><strong>GERENCIAR INDICADOR DE DESEMPENHO</strong></p><br>
			<table width="100%" id="users" class="hover compact stripe order-column row-border cell-border">
				<thead>
					<tr class="table-title">
						<th class="titulo-branco">Departamento/ Setor</th>
						<th class="titulo-branco">Nome</th>
						<th class="titulo-branco">Cargo</th>
						<th class="titulo-branco">Critério de Gestão</th><th class="titulo-branco">Indicador</th>
						<th class="titulo-branco">Estrátegia</th>
						<th class="titulo-branco">Periodicidade Indicador</th>
						<th class="titulo-branco">Meta</th>
						<th class="titulo-branco">Resultado Obtido</th>
						<th class="titulo-branco">Excluir</th>
						<th class="titulo-branco">Editar</th>

					</tr>
				</thead>

				<tbody>
				<?php

					$cont = 0;
					foreach($indicadores as $indicador)
					{
						$dcargo=new DCargo();
						$cargo=$dcargo->getById($indicador->getIdCargo());
						$ddep=new DDepartamento();
						$dep=$ddep->getById($indicador->getIdDep());
						if($indicador->getTipoIndicador()=="Estratégico"){
							$destrategia=new DEstrategia();
							$estrategia=$destrategia->getById($indicador->getIdEstrategia());

						}else{
							$estrategia=new Estrategia();
							$estrategia->setEstrategia("--");
						}
						

						$class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
						echo '<tr class='.$class.'>';
						echo "  <td>{$dep->getNome()}</td>";
						echo "  <td>{$indicador->getNome()}</td>";
						echo "  <td>{$cargo->getNomeFuncao()}</td>";
						echo "  <td>{$indicador->getCriterioGestao()}</td>";
						echo "  <td>{$indicador->getTipoIndicador()}</td>";
						echo "  <td>{$estrategia->getEstrategia()}</td>";
						echo "  <td>{$indicador->getPeriodicidade()}</td>";
						echo "  <td>{$indicador->getMeta()}</td>";
						echo "  <td>{$indicador->getResultadoObtido()}</td>";
						echo "  <td>
			                      <form action=\"indicador/cadastrar\" method=\"POST\">
			                          <input type=\"hidden\" name=\"idIndicador\" value=\"{$indicador->getIdIndicador()}\">
			                          <input type=\"submit\" name=\"excluirIndicador\" value=\"Excluir\" onclick=\"return confirm('Você tem certeza que quer excluir esse indicador')==0?false:true;\">
			                      </form>
		                    	</td>";
		                echo "  <td>
		                			<a href=\"javascript:sinalizar();\" onclick=\"atualiza({$indicador->getIdIndicador()},{$indicador->getIdDep()},'{$indicador->getIdCargo()}','{$indicador->getNome()}','{$indicador->getTipoIndicador()}','{$indicador->getCriterioGestao()}','{$indicador->getMeta()}','{$indicador->getResultadoObtido()}','{$indicador->getPeriodicidade()}','{$indicador->getIdEstrategia()}');document.body.scrollTop = document.documentElement.scrollTop = 0;\">
		                			 Editar
		                			</a>
		                		</td>";
						echo '</tr>';
			
						$cont++;
					}
				?>
				</tbody>
			</table><br>
			<!--<table width="700" border="0">
				<tbody>
					<tr>
						<td width="459"><input type="submit" name="add-indicador" class="botoes-salvar" value="Adicionar Indicador"></td>
						<td width="231"><input type="submit" name="gerar-relatorio" class="botoes-salvar" value="Gerar Relatório"></td>
					</tr>
				</tbody>
			</table>-->
		</div><!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>

<script>
$(document).ready(function() {
  $('#users').dataTable({
    "language": { "url": "public/js/jquery.dataTables.pt-BR.js" },
  });
});
function atualiza(idIndicador,idDep,idCargo,nome,tipoIndicador,criterioGestao,meta,resultadoObtido,periodicidade,idEstrategia){
	document.getElementById("idIndicador").value=idIndicador;
	document.getElementById("departamento").value=idDep;
	document.getElementById("cargo").value=idCargo;
	document.getElementById("nome").value=nome;
	document.getElementById("criterioGestao").value=criterioGestao;
	document.getElementById("indicador").value=tipoIndicador;
	//alert(document.getElementById("indicador").value);
	document.getElementById("meta").value=meta;
	document.getElementById("resultado").value=resultadoObtido;
	document.getElementById("periodicidade").value=periodicidade;
	document.getElementById("estrategia").value=idEstrategia;


}
</script>
