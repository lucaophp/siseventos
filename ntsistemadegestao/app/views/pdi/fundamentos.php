<div id="boxtudo">
    <div id="box3" ><br>

        <table width="800" border="0" align="center">
            <tbody>
                <tr>
                    <td> 
                        <table width="899" border="0" id="butoes2">
                            <tr>
                                <td width="127" align="right"><p class="titulo"><strong>FUNDAMENTOS</strong></p></td>
                                <td width="762" align="right"><a href="pdi"><img src="public/images/voltar.png" width="117" height="42" alt=""/></a></td>
                            </tr>
                        </table></td>
                </tr>
                <tr>
                    <td>
                        <form action="pdi/fundamentos/<?php echo $pdiURL;?>" method="post">
                            <table width="900px" id="users" class="hover compact stripe order-column row-border cell-border">
                                <thead>
                                    <tr class="table-title">
                                        <th class="titulo-branco">Fundamentos</th>
                                        <th class="titulo-branco">Notas 0 à 10</th>
                                        <th class="titulo-branco">Notas 0 à 10</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php 
                                    $cont=0;
                                    $avaliacaoSupervisor=($avaliacaoSupervisor==1)?"false":"true";
                                    $autoavaliacao=($autoavaliacao==1)?"false":"true";
                                    
                                  ?>
                                  <?php foreach($fundamentos as $fundamento):?>
                                    <?php
                                    

                                    $class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
                                    $dnota=new DNotaFundamento();
                                    $nota=$dnota->getByCond("idPDI=".getParam(2)." AND idFundamento=".$fundamento->getIdFundamento()."");
                                    $nota=isset($nota[0])?$nota[0]:null;
                                    if($nota==null){
                                      $nota1="";
                                      $nota2="";
                                    }else{
                                      $nota1=$nota->getNota1();
                                      $nota2=$nota->getNota2();
                                    }
                                    
                                    //1 
                                    echo '<tr class=' . $class . '>';
                                    echo "  <td title='{$fundamento->getDescricao()}'>".($cont+1)." - ".$fundamento->getNome()."</td>";
                                    echo "  <input type='hidden' name=\"fundamento[$cont][id]\" value='{$fundamento->getIdFundamento()}'></td>";
                                    echo "  <td title='Digite sua nota de 0 a 10 (auto-avaliação)'><input class='intup-numero nota1' type='text' name=\"fundamento[$cont][nota1]\" onclick=\"this.disabled={$autoavaliacao}\" value=\"{$nota1}\">";
                                    echo "  <td title='Digite sua nota de 0 a 10 (avaliação do supervisor)'><input class='intup-numero nota2' type='text' name=\"fundamento[$cont][nota2]\" onclick=\"this.disabled={$avaliacaoSupervisor}\" value=\"{$nota2}\" ></td>";
                                    echo '</tr>';
                                    $cont++;
                                    

                                    
                                    
                                    ?>
                                  <?php endforeach;?>
                                    

                                </tbody>
                                <tr>
                                    <td><input type="submit" name="avaliarPDI" id="avaliarPDI"  class="botoes-salvar" value="Salvar"></td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td><table width="899" border="0" id="butoes">
                            <tr>


                            </tr>
                        </table>

                    </td>
                </tr>

            </tbody>
        </table>
    </div><!--Fim da box 2-->
</div>

<script src="public/js/pdi/fundamento.js">
    
</script>