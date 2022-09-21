<div id="boxtudo">
  <?php include('_LATERAL.php'); ?>
  <div id="box2" >
    <div id="conteudo-box2" >
       <p class="titulo"><strong>GERENCIAR DEPARTAMENTOS</strong></p><br> 

      <table width="100%" id="depts" class="hover compact stripe order-column row-border cell-border">
        <thead>
	        <tr class="table-title"> 
	          <th class="titulo-branco">Nome</th>
	          <th class="titulo-branco" width="90px">Opções</th>
	        </tr>
   		</thead>

   		<tbody>
        <?php
          $cont = 0;
          foreach($deps as $dep)
          {
            $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
            echo '<tr class='.$class.'>';
            echo "  <td>{$dep->getNome()}</td>";
            echo "  <td align='center'>";
            echo " 		<a href='empresa/estrutura_gerenciar/editDepartamento/{$dep->getidDep()}'>Editar</a> |";
            echo " 		<a href='empresa/estrutura_gerenciar/excluirDepartamento/{$dep->getidDep()}'>Excluir</a> ";
            echo "	</td>";
            echo '</tr>';
            $cont++;
          }
        ?>
    	</tbody>
      </table>
	  <a href="empresa/estrutura_gerenciar/addDepartamento">
	  	<input type="submit" name="submit" id="submit"  class="botoes" value="Cadastrar Departamento" style="float: right;">
	  </a>


	  <br><br><br><br><br>
      <p class="titulo"><strong>GERENCIAR CARGOS</strong></p><br> 

      <table width="100%" id="cargos" class="hover compact stripe order-column row-border cell-border">
        <thead>
	        <tr class="table-title"> 
	          <th class="titulo-branco">Nome do Cargo</th>
	          <th class="titulo-branco">Nivel</th>
	          <th class="titulo-branco">Departamento</th>
	          <th class="titulo-branco" width="90px">Opcoes</th>
	        </tr>
	    </thead>

	    <tbody>
	        <?php
	          $cont = 0;
	          foreach($cargos as $cargo)
	          {
	            $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
	            echo '<tr class='.$class.'>';
	            echo "  <td>{$cargo->getNomeFuncao()}</td>";
	            echo "  <td align='center'>{$cargo->getNivel()}</td>";
	            echo "  <td>{$cargo->getDepartamento()}</td>";
	            echo "  <td>";
	            echo " 		<a href='empresa/estrutura_gerenciar/editCargo/{$cargo->getidCargo()}'>Editar</a> |";
	            echo " 		<a href='empresa/estrutura_gerenciar/excluirCargo/{$cargo->getidCargo()}'>Excluir</a> ";
	            echo "	</td>";
	            echo '</tr>';
	            $cont++;
	          }
	        ?>
    	</tbody>
      </table>
	  <a href="empresa/estrutura_gerenciar/addCargo">
	  	<input type="submit" name="submit" id="submit"  class="botoes" value="Cadastrar Cargo" style="float: right;">
	  </a>
	  <br><br><br><br><br>
    </div><!--Fim da conteudo box 2-->
  </div><!--Fim da box 2-->
</div>


<script>
$(document).ready(function() {
  $('#depts').dataTable({
    "paging": false, "ordering": false, "info": false, "searching": false
  });

  $('#cargos').dataTable({
    "paging": false, "ordering": false, "info": false, "searching": false
  });  
});
</script>