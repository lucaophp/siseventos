
        
		
	<link href="public/css/jquery.dataTables.css" type="text/css" rel="stylesheet">
    
    
        <table class="table table-striped custab" id="tabEst1">
            <tr>
                <th>Classificação</th>
                <th>Tipo</th>
                <th>Estrategia</th>
            </tr>
            <?php foreach ($estrategias as $estrategia):?>
            <tr>
                <td><?php echo $estrategia->getClassificacao(); ?></td>
                <td><?php echo $estrategia->getTipo(); ?></td>
                <td><?php echo $estrategia->getEstrategia(); ?></td>
                <td><button onclick="session_start(<?php echo $estrategia->getidEstrategia(); ?>);return false;">Escolher Estrategia</button></td>
            </tr>
            <?php endforeach;?>
        </table>


