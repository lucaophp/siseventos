<div id="boxtudo">
  <?php include('app/Views/planoacao/_LATERAL.php'); ?>
  <div id="box2" >
    <div id="conteudo-box2" >
      <p class="titulo"><strong>CADASTRAR AÇÃO</strong></p><br>

      <?php
        $error=$_SESSION['error'];
        if(!count($error)) { //Se o ID da empresa for positivo (empresa cadastrada com sucesso)
          echo "Você <b>Cadastrou</b> com sucesso a Ação!<br>";
        }
        else //Se nao foi cadastrada
        {
          echo 'Falha ao Cadastrar Ação!<br>';
          echo 'Por favor, tente novamente mais tarde.<br>';

          if(count($error)) { //Mostra os erros encontrados.
            echo '<br>Os seguintes errors foram encontrados: <br>';
            foreach($error as $e) {
              echo '<li>' . $e . '</li>';
            }
          }
          echo '<br><br>Caso o erro persista, contate o Administrador.';
        }
      ?>
      <br><a href="<?php echo $_SESSION['ultimaPagina'];?>"> Voltar </a>

    </div> <!--Fim da conteudo box 2-->
  </div> <!--Fim da box 2-->
</div>
