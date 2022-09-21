<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>ETAPA IV - IMPLEMENTAÇÃO DO PLANEJAMENTO ESTRATÉGICO</strong></p>
			<br><br>
			<table width="80%" border="0px" id="tCampos" name="tCampos">
			  
			  <tr>
			    <td><textarea name="textarea" class="textarea" cols="80" rows="6" id="textarea"></textarea></td>
		      </tr>
			  <tr>
			    <td align="center"><input type="submit" name="submit3" id="submit3"  class="botoes-salvar" value="Salvar"></td>
		      </tr>
			 
		  </table><br><br>
          <p class="titulo"><strong>PLANO DE AÇÃO -  AÇÕES ESTRATÉGICAS</strong></p>
			<table width="80%" border="0px" id="tCampos2" name="tCampos">
			  <tr>
			    <td>
			  <?php foreach ($periodos as $periodo) :?>
			    <table width="500" border="0">
			      <tr>
			        <td>&nbsp;</td>
		          </tr>
			      <tr>
			        <td><strong>Período <?php echo $periodo["periodo"];?></strong></td>
		          </tr>
		          <?php foreach($departamentos as $departamento):?>
			      <tr>
			        <td>Plano de Ação - <?php echo $departamento->getNome();?> <a href="planoacao/cadastrar/view-dep/<?php echo $departamento->getIdDep();?>/<?php echo base64_encode($periodo["periodo"])?>">acessar</a></td>
			        
		          </tr>
		      	  <?php endforeach;?>
			      
			      <tr>
			        <td align="center"><p>&nbsp;
			          </p>
			          <table width="257" border="0" align="center">
			            <tr>
			              <td width="289" align="right"><input type="submit" name="submit" id="submit"  class="botoes-salvar" value="Visualizar todos os Planos"></td>
		                </tr>
		              </table>
		            <p>&nbsp;</p></td>
		          </tr>
			      </table>
			  <?php endforeach;?>
		      </tr>
		  </table>
			<p class="titulo">&nbsp;</p>
			<br>
            
	  </div>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>