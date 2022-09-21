<div id="boxtudo">
  <?php include('_LATERAL.php'); ?>
  <div id="box2" >
    <div id="conteudo-box2" >
      <p class="titulo"><strong>GERENCIAR USUÁRIOS</strong></p><br> 
      <table width="100%" id="users" class="hover compact stripe order-column row-border cell-border">
        <thead>
          <tr class="table-title"> 
            <th class="titulo-branco">Nome</th> 
            <th class="titulo-branco">Nivel<br>Hierárquico</th>           
            <th class="titulo-branco">Cargo / Função</th> 
            <th class="titulo-branco">Departamento / Setor</th>                     
            <th class="titulo-branco" width="90px">Opções</th>
          </tr>
        </thead>

        <tbody>
        <?php
          $cont = 0;
          foreach($usuarios as $usuario)
          {
            $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
            echo '<tr class='.$class.'>';
            echo "  <td>{$usuario['nome']}</td>";
            echo "  <td>{$usuario['nivel']}</td>";
            echo "  <td>{$usuario['cargo']}</td>";
            echo "  <td>{$usuario['dep']}</td>";
            echo "  <td><a href='empresa/estrutura_usuarios/{$usuario['ID']}'>Editar</a> |";
            echo "      <a href='empresa/estrutura_usuarios/delete/{$usuario['ID']}'>Excluir</a></td>";
            echo '</tr>';
            $cont++;
          }
        ?>
        </tbody>
      </table>
    </div><!--Fim da conteudo box 2-->
  </div><!--Fim da box 2-->
</div>

<script>
$(document).ready(function() {
  $('#users').dataTable({
    "language": { "url": "public/js/jquery.dataTables.pt-BR.js" },
    "aoColumnDefs": [ { 'bSortable': false, 'aTargets': [ 4 ] } ],
    "order": [[ 1, "asc" ]],
    "bAutoWidth": false
  });
});
</script>