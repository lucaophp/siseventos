<?php
        /*
		    CLASSE GENERICA RESPONSAVEL PELAS MODIFICAÇÕES E CONSULTAS NO BANCO DE DADOS, POSSUINDO O CRUD, NECESSARIO PARA O BOM FUNCIONAMENTO DO SISTEMA.
		    TUDO RELACIONADO A BANCO DE DADOS PASSA POR AQUI.
		*/
    class Model{
		/*
		    METODO RESPONSAVEL PELA INSERÇÃO DE UM ARRAY DE DADOS,EM UMA TABELA.
		    @retorno pode ser -1 caso haja algum erro.Caso contrario é retornado o 'codigo' da ultima inserção.
		    Caso haja um erro esse erro será reportado na classe static LOG. 
		*/
		public function insere($tabela,Array $dados){
			$i=0;
			//verifica se os dados passados por parametro não é um array.
			if(!is_array($dados)){
			    return -1;
			}
			//formata os dados do array para serem usados na consulta sql.
			foreach($dados as $tipo=>$v){
				$assoc[$i]=$tipo;
				$value[$i]="'".$v."'";

				$i++;
			}
        
			$assoc=implode(",",$assoc);
			$value=implode(",",$value);
			//-------------------------------------------------------
			
            $conn=DAO::conn();
            
			try{
				$insere=$conn->prepare("INSERT INTO {$tabela} ({$assoc})VALUES({$value})");
                $retorno=0;
				if($insere->execute()){
                    return $conn->lastInsertId();
                }else{
                    $err=print_r($insere,true);
                    $errArray=print_r($dados,null);
                    throw new PDOException("Erro na inserção com essa consulta.{$err},na tabela {$tabela} com o array {$errArray}");
                    
                }
                
				
			}catch(PDOException $e){
				LOG::registra($_GET['id'],$e);
                return -1;
				
			}
				
		}
		
		public function apagar($tabela,$where){
			try{
				$deleta=DAO::conn()->prepare("DELETE FROM `{$tabela}` WHERE {$where}");
				if($deleta->execute()){
				    $retorno=true;
                }else{
                    $err=print_r($deleta,true);
                    throw new PDOException("Erro ao deletar com essa consulta.{$err}");
				    
                }
			}catch(PDOException $e){
                LOG::registra($_GET['id'],$e);
				$retorno=false;
				
			}
			require_once("app/backup.php");
			return $retorno;

		}
		public function atualizar($tabela,$set,$where){
			try{
				$atualiza=DAO::conn()->prepare("UPDATE `{$tabela}` SET {$set} WHERE {$where}");
				if($atualiza->execute()){
				    $retorno=true;
				}else{
				    $err=print_r($atualiza,true);
                    throw new PDOException("Erro ao atualizar com essa consulta.{$err}");
				}
				
			}catch(PDOException $e){
				LOG::registra($_GET['id'],$e,"Erro na classe model, metodo atualizar.");
				$retorno=false;
			}
			require_once("app/backup.php");
			return $retorno;
		}
		public function listar($tabela,$where=null){
			try{
				if($where==null):
					$listar=DAO::conn()->prepare("SELECT * FROM {$tabela}");
				else:
					$listar=DAO::conn()->prepare("SELECT * FROM {$tabela} WHERE {$where}");
				endif;
				if($listar->execute()){
				    return $listar->fetchAll(PDO::FETCH_OBJ);
				}else{
				    $err=print_r($listar,true);
				    throw new PDOException("Erro ao listar com essa consulta.{$err},na tabela {$tabela}");
				}
                
			}catch(PDOException $e){
				LOG::registra($_GET['id'],$e);
				return $listar->fetchAll(PDO::FETCH_OBJ);;
			}
			
		}
        public function sql($sql){
			try{
				$listar=DAO::conn()->prepare($sql);
				$listar->execute();
                return $listar->fetchAll(PDO::FETCH_OBJ);
			}catch(PDOException $e){
				LOG::registra($_GET['id'],$e,"Erro na classe model, metodo listar na tabela {$tabela}.");
			}
			
		}
	}
?>
