<?php
class DAO{
	//Atributos
	public $conn;
	private static $instance;
    /*private $host="108.167.132.57";
	private $user="falca917_sistema";
	private $pass="!JegUCwL#Q)=";
	private $db="falca917_sistema";*/
	private $host="127.0.0.1";
	private $user="root";
	private $pass="lucas123";
	private $db="nidelson";
	//metodos
	public function __construct($server=null,$user=null,$pass=null,$db=null){
		if($server!=null){
			$this->host = $server;
			$this->user = $user;
			$this->pass = $pass;
			$this->db = $db;
		}
		$this->conn=$this->conecta();

	}
	public static function getInstance(){
		if(self::$instance==null){
			self::$instance=new DAO();
		}
		return self::$instance;
		

	}

	public function conecta(){
		return new mysqli($this->host,$this->user,$this->pass,$this->db);
	}

	public function lista($tabela, $campos=null, $where=null, $orderby=null) {
		$conecta = $this->conn;
		if($campos != null) $campos = implode(",",$campos);
		else $campos = "*";

		if($orderby == null) $orderby = '';
		else $orderby = "ORDER BY " . $orderby;
		
		if($where == null) $consulta = $conecta->query("select {$campos} from {$tabela} {$orderby}");
		else $consulta = $conecta->query("select {$campos} from {$tabela} where {$where} {$orderby}");
		
		
		
		if(!$this->conn->error) {
			$i = 0;
			
			$arr = array();
			while($reg = $consulta->fetch_array()){
				$arr[$i++] = $reg;
			}
			
		} else {
			$arr = array();		
			
		}

		return $arr;
	}

	public function insere($tabela, $arrayCampos, $arrayValores){
		
		foreach($arrayCampos as $key => $a) 
			$arrayCampos[$key] = $this->conn->real_escape_string($a); //Anti MySQL Injection

		foreach($arrayValores as $key => $a) 
			$arrayValores[$key] = $this->conn->real_escape_string($a); //Anti MySQL Injection


		$arrayCampos = implode(", ", $arrayCampos);
		$arrayValores = "'" . implode("', '",$arrayValores) . "'";
		
		$query = "INSERT INTO {$tabela} ({$arrayCampos}) values ({$arrayValores})";
		if(!$this->conn->query($query)){
			
			echo $this->conn->error;
			return false;
		}


		$this->makeBackup();
		return $this->conn->insert_id;
		
	}

	public function update($tabela, $set, $where){
		$where = $this->conn->real_escape_string($where); //Anti MySQL Injection

		foreach($set as $campo=>$valor){
			$set[$campo] = $this->conn->real_escape_string($campo) . " = '" . $this->conn->real_escape_string($valor) . "'";
		}

		$set = implode(", ", $set);
		$query = "UPDATE {$tabela} SET {$set} WHERE {$where}";
		//echo $query;
		if(!$this->conn->query($query)){
			echo $this->conn->error . '<br>';
			return false;
		}
		$this->makeBackup();
		return $this->conn->affected_rows;
	}
	
	public function remove($tabela,$where){
		if(!$this->conn->query("delete from {$tabela} where {$where}")){
				return false;
		}
		$this->makeBackup();
		return $this->conn->affected_rows;
	}

	public function consulta($sql){
		$x = $this->conn->query($sql);
		$i = 0;
        $arr=array();
		while($reg = $x->fetch_array()){
			$arr[$i++] = $reg;
		}		
		return $arr;		
	}
	public function makeBackup(){
		//fazer backup sempre quando fizer alguma alteração(lembrando é feito um por dia).
		
		require_once("app/Backup.php");
		$backup=new Backup();
		$backup->make();
	}
}