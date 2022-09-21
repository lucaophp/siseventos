<div id="boxtudo">
	<?php include('app/Views/usuario/_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<form method="POST" enctype="multipart/form-data" id="formcadastro">
				<p class="titulo"><strong>EDITAR PERFIL</strong></p><br>	
				<table width="600" border="0px">
				  <tr>			
					<td width="150" height="39" align="right"><label class="titulo"><strong>Senha Atual: </strong></label></td>
					<td><input class="intup" type="password" name="atual" id="atual" value=""></td>
				  </tr><tr>
					<td width="150" height="39" align="right"><label class="titulo"><strong>Nova Senha: </strong></label></td>
					<td><input class="intup" type="password" name="pass" id="pass" value=""</td>
				  </tr><tr>
					<td width="150" height="39" align="right"><label class="titulo"><strong>Repita Senha: </strong></label></td>
					<td><input class="intup" type="password" name="rpass" id="rpass" value=""></td>
				  </tr><tr>			  
				</table>	
			
				<table width="576" border="0">
				  <tr>
					<td width="479">&nbsp;</td>
					<td width="76"><input type="submit" name="submit" id="submit"  class="botoes" value="Alterar Senha"></td>
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
            pass: {required: true, minlength: 4, maxlength: 16},
            rpass: {required: true, minlength: 4, maxlength: 16, equalTo : "#pass"},
        },
    });
});
</script>