<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>ESTRUTURA ORGANIZACIONAL</strong></p><br>	
			<table border="0px" id="estrutura" width="100%"  class="compact order-column">
			<?php 
			$maxnivel = $dempresa->getMaxNivel( $empresa->getidEmpresa() );
			$i = 0;		
			
			echo '<thead><tr class="table-title">';
			echo '<th class="titulo-branco"> Departamento </th>';
			for($i = 1; $i <= $maxnivel; $i++)
			{
				echo "<th class='titulo-branco'> Nivel {$i} </th>";
			}
			echo '</tr></thead>';
			
			
			echo '<tbody>';
			foreach($deps as $dep) //Pe
			{
				echo '<tr>';
				echo '<td>' . $dep->getNome() . '</td>';										
				for($i = 1; $i <= $maxnivel; $i++)
				{
					echo '<td>';				
					foreach($cargos as $cargo) 
					{	
						if($cargo->getidDep() == $dep->getidDep())
						{					
							if($cargo->getNivel() ==  $i)
								//echo $cargo->getNomeFuncao();
								echo '<table width="100%" height="100%" border="1px" cellspacing="0px" cellpadding="0px"><tr><td>' . $cargo->getNomeFuncao() . '</td></tr></table>';
						}
					}
					echo '</td>';
				}
				echo '</tr>';
			}
			echo '</tbody>';
			
			/*
			echo '<tbody>';
			foreach($deps as $dep) //Pe
			{
				echo '<tr>';
				//echo '<td>' . $dep->getNome() . '</td>';
				foreach($cargos as $cargo) 
				{			
					if($cargo->getidDep() == $dep->getidDep())
					{				
						for($i = 1; $i <= $maxnivel; $i++)
						{
							echo '<td>' . $i;
							
							if($cargo->getNivel() ==  $i)
								echo $cargo->getNomeFuncao();
								
							echo '</td>';
						}
					}
				}
				echo '</tr>';
			}
			echo '</tbody>';
			*/
			
			/*
			
			TABLE
			TR = Dep
			TD = Cargo
			
			foreach($deps as $dep)
			{
				//echo "<optgroup label='{$dep->getNome()}'>";
				foreach($cargos as $cargo) {
					//if($cargo->getidDep() == $dep->getidDep())
						//echo "<option value='{$cargo->getidCargo()}''> {$cargo->getNomeFuncao()} </option>";
				}
			}
			*/
			?>
			</table>
			<br>
		</div><!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>

<script>
$(document).ready(function() {
  	var table = $('#estrutura').dataTable({
    	"language": { "url": "public/js/jquery.dataTables.pt-BR.js" },
		"paging": false, "ordering": false, "info": false, "searching": false,
      	"iLeftColumns": 0,
  	});
	//new $.fn.dataTable.FixedColumns( table, {left: true} );  	
	new $.fn.dataTable.FixedHeader( table, {left: false} );	
});
</script>