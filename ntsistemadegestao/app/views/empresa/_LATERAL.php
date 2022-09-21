﻿<div id="box1">
	<div id="leftbar">
		<ul>
			<li> 
				<a id="leftbar-estrutura"> Descrição da Empresa </a> <br>
				<ul>
					<li> <a id="leftbar-historico" href="empresa/historico"> Histórico </a></li>
					<li> <a id="leftbar-infraestrutura" href="empresa/infraestrutura">Infraestrutura </a></li>
					<li> <a id="leftbar-mercado" href="empresa/mercado">Mercado de Atuação </a></li>		
					<li> <a id="leftbar-produtos" href="empresa/produtos">Produtos e Serviços </a></li>
				</ul>
			</li>
			<?php 
			if( $this->_page->usuario->getNivel() == 0 ) //Adm Local
			{
				?>
				<li> 
					<a id="leftbar-estrutura">Gerenciar Empresa </a> <br>
					<ul>
						<li><a id="leftbar-estrutura_gerenciar" href="empresa/estrutura_gerenciar"> Gerenciar Estrutura </a> </li>
						<li><a id="leftbar-estrutura_usuarios" href="empresa/estrutura_usuarios"> Gerenciar Usuários </a> </li>
						<li><a id="leftbar-estrutura_usuarios_cadastro" href="empresa/estrutura_usuarios_cadastro"> Cadastrar Usuário </a> </li>
						<li><a id="leftbar-editar" href="empresa/editar"> Editar empresa </a> </li>
					</ul>
				</li>
				<?php
			}
			?>
		</ul>
	</div>
</div><!--Fim da div box1-->