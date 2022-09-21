<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" style="padding-top:20px;" >
		<p class="titulo"><strong><?php echo $topico->getNome();?></strong></p><br>
		<table width="77%" border="0px" id="tCampos" >
			  <tr>
			    <td align="left"><ol>
			      <?php foreach($this->dados as $value):?>
			        	
			          <li><a href="planejamento/subtopico/<?php echo $value->getidSubtopico();?>"><?php echo $value->getNomeSubtopico();?></a></li>
			       <?php endforeach;?>
			    
			      </ol></td>
		      </tr>
		  </table><br>
		  <button onclick="window.location.href='planejamento/novo_sub_topico/<?php echo $id;?>'" class="submit" id="botoes-salvar">Adicionar Subtopico</button>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
    
</div>