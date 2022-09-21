<div id="boxtudo">
	<div id="box-cadastro"><table width="900" border="0">
  <tr>
    <td align="center"><p class="universal"><br>Cadastro de Usuário</p></td>
  </tr>
  <tr>
    <td align="center"><br><table width="749" height="140" border="0">
      <tr>
        <td width="81">
        <form id="cadastro" name="cadastro" method="post">
          <label for="matricula" class="titulo"><strong>Matricula</strong></label></td>
        <td width="201"><input  class="intup" type="text" name="matricula" id="matricula"></td>
        <td width="165" align="center" class="titulo"><strong>Aprova Planos de Ação</strong></td>
        <td width="113" align="center" class="titulo"><p>
          <label>
            <input type="radio" name="opcao2" value="sim" id="opcao_0">
            Sim</label>
          <label>
            <input type="radio" name="opcao2" value="nao" id="opcao_1">
            Não</label>
          
        </p></td>
        <td width="10" rowspan="4">&nbsp;</td>
        <td width="162" rowspan="4" align="center" valign="middle"><div id="boxcastro"><br>
          <table  width="156" height="115" border="0" class="titulo">
            <tr>
              <td width="49"><label for="email">Email:</label></td>
              <td width="97"><input name="email" type="email" id="email" size="10"></td>
            </tr>
            <tr>
              <td>Login</td>
              <td> <input name="loguin" type="text" id="loguin" size="10">
               </td>
            </tr>
            <tr>
              <td>Senha</td>
              <td><input name="senha" type="password" required id="senha" size="10"></td>
            </tr>
          </table>
        </div></td>
      </tr>
      <tr>
        <td align="center"><label for="nome" class="titulo"><strong>Nome</strong></label></td>
        <td><input class="intup" type="text" name="nome" id="nome"></td>
        <td align="center" class="titulo"> <strong>Ativo</strong></td>
        <td align="center" class="titulo"> <label >
            <input  type="radio" name="opcao" value="sim" id="opcao_0">
            Sim</label>
          <label>
            <input type="radio" name="opcao" value="nao" id="opcao_1">
            Não</label></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        </tr>
      <tr>
        <td colspan="4" align="center">                  
            <table width="401" border="0" class="titulo"><tr>
                <td>Departamento</td>
                <td>Nível Hierarquico </td>
                <td>Cargo / Função</td>
              </tr>
              <tr>
                <td width="145"><select class="det" name="departamento" id="departamento">
          <option>Depart</option>
          <option>Det2</option>
          <option>Det3</option>
          </select> </td>
                <td width="144"><select class="det" name="nivel" id="nivel">
            <option selected="selected">Nível</option>
            <option>Det2</option>
            <option>Det3</option>
            </select> </td>
                <td width="116"><select class="det" name="funcao" id="funcao">
            <option>Função</option>
            <option>Det2</option>
            <option>Det3</option>
          </select></td>
              </tr>
              
            </table></td>
        </tr></form>
    </table></td>
  </tr>
  <tr>
    <td align="center">
  
      <br><table width="681" border="0">
      <tr>
        <td width="518"><input type="button" class="botoes" value="Buscar"></td>
        <td width="153"><input class="botoes" type="button" value="Cadastrar">
          </td>
      </tr>  
    </table></td>
  </tr>
</table>
</div>
</div><!--Fim do <div id="boxborda">-->
<br>
<!--Div de tabelas abaixo do centro-->

<?php
	$usuarios = array(	array('2', '0001', 'Projetos', 			'Diretor', 		'João', 	'xxxx@xxx.com', 'Sim', 'Sim'),
						array('2', '0002', 'Gestao de Pessoas', 'Assessor', 	'Marcos', 	'yyyy@xxx.com', 'Sim', 'Sim'),
						array('3', '0003', 'Financeiro', 		'Gerente', 		'Mariana', 	'zzzz@xxx.com', 'Nao', 'Nao'),
						array('4', '0004', 'Qualidade', 		'Gerente', 		'Pedro', 	'wwww@xxx.com', 'Nao', 'Nao'),
						array('5', '0005', 'Projetos', 			'Estagiario', 	'Maria', 	'qqqq@xxx.com', 'Nao', 'Nao'),
						array('5', '0006', 'Financeiro',		'Estagiario', 	'Gustavo', 	'tttt@xxx.com', 'Nao', 'Nao')
				);
?>

<div id="boxborda_nivel">
	<br>
	<table width="100%" border="1px" cellpadding="0px" cellspacing="0px">
		<tr class="table-title"> <th class="titulo-branco">Nivel<br>Hierarquico</th> <th class="titulo-branco">Matricula</th> <th class="titulo-branco">Departamento/<br>Setor</th> <th class="titulo-branco">Cargo/<br>Funcao</th> <th class="titulo-branco">Nome</th> <th class="titulo-branco">Email</th> <th class="titulo-branco">Ativo</th> <th class="titulo-branco">Aprova Plano<br>de Acao</th> <th class="titulo-branco">Opções</th> </tr>
		<?php
			$cont = 0;
			foreach($usuarios as $usuario)
			{
				$class = ($cont % 2 == 0) ? 'table-linePar' : 'table-lineImpar';
				echo '<tr align="center" class='.$class.'>';
				echo "<td>{$usuario[0]}</td><td>{$usuario[1]}</td><td>{$usuario[2]}</td><td>{$usuario[3]}</td>";
				echo "<td>{$usuario[4]}</td><td>{$usuario[5]}</td><td>{$usuario[6]}</td><td>{$usuario[7]}</td>";
				echo "<td><a href='#'>Alterar</a> | <a href='#'>Excluir</a></td>";
				echo '</tr>';
				$cont++;
			}
		?>
	</table>
</div>