<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>

	<div id="box2" >
        <form action="planejamento/considera_inicio" method="post" id="tCampos">
			<div id="conteudo-box2" >
				<p class="titulo"><strong>CONSIDERAÇÕES INICIAIS</strong></p><br>
	            <textarea name="texto" class="textarea" style="width:100%;"><?php echo (isset($this->dados['consideracoesIniciais']))?$this->dados['consideracoesIniciais']:""?></textarea><br> 
	            <input type="submit" name="submit" id="submit" class="botoes-salvar" value="Salvar"> 
			</div>
        </form>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
    
</div>