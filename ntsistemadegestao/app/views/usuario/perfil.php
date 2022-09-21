<div id="boxtudo">
	<?php include('app/Views/usuario/_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<form method="POST" enctype="multipart/form-data" id="formcadastro">
				<p class="titulo"><strong>EDITAR PERFIL</strong></p><br>	
				<table width="600" border="0px">
				  <tr>			
					<td width="150" height="39" align="right"><label class="titulo"><strong>Nome: </strong></label></td>
					<td><input class="intup" type="text" name="nome" id="nome" value="<?php echo $usuario->getNome(); ?>"></td>
				  </tr><tr>
				</table>
				<?php /*
					<td width="150" height="39" align="right"><label class="titulo"><strong>Email: </strong></label></td>
					<td><input class="intup" type="text" name="email" id="email" value="<?php echo $usuario->getEmail(); ?>" disabled></td>
				  </tr><tr>
					<td width="150" height="39" align="right"><label class="titulo"><strong>Departamento: </strong></label></td>
					<td><input class="intup" type="text" value="<?php echo $usuario->getDepartamento(); ?>" disabled></td>
				  </tr><tr>	
					<td width="150" height="39" align="right"><label class="titulo"><strong>Cargo: </strong></label></td>
					<td><input class="intup" type="text" value="<?php echo $usuario->getCargo(); ?>" disabled></td>
				  </tr><tr>					  
				</table>
				*/
				?>	

				<table width="600" border="0">
				  <tr>
					<td width="150"><label for="historico" class="titulo"><strong>Imagem de Perfil: </strong><br><br><br><br><br></label></td>
					<td>
						<div class="textarea" id="divImagePreview" style="width: 170px; height: 160px; text-align: center;">
							<img id="imagePreview" class="imgPerfil" src="public/images/users/<?php echo $usuario->getImagem(); ?>"/> 
						</div> 
						<input type="file" accept="image/*" name="perfil" id="perfil" onchange="showMyImage(this);">
						<h5>Tamanho Maximo: 1MB</h5><br>
					</td> 
				  </tr>
				</table><br><br>
			
				<table width="576" border="0">
				  <tr>
					<td width="479">&nbsp;</td>
					<td width="76"><input type="submit" name="submit" id="submit"  class="botoes" value="Atualizar Perfil"></td>
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
            nome: {required: true, minlength: 2}
        },
    });
});
</script>