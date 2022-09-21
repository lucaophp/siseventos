<div id="boxtudo">
	<?php include('app/Views/empresa/_LATERAL.php'); ?>
	<div id="box2" >
		<div id="conteudo-box2" >
			<form method="POST" enctype="multipart/form-data" id="formcadastro">
				<p class="titulo"><strong>CADASTRAR USUÁRIO</strong></p><br>	
				<table width="600" border="0px">
				  <tr>			
					<td width="150" height="39" align="right"><label class="titulo"><strong>Nome: </strong></label></td>
					<td><input class="intup" type="text" name="nome" id="nome"></td>
				  </tr><tr>
					<td width="150" height="39" align="right"><label class="titulo"><strong>Email: </strong></label></td>
					<td><input class="intup" type="text" name="email" id="email"></td>
				  </tr><tr>			
					<td width="150" height="39" align="right"><label for="senha" class="titulo"><strong>Senha: </strong></label></td>
					<td><input class="intup" type="password" name="senha" id="senha"></td>
				  </tr><tr>
					<td width="150" height="39" align="right"><label for="email" class="titulo"><strong>Cargo/Departamento: </strong></label></td>
					<td>
					  <select class="det" name="cargo" id="cargo">
				        <option value=""> Selecione um Cargo </option>
				        <?php 
				        foreach($deps as $dep)
				        {
					        echo "<optgroup label='{$dep->getNome()}'>";
					        foreach($cargos as $cargo) {
					        	if($cargo->getidDep() == $dep->getidDep())
					        		echo "<option value='{$cargo->getidCargo()}''> {$cargo->getNomeFuncao()} </option>";
					        }
					    }
				        ?>
				      </select>
					</td>
				  </tr>
				</table><br><br>			
			
				<table width="576" border="0">
				  <tr>
					<td width="479">&nbsp;</td>
					<td width="76"><input type="submit" name="submit" id="submit"  class="botoes" value="Cadastrar"></td>
				  </tr>
				</table>
			</form>
        <br><br><br>
	  </div> <!--Fim da conteudo box 2-->
	</div> <!--Fim da box 2-->
</div>

<script type="text/javascript">
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
            email: {required: true, email: true},
            senha: {required: true, minlength: 4, maxlength: 16},
            cargo: {required: true},

    		// logo: { required: true, accept: "image/*" },
        },
    });
});
</script>