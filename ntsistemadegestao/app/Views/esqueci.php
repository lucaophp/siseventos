<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Esqueci a Senha</title>
		<base href="<?php echo __dir();?>">
		
		<!-- Javascript--> 
		<script type="text/javascript" src="includes/scripts/jquery-2.1.1.min.js" ></script>
		<script type="text/javascript" src="includes/scripts/javascript.js"></script>	
		<style>
			body {
				background-color: #E5E5E5;
			}
			#divLogin {
				background-color: #fff;
				padding: 0px;
				width: 300px;
				height: 160px;
				
				position: absolute;
				left: 50%;
				top: 50%;
				margin-left: -180px; 
				margin-top: -150px; 
				text-align: center;	
				
				border: 1px solid #006699;
				border-radius: 10px;
			}
			#divLogin-Title{
				width: 100%;
				padding: 8px 0px 8px 0px;
				color: #fff;
				background-color: #006699;	
				border-bottom: 1px solid;
				margin-bottom: 3px;
				border-radius: 8px 8px 0px 0px;
			}
			#divLogin-Content { 
				padding: 0px; 
			}
			#divLogin-error {
				font-size: 14px;
				color: #a00;
			}
			.table-login {
				margin: 0 auto;
				padding: 0px;
			}
			.button-login {
				padding:3px;
				border:2px solid #069;
				background-color:#FFF;
				font:15px Arial, Helvetica, sans-serif;
				color:#069;
				width:100px;
				height:30px;
				display:inline;
				margin:5px 50px; 
			}
		</style>
	</head>
  
	<body>	
		<div id="divLogin">
			<form action="login/esqueci/" method="POST">
				<div id='divLogin-Title'> Esqueci a Senha </div>
				<div id='divLogin-Content'>
					<div id='divLogin-error'> 
						<?php 
						if( isset($_SESSION['error']) ) echo 'ERRO: ' . $_SESSION['error']; 
						unset($_SESSION['error']);
						?> <br> 
					</div>
					<table align="center" class='table-login'>
						<tr> <td>Email: </td> <td> <input type="text" id="email" name="email" size="15"> </td> </tr>
					</table>
					<input class='button-login' type="submit" id="esqueci" name="esqueci" value="Recuperar">
					<p><a href="login">Voltar</a></p>
				</div>
			</form>
		</div>
	</body>
</html>