
<div id="gerenciar">
 
    <div style="min-width: 900px;" >
    <div id="conteudo-box2" >
      <p class="titulo"><strong>GERENCIAR PLANO DE AÇÃO</strong></p><br>
      <table width="100%" id="users" class="hover compact stripe order-column row-border cell-border">
        <thead>
          <tr class="table-title">
            <th class="titulo-branco">ID</th>
            <th class="titulo-branco">Período</th>
            <!--<th class="titulo-branco">Observação</th>-->
            <th class="titulo-branco">Departamento</th>
            <th class="titulo-branco">Responsavel</th>
            <th class="titulo-branco">Última Alteração</th>
            <th class="titulo-branco">Status</th>
            <th class="titulo-branco">Acessar</th>
            <th class="titulo-branco">Excluir</th>
            <th class="titulo-branco">Editar</th>
          </tr>
        </thead>

        <tbody>
        <?php
          $cont = 0;
          foreach($PAs as $pa)
          {
            $responsavel=new DUsuario();
            $responsavel=$responsavel->getById($pa->getIdUsuario());
            $departamento=new DDepartamento();
            $departamento=$departamento->getById($pa->getIdDep());

            $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
            echo '<tr class='.$class.'>';
            echo "  <td>{$pa->getIdPlanoAcao()}</td>";
            echo "  <td>{$pa->getPeriodo()}</td>";
            //echo "  <td>{$pa->getObservacao()}</td>";
            
            echo "  <td>{$departamento->getNome()}</td>";
            echo "  <td>{$responsavel->getNome()}</td>";
            $ultima=date("d/m/Y",strtotime($pa->getUltimaAlteracao()));
            echo "  <td>{$ultima}</td>";
            $status=($pa->getStatus()==0)?"Inativo":"Ativo";
            echo "  <td>{$status}</td>";
            if(getParam(2)=="view-dep"){
              echo "  <td><a href='planoacao/gerenciar/{$pa->getIdPlanoAcao()}/estrategica'>Acessar</a></td>";
            }else{
              echo "  <td><a href='planoacao/gerenciar/{$pa->getIdPlanoAcao()}'>Acessar</a></td>";
            }
            
            echo $podeExcluir?"  <td>
                      <form action=\"planoacao/cadastrar\" method=\"POST\">
                          <input type=\"hidden\" name=\"idPlanoAcao\" value=\"{$pa->getIdPlanoAcao()}\">
                          <input type=\"submit\" name=\"excluirPlano\" value=\"Excluir\" onclick=\"return confirm('Você tem certeza que quer excluir esse plano de ação')==0?false:true;\">
                      </form>
                    </td>":"<td></td>";
            echo $podeEditar?"  <td><button onclick=\"atualiza('{$pa->getIdPlanoAcao()}','{$pa->getIdUsuario()}','{$pa->getPeriodo()}','{$pa->getObservacao()}','{$pa->getStatus()}','{$pa->getIdDep()}');\">Editar</button></td>":"<td></td>";

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
function atualiza(idPlanoAcao,idUsuario,periodo,observacao,status,idDep){
    document.getElementById("idPlanoAcao").value=idPlanoAcao;
    document.getElementById("usuario").value=idUsuario;
    //document.getElementById("obs").value=observacao;
    document.getElementById("periodo").value=periodo;
    var y=document.createElement("option");
    y.text=(status==0)?"Desativo":"Ativo";
    y.value=status;
    y.selected=true;
    document.getElementById("status").add(y,0);
    document.getElementById("departamento").value=idDep;

}
$(document).ready(function() {
  $('#users').dataTable({
    "language": { "url": "public/js/jquery.dataTables.pt-BR.js" },
  });
  
});

</script>
