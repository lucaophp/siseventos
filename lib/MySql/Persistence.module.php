<?php
class Persistence{
    public static $conn=null;
    public static function start(){
        $server=MainConfig::$_serverDb;
        $dbname=MainConfig::$_dbname;
        $user=MainConfig::$_userDb;
        $pass=MainConfig::$_passDb;
        
        try{
            self::$conn=new PDO("mysql:host={$server};dbname={$dbname};charset=utf8",$user,$pass);
            return true;
        }catch(PDOException $e){
            throw new Exception($e);
           
            return false;
        }
        
        
    }
    public function insert($tabela,Array $dados){
            //$tabela=Config::$prefixoDB.$tabela;
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
			
            $conn=self::$conn;
            
			try{
				$insere=$conn->prepare("INSERT INTO {$tabela} ({$assoc})VALUES({$value})");
                $retorno=0;
				if($insere->execute()){
                    return $conn->lastInsertId();
                }else{
                    
                    throw new PDOException("Erro na inserção com essa consulta.,na tabela {$tabela}");
                    
                }
                
				
			}catch(PDOException $e){
				//LOG::registra($e);
                return 0;
				
			}
				
    }
    public function remove($tabela,$where){
        $tabela=Config::$prefixoDB.$tabela;
        $conn=self::$conn;
		try{
			$deleta=$conn->prepare("DELETE FROM `{$tabela}` WHERE {$where}");
			if($deleta->execute()){
				 return $deleta->rowCount();
            }else{
                //$err=print_r($deleta,true);
                throw new PDOException("Erro ao deletar com essa consulta.{$err}");
				    
            }
        }catch(PDOException $e){
                //LOG::registra($e);
            $retorno=false;
				
        }
         return $retorno;

    }
    public function update($tabela,Array $dados,$where){
        $tabela=Config::$prefixoDB.$tabela;
        $i=0;
        //verifica se os dados passados por parametro não é um array.
        if(!is_array($dados)){
			 return 0;
        }
        //formata os dados do array para serem usados na consulta sql.
        foreach($dados as $tipo=>$v){
            $assoc[$i]=$tipo;
            $value[$i]="'".$v."'";
            $str[$i]=$assoc[$i]."=".$value[$i];
            $i++;
        }
        
        $assoc=implode(",",$assoc);
        $value=implode(",",$value);
        $str=implode(",",$str);
        $conn=self::$conn;
        try{
            $atualiza=$conn->prepare("UPDATE {$tabela} SET {$str} WHERE {$where}");    
            
            if($atualiza->execute()){ 
                return $atualiza->rowCount();
                
            }else{
                throw new PDOException("Erro na Update,na tabela {$tabela}");
            }
        }catch(PDOException $e){
            //LOG::registra($e);
            return 0;
				
        }
    }
    public function specialUpdate($tabela,$set,$where){
        $conn=self::$conn;
        try{
            $atualiza=$conn->prepare("UPDATE {$tabela} SET {$set} WHERE {$where}");
            if($atualiza->execute()){ 
                return $atualiza->rowCount();
                
            }else{
                throw new PDOException("Erro na Update,na tabela {$tabela}");
            }
        }catch(PDOException $e){
            //LOG::registra($e);
            return 0;
				
        }
        
    }
    public function listar($tabela,$where=null){
        $tabela=Config::$prefixoDB.$tabela;
			try{
				$connect=Persistence::$conn;
				if($where==null):
					$listar=$connect->prepare("SELECT * FROM {$tabela}");
				else:
					$listar=$connect->prepare("SELECT * FROM {$tabela} WHERE {$where}");
				endif;
				if($listar->execute()){
				    return $listar->fetchAll(PDO::FETCH_ASSOC);
				}else{
				    $err=print_r($listar,true);
				    throw new PDOException("Erro ao listar com essa consulta.{$err},na tabela {$tabela}");
				}
                
			}catch(PDOException $e){
				
				return $listar->fetchAll(PDO::FETCH_ASSOC);
			}
			
    }
    public static function query($str){
        $connect=Persistence::$conn;
        $listar=$connect->prepare($str);
        $listar->execute();
        
        return $listar->fetchAll(PDO::FETCH_ASSOC);
    }
}