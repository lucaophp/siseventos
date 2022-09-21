<div id="boxtudo3">
    <div id="box3" ><table width="900px" border="0">
            <tbody>
                <tr>
                    <td width="899px" align="left"><p class="titulo"><strong>PLANO DE DESENVOLVIMENTO INDIVIDUAL</strong></p></td>
                    <td width="148" align="right"><a href="pdi"><img src="public/images/voltar.png" width="117" height="42" alt=""/></a></td>
                </tr>
            </tbody>
        </table>


        <table width="100%" id="users" class="hover compact stripe order-column row-border cell-border">
            <thead>
                <tr class="table-title"> 
                    <th class="titulo-branco">Nivel<br>Hierárquico</th> 
                    <th class="titulo-branco">Departamento / Setor</th>           
                    <th class="titulo-branco">Nome</th> 
                    <th class="titulo-branco">Função</th>            
                    <th class="titulo-branco">Objetivos e Metas</th> 
                    <th class="titulo-branco">Média<br>auto avaliação</th>  
                    <th class="titulo-branco">Média<br>plano de Ação</th>                       
                    <th class="titulo-branco" width="90px">Opções</th>
                </tr>
            </thead>

            <tbody>
            <?php $cont = 0;?>
            <?php foreach($subordinados as $subordinado):?>
                <?php
                $dnf=new DNotaFundamento();
                $media1=$dnf->getMediaAutoAvaliacao($subordinado["pdi"]->getIdPDI());
                $media2=$dnf->getMediaSupervisor($subordinado["pdi"]->getIdPDI());
                $podeAvaliar=$subordinado["avaliacaoSupervisor"];
                $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
                echo '<tr class=' . $class . '>';
                echo "  <td>{$subordinado["cargo"]->getNivel()}</td>";
                echo "  <td>{$subordinado["dep"]->getNome()}</td>";
                echo "  <td>{$subordinado["user"]->getNome()}</td>";
                echo "  <td>{$subordinado["cargo"]->getNomeFuncao()}</td>";
                echo "  <td>{$subordinado["pdi"]->getObjetivoMeta()}</td>";
                echo "  <td>{$media1}</td>";
                echo "  <td>{$media2}</td>";
                echo $podeAvaliar?"  <td><a href='pdi/fundamentos/{$subordinado["pdi"]->getIdPDI()}'>Avaliar</td>":"<td></td>";
                echo '</tr>';


                $cont++;
                ?>
            <?php endforeach;?>
            </tbody>
        </table>
    </div><!--Fim da box 2-->
</div>

<script>
    $(document).ready(function() {
        $('#users').dataTable({
            "language": {"url": "public/js/jquery.dataTables.pt-BR.js"},
            "aoColumnDefs": [{'bSortable': false, 'aTargets': [4]}],
            "order": [[1, "asc"]],
            "bAutoWidth": false
        });
    });
</script>