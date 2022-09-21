<div id="boxtudo">
  <?php include('app/Views/empresa/_LATERAL.php'); ?>
  <div id="box2" >
    <div id="conteudo-box2" >
      <form method="POST" enctype="multipart/form-data" id="formcadastro">
        <p class="titulo"><strong>CADASTRAR DEPARTAMENTO</strong></p><br>  
        <table width="600" border="0px">
          <tr>      
          <td width="150" height="39" align="right"><label class="titulo"><strong>Nome: </strong></label></td>
          <td><input class="intup" type="text" name="nome" id="nome"></td>
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
    rules: {
      nome: {required: true, minlength: 3},
    },
  });
});
</script>