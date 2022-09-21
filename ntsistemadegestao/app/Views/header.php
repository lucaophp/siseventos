<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="<?php echo __dir();?>"> 
	<title>Falcão Gestão Estratégica</title>
	<!--Folha de estilo-->
	<link href="public/css/style.css" type="text/css" rel="stylesheet">
	<link href="public/css/form.css" type="text/css" rel="stylesheet">
	<link href="public/css/class.css" type="text/css" rel="stylesheet">
	<link href="public/css/notifications.css" type="text/css" rel="stylesheet">
	<link href="public/css/jquery.dataTables.css" type="text/css" rel="stylesheet">
        <link href="public/css/jquery-ui.css" type="text/css" rel="stylesheet">
	
	<!-- Javascript--> 
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.1.min.js" ></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type="text/javascript" src="public/js/javascript.js"></script>	
	<script type="text/javascript" src="public/js/jquery.validate.js"></script>	
	<script type="text/javascript" src="public/js/jquery.dataTables.min.js"></script>	
	<script type="text/javascript" src="public/js/dataTables.fixedHeader.min.js"></script>
	<script type="text/javascript" src="public/js/dataTables.fixedColumns.min.js"></script>
	<script src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
	<script>tinymce.init({selector:'.editor'});</script>
        
</head>

<body>	
	<div id="geral">
		<div id="topo">
			<div id="topo-central">
				<div id="utilidade"> <br>
					
					<!-- Notifications -->
				  <div id="notification-all" style="position: relative">
						<a id="notification-button"><img src="public/images/notifica.png" alt="" title="Notificações"/></a>
                                                <?php
                                                    $dao = new DAO();
                                                    $notificacao=new DNotificacao();
                                                    $notificacoes=$notificacao->getByUser($this->usuario->getIdUsuario());
                                                    $notificacoesNLidas=0;
                                                    foreach ($notificacoes as $n) {
                                                    	if($n->getStatus()==0){
                                                    		$notificacoesNLidas++;
                                                    	}
                                                    }
                                                    

                                                    /*$not = new DAcao();
                                                    $not = $not->getByCond("idSupervisor={$this->usuario->getIdUsuario()} AND status=0");*/
                                                    $contaNot=  $notificacoesNLidas;
                                                    
                                                ?>
						<span id="notification-count"> <?php echo $contaNot?> </span> <!-- Contador de Notificações -->	
						
						<div id="notification-div">
							<div class="notification-user"> <!-- Topo da Notificação (Usuario) -->
								<table>
								  <tr>
									<td> <img class="notification-user-image" alt="Avatar" src="public/images/users/<?php echo $this->usuario->getImagem(); ?>"/> </td>
									<td> <?php echo $this->usuario->getNome(); ?> <br>
										<i> <?php echo $this->usuario->getCargo(); ?> </i>
									</td> 
								  </tr>
								</table>
							</div> <!-- Fim do Topo da Notificação -->
							
							<div class="notification-notifications"> <!-- Notificações -->
                                                            <?php 

                                                            foreach ($notificacoes as $notificacao):?>
                                                                <?php 
                                                                
                                                                $acao=new DAcao();
                                                                $acao=$acao->getById($notificacao->getIdAcao());

                                                                $user=new DUsuario();
                                                                $user=$user->getById($acao->getIdUsuario());
                                                                
                                                                $idPlanoAcao=$acao->getIdPlanoAcao();
                                                                $lido=$notificacao->getStatus();
                                                                if(!$lido){
                                                                   $notificacao->setStatus(1);
                                                                   $dnot=new DNotificacao($notificacao);
                                                                   $dnot->atualiza();
                                                                }
                                                                
                                                                
                                                                ?>
                                                           
								<div class="notification <?php echo $lido?"read":"nread"?>">				
									<div class='notification-title'> Ação para ser Analisada de <br><?php echo $user->getNome();?></div>
                                                                        <div class='notification-text'><?php echo $notificacao->getAssunto();?></div>
                                                                        <a href="planoacao/gerenciar/<?php echo $idPlanoAcao;?>"> Clique para visualizar.</a>
                                                                        <div class='notification-info'> <?php echo date("d/m/Y",strtotime($acao->getDataInicio()))?>.</div>
								</div>
                                                                <?php endforeach;?>
								<?php /*<div class="notification nread">				
									<div class='notification-title'> Titulo Notificação: </div>
									<div class='notification-text'> Este é um exemplo de notificação não lida.</div>
									<div class='notification-info'> 3 Horas atras.</div>
								</div>
								<div class="notification read">
									<div class='notification-title'> Titulo Notificação: </div>
									<div class='notification-text'> Este é um exemplo de notificação lida.</div>
									<div class='notification-info'> 1 Dia atras.</div>
								</div>	
								<div class="notification read">
									<div class='notification-title'> Titulo Notificação: </div>
									<div class='notification-text'> Este é um exemplo de notificação lida.</div>
									<div class='notification-info'> 5 Dias atras.</div>
								</div>
								<div class="notification read">
									<div class='notification-title'> Titulo Notificação: </div>
									<div class='notification-text'> Este é um exemplo de notificação lida.</div>
									<div class='notification-info'> 10 Dias atras.</div>
								</div>								
							*/?>
                                                        </div>
						</div>
					</div>
				  <!-- End of Notifications -->
					
					
					<a> <?php echo $this->usuario->getNome(); ?> </a> | 
					<a href="usuario/perfil"> Editar perfil </a> |
					<a href="login/sair">Sair</a>
				</div><!--Fim da id utilidade-->
				
				<div id="logo">
					
						
						
						
			     <table width="900" border="0">
				      <tr>
				        <td width="153"><a href="#"><?php if( $this->usuario->getNivel() != -1 )
							echo '<img alt="logomarca" src="public/images/business/' . $this->empresa->getLogo() . '" class="logoempresa">';?></a></td>
				        <td width="737"><a href="#"><?php echo '<img alt="logomarca" src="public/images/logomarca.png" class="logosistema">';?></a></td>
			        </tr>
			      </table>
				  
				</div><!--Fim da id logo-->
				
				<div id="menu"><!--div menu-->
				  <ul>
					<?php
					if( $this->usuario->getNivel() != -1 ) //Se o usuario nao for Admin Total
					{					
						/*
						<li><a id='header-empresa' 		href="empresa"><?php echo $this->empresa->getNome(); ?></a></li>
						*/
						?>
						<li><a id='header-empresa' 		href="empresa"> Empresa </a></li>
						<li><a id='header-planejamento' href="planejamento">Planejamento Estratégico</a></li>
						<li><a id='header-planoacao' 	href="planoacao">Plano de Ação</a></li>
						<li><a id='header-indicador'	href="indicador">Indicador de Desempenho</a></li>				
						<li><a id='header-pdi' 			href="pdi">PDI</a></li>
						<?php					
					}		
					else //Se for Admin Total
					{						
						echo "<li><a id='header-admin' href='admin'>Administrador do Sistema</a></li>";
					}
					?>
				  </ul>
				</div><!--fim div menu-->
			</div> <!--Fim da div topo-central-->
		</div><!--Fim da div topo-->