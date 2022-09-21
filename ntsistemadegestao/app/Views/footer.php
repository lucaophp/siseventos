	    <div id="clean"><br><br><br></div>
	    
		<div id="rodape">
			<div id="rodape-central">
				<div id="rodape-texto">
					<?php copyright('2014') ?> © Falcão Gestão Estratégica - Todos os direitos reservados.
				</div> 
				<div id="rodape-infoalto">
					<a href="http://www.infoalto.com.br/" target="_blank"> <img src="public/images/infoalto.png" class="rodape-infoalto-img"/> </a>
				</div>
	        </div>
	    </div><!--Fim da id rodape-->
	</div> <!-- Fim da div Geral -->
	<script>
		$("#header-<?php echo getParam(0); ?>").addClass("active");
		$("#leftbar-<?php echo getParam(1); ?>").addClass("active");
	</script>
</body>
</html>

<?php
function copyright($year = 'auto')
{
   if(intval($year) == 'auto') $year = date('Y');
   if(intval($year) == date('Y')) echo intval($year);
   if(intval($year) < date('Y')) echo intval($year) . ' - ' . date('Y');
   if(intval($year) > date('Y')) echo date('Y');
}?>
<!--<script type="text/javascript" src="public/js/nicEditor.js"></script>
<script>
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>-->

