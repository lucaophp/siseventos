<div id="boxtudo">
    <?php include('_LATERAL.php'); ?>

    <div id="box2" >
        <div id="conteudo-box2" >
            <p class="titulo"><strong> CADASTRAR PLANO DE AÇÃO </strong></p><br>
            <form name="form" method="POST" action="planoacao/cadastrar">
                <table class="titulo" width="350" border="0">
                    <tr>
                        <td>Usuario</td>
                        <td>
                            <select class="intup" name="usuario" id="usuario">
                                <?php foreach($users as $u):?>
                                <option value="<?php echo $u->getIdUsuario();?>"><?php echo $u->getNome()."";?></option>
                                <?php endforeach;?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Departamento</td>
                        <td>
                            <select class="intup" name="departamento" id="departamento">
                                <?php foreach($dptos as $d):?>
                                <option value="<?php echo $d->getIdDep();?>"><?php echo $d->getNome();?></option>
                                <?php endforeach;?>

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>
                            <select class="intup" id="status" name="status">
                                <option value=1>Ativo</option>
                                <option value=0>Desativo</option>

                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Período</td>
                        <td>
                            <select class="intup" id="periodo" name="periodo">
                            <?php $ano=(int)date("Y")?>
                            <?php for($i=0;$i<5;$i++):?>

                                <option value="<?php echo $ano;?> - 1">1º Período - <?php echo $ano;?></option>
                                <option value="<?php echo $ano;?> - 2">2º Período - <?php echo $ano;?></option>
                            <?php $ano++;?>
                            <?php endfor;?>

                            </select>
                        </td>
                    </tr>
                    <!--<tr>
                        <td>Observações</td>
                        <td>
                            <textarea class="intup" style="height: 100px;" id="obs" name="obs"></textarea>
                        </td>
                        <td>
                            
                        </td>
                    </tr>-->
                    <tr>
                        <td>
                             <input id="idPlanoAcao" type="hidden" name="idPlanoAcao" value="NOVO">
                             <td width="76"><input type="submit" name="salvarPlano" id="salvarPlano"  class="botoes" value="SALVAR"></td>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <!--Fim da conteudo box 2-->
    </div><!--Fim da box 2-->
</div>
