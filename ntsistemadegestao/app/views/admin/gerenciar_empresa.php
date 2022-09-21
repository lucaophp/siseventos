<div id="boxtudo">
	<?php include('_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<form method="POST" enctype="multipart/form-data" id="formcadastro">
				<p class="titulo"><strong>GERENCIAR EMPRESA</strong></p><br>	
				<table width="600" border="0px">
				  <tr>			
					<td width="150"><label class="titulo"><strong>Nome da Empresa</strong></label></td>
					<td><input class="intup" type="text" name="nome" id="nome" value="<?php echo $empresa->getNome();?>"></td>
				  </tr><tr>
					<td width="150"><label class="titulo"><strong>CNPJ</strong></label></td>
					<td><input class="intup" type="text" name="CNPJ" id="CNPJ" value="<?php echo $empresa->getCNPJ()?>"></td>
				  </tr>
				</table><br>

				<p class="titulo"><strong>ADMINISTRADOR DA EMPRESA</strong></p><br>
				<table width="600" border="0px">
				  <tr>			
					<td width="150"><label for="senha" class="titulo"><strong>Nome</strong></label></td>
					<td><input class="intup" type="text" name="adminNome" id="adminNome" value="<?php echo $adminEmpresa->getNome(); ?>"></td>
				  </tr><tr>
					<td width="150"><label for="email" class="titulo"><strong>E-mail</strong></label></td>
					<td><input class="intup" type="text" name="adminEmail" id="adminEmail" value="<?php echo $adminEmpresa->getEmail(); ?>"></td>
				  </tr><tr>
					<td width="150"><label for="email" class="titulo"><strong>Senha*</strong></label></td>
					<td><input class="intup" type="text" name="adminSenha" id="adminSenha"></td>					
				  </tr>
				</table><br>
				* Deixe em branco para não alterar a senha
			
				<br><br>
				<table width="576" border="0">
				  <tr>
					<td width="479">&nbsp;</td>
					<input type="hidden" id="status" name="status" value="<?php echo $empresa->getStatus(); ?>">
					<td width="76"><input type="submit" name="submit" id="submit"  class="botoes" value="Atualizar Empresa"></td>
				  </tr>
				</table>
			</form>
        <br><br><br>
	  </div> <!--Fim da conteudo box 2-->
	</div> <!--Fim da box 2-->
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

        // define regras para os campos
        rules: {
            nome: {required: true, minlength: 2},
            CNPJ: {required: true, cnpj: true },
            adminEmail: {required: true, email: true},
            adminSenha: {required: false, minlength: 3},
            adminNome: {required: true, minlength: 3},
        },
    });
});
</script>