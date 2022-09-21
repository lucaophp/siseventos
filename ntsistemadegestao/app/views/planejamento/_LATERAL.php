<div id="box1">
	<div id="leftbar-plane">
		<ul>
		<li> <a id="leftbar-considera_inicio" href="planejamento/considera_inicio">Considerações Iniciais </a></li>
		<li> <a id="leftbar-descricao_empresa" href="planejamento/descricao_empresa">Descrição da Empresa </a></li>
		<?php foreach($this->topicos as $value):?>
			<li style="width:100%;clear:both;"> <a id="leftbar-etapa<?php echo $value['idTopico'];?>" href="planejamento/topico/<?php echo $value['idTopico'];?>" ><?php echo $value['nome']?> </a></li>
		<?php endforeach;?>
		<!--<li> <a id="leftbar-etapaI" href="planejamento/etapaI">Etapa I - Análise de Ambiente </a></li>
		<li> <a id="leftbar-etapaII" href="planejamento/etapaII">Etapa II - Estabelecimento da Diretriz Organizacional  </a></li>-->		
		<li> <a id="leftbar-etapaIII" href="planejamento/III_mapa">Mapa Estrategico</a></li>
        <li> <a id="leftbar-etapaIV" href="planejamento/etapaIV">Etapa IV - Implementação do Planejamento Estratégico  </a></li>		
		<li> <a id="leftbar-etapaV" href="planejamento/etapaV">Etapa V - Controle  do Planejamento Estratégico </a></li>
        <li> <a id="leftbar-considera_finais" href="planejamento/considera_finais">Considerações Finais  </a></li>		
		<li> <a id="leftbar-anexos" href="planejamento/anexos">Anexos </a></li>
		<li> <a id="leftbar-addtopico" href="planejamento/novo_topico" style="width:100%;clear:both;"><b>Adicionar Tópico</b> </a></li>

		</ul>
	</div>
</div><!--Fim da div box1--> 