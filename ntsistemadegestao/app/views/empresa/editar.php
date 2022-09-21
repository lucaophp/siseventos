<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<p class="titulo"><strong>EDITAR EMPRESA</strong></p><br>
			<form method="POST" enctype="multipart/form-data" id="formcadastro">
				<table width="600" border="0px">
				  <tr>			
					<td width="150"><label class="titulo"><strong>Nome da Empresa</strong></label></td>
					<td><input class="intup" type="text" name="nome" id="nome" value="<?php echo $empresa->getNome();?>"></td>
				  </tr><tr>
					<td width="150"><label class="titulo"><strong>Telefone</strong></label></td>
					<td><input class="intup" type="text" name="telefone" id="telefone" value="<?php echo $empresa->getTelefone();?>"></td>
				  </tr><tr>				  
					<td width="150"><label class="titulo"><strong>Logradouro</strong></label></td>
					<td><input class="intup" type="text" name="rua" id="rua" value="<?php echo $empresa->getRua();?>"></td>
				  </tr><tr>
					<td width="150"><label class="titulo"><strong>Bairro</strong></label></td>
					<td><input class="intup" type="text" name="bairro" id="bairro" value="<?php echo $empresa->getBairro();?>"></td>
				  </tr><tr>
					<td width="150"><label class="titulo"><strong>Cidade</strong></label></td>
					<td><input class="intup" type="text" name="cidade" id="cidade" value="<?php echo $empresa->getCidade();?>"></td>
				  </tr><tr>
					<td width="150"><label class="titulo"><strong>Estado</strong></label></td>
					<td><input class="intup" type="text" name="estado" id="estado" value="<?php echo $empresa->getEstado();?>"></td>
				  </tr><tr>
					<td width="150"><label class="titulo"><strong>País</strong></label></td>
					<td><input class="intup" type="text" name="pais" id="pais" value="<?php echo $empresa->getPais();?>"></td>
				  </tr>
				</table><br>

				<table width="600" border="0">
				  <tr>
					<td width="150"><label for="historico" class="titulo"><strong>Logo da Empresa</strong><br><br><br><br><br></label></td>
					<td>
						<div class="textarea" id="divImagePreview" style="width: 350px; height: 100px">
							<img id="imagePreview" src="public/images/business/<?php echo $empresa->getLogo(); ?>" class="logoempresa"/> 
						</div> 
						<input type="file" accept="image/*" name="logo" onchange="showMyImage(this);">
						<h5>Tamanho Maximo: 1MB - Resolução: 350x100px</h5><br>
					</td> 
				  </tr>						
				</table><br>	

				<table width="576" border="0">
				  <tr>
					<td width="479">&nbsp;</td>
					<input type="hidden" id="status" name="status" value="<?php echo $empresa->getStatus(); ?>">
					<td width="76"><input type="submit" name="submit" id="submit"  class="botoes" value="Atualizar Empresa"></td>
				  </tr>
				</table>				
			</form>
		</div>
		<!--Fim da conteudo box 2-->
	</div><!--Fim da box 2-->
</div>

<script type="text/javascript">

function showMyImage(fileInput) {
    var files = fileInput.files;
    for (var i = 0; i < files.length; i++) {           
        var file = files[i];
        var imageType = /image.*/;     
        if (!file.type.match(imageType)) {
            continue;
        }           
        var img=document.getElementById("imagePreview");            
        img.file = file;    
        var reader = new FileReader();
        reader.onload = (function(aImg) { 
            return function(e) { 
                aImg.src = e.target.result; 
            }; 
        })(img);
        reader.readAsDataURL(file);
    }    
}

// Inicia o validador ao carregar a página
$(function() {
    // valida o formulário
    $('#formcadastro').validate({
	   	errorPlacement: function (error, element) {
	        $(element).removeClass('form-valid');
	        $(element).addClass("form-error");
	    },
	    success: function (label, element) {
	    	$(element).removeClass('form-error');
	        $(element).addClass('form-valid');
	    },
        rules: {
            nome: {required: true, minlength: 2},
        },
    });
});
</script>