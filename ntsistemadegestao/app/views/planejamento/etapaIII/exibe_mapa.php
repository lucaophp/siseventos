<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Mapa Estrategico</title>
		<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
		
		<link href="../public/css/jquery.dataTables.css" type="text/css" rel="stylesheet">	
		
		<!-- Javascript--> 
		<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.1.min.js" ></script>
		<script type="text/javascript" src="../public/js/jquery.dataTables.min.js"></script>
	</head>
	<body>
		<h2>Estratégia de Redução Despesas</h2>
		<table class="table table-striped custab" id="tabEst1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tipo de Estrategia</th>
					<th>Estrategia</th>
				</tr>
			</thead>
			
			<tbody>
				<?php foreach($estrategias as $id=>$est):?>
					<?php if($est->getClassificacao()=="Estrategia Redução de Dispesas"):?>
						<tr>
							<td><?php echo $id; ?> </td>
							<td><?php echo $est->getTipo();?></td>
							<td><?php echo $est->getEstrategia();?></td>							
						</tr>
					<?php endif;?>
				<?php endforeach;?>
			</tbody>
		</table>
		<hr>
		
		<br><br>
		<h2>Estratégias Macro - grande abrangência</h2>
		<table class="table table-striped custab" id="tabEst2">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tipo de Estrategia</th>
					<th>Estrategia</th>
				</tr>
			</thead>
			
			<tbody>
				<?php foreach($estrategias as $id=>$est):?>
					<?php if($est->getClassificacao()=="Estrategia Macro"):?>
						<tr>
							<td><?php echo $id; ?></td>
							<td><?php echo $est->getTipo();?></td>
							<td><?php echo $est->getEstrategia();?></td>							
						</tr>
					<?php endif;?>
				<?php endforeach;?>
			</tbody>
		</table>
		<hr>
		
		<br><br>
		<h2>Estratégias Alternativas - genéricas</h2>
		<table class="table table-striped custab" id="tabEst3">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tipo de Estrategia</th>
					<th>Estrategia</th>
				</tr>
			</thead>
			
			<tbody>
				<?php foreach($estrategias as $id=>$est):?>
					<?php if($est->getClassificacao()=="Estrategia Alternativa"):?>
						<tr>
							<td><?php echo $id; ?></td>
							<td><?php echo $est->getTipo();?></td>
							<td><?php echo $est->getEstrategia();?></td>							
						</tr>
					<?php endif;?>
				<?php endforeach;?>
			</tbody>
		</table>
		<br>
		<a href="#" onclick="window.close()">Sair do Mapa Estrategico</a>

	</body>
</html>

<script>
$(document).ready(function() {
	$('#tabEst1').dataTable({"language": { "url": "../public/js/jquery.dataTables.pt-BR.js" }});
	$('#tabEst2').dataTable({"language": { "url": "../public/js/jquery.dataTables.pt-BR.js" }});
	$('#tabEst3').dataTable({"language": { "url": "../public/js/jquery.dataTables.pt-BR.js" }});
});
</script>