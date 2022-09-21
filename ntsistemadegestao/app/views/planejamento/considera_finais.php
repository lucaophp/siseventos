
<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
        <form action="planejamento/considera_finais" method="post" id="tCampos">
			<div id="conteudo-box2" >
				<p class="titulo"><strong>CONSIDERAÇÕES FINAIS</strong></p><br>
	            <textarea name="texto" class="textarea" style="width:100%"><?php echo (isset($this->dados['consideracoesFinais']))?$this->dados['consideracoesFinais']:""?></textarea><br> 
	            <input type="submit" name="submit" class="botoes-salvar" value="Salvar"> 
			</div>
        </form>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
    
</div>