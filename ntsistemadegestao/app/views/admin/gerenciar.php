<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>GERENCIAR EMPRESA</strong></p><br>
			
			<table width="100%" id="empresas" class="hover compact stripe order-column row-border cell-border">
        	<thead>
			  <tr class="table-title">			    
			    <th class="titulo-branco" width="135">Nome</th>
			    <th class="titulo-branco" width="051">Status</th>
			    <th class="titulo-branco" width="151">Administrador</th>
			    <th class="titulo-branco" width="185">Opções</th>
		      </tr>
		    </thead>

		   	<tbody>              
			  <?php			  
				$cont = 0;
				foreach($empresas as $empresa) //Percorre os cargos (definidos acima)
				{
					$class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
					echo '<tr align="center" class='.$class.'>';					
					echo '	<td>'.$empresa->getNome().'</td>';
					echo '	<td>'.(($empresa->getStatus() == 0) ? 'Desativada' : 'Ativa').'</td>';
					echo '	<td>'.$DEmpresa->getAdmin( $empresa->getidEmpresa() )->getNome();'</td>';
					echo '	<td>';
					echo '	  <table border="0" width="100%"><tr>';
					echo '		<td width="50%" align="center"><a href="admin/gerenciar/'.$empresa->getidEmpresa().'">Gerenciar</a> </td>';
					echo '		<td width="50%" align="center"><a href="admin/gerenciar/changeStatus/'.$empresa->getidEmpresa().'"> '.(($empresa->getStatus() == 0) ? 'Ativar' : 'Desativar').'</a> </td>';
					echo '	  </tr></table>';
					echo '	</td>';
					echo '</tr>';
					$cont++;
				}
			  ?>
			</tbody>
			</table>
			<br>	
			
	  </div><!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>


<script>
$(document).ready(function() {
  $('#empresas').dataTable({
    "language": { "url": "public/js/jquery.dataTables.pt-BR.js" },
    "aoColumnDefs": [ { 'bSortable': false, 'aTargets': [ 3 ] } ],
  });
});
</script>