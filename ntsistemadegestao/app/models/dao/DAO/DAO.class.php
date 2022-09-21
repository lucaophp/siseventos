<?php
class DAO{
	//Atributos
	private $conn;
	private static $instance;



        private $host="127.0.0.1";
	private $user="root";
	private $pass="";
	private $db="falcao";


	

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
		
		//echo "select {$campos} from {$tabela} where {$where} {$orderby}<br>";
		
		if(!$this->conn->error) {
			$i = 0;
			//print_r($conecta);
			$arr = array();
			while($reg = $consulta->fetch_array()){
				$arr[$i++] = $reg;
			}
			//var_dump($arr); echo '<br>';
		} else {
			$arr = array();		
			//echo $this->conn->error;
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
		//echo $query . '<br>';
		if(!$this->conn->query($query)){
			//return $this->conn->error;
			echo $this->conn->error;
			return false;
		}


		
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
			//echo $this->conn->error . '<br>';
			return false;
		}
		return $this->conn->affected_rows;
	}
	
	public function remove($tabela,$where){
		if(!$this->conn->query("delete from {$tabela} where {$where}")){
			//echo '<br>' . $tabela . ' - ' . $where . ' - ' . $this->conn->error . '<br>';
			return false;
		}
		return $this->conn->affected_rows;
	}

	public function consulta($sql){
		$x = $this->conn->query($sql);
		$i = 0;
                $arr=array();
		while($reg = $x->fetch_assoc()){
			$arr[$i++] = $reg;
		}		
		return $arr;		
	}
}