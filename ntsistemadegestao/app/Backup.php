<?php
class Backup{
	private $file;
	private $dateNow;
	private $nameFile;
	private $path="system/backup/";
	private $dao;
	private $tables=array();
	
	public function __construct(){
		$this->dao=new DAO();
		$this->dateNow=date("d-m-Y");
		$this->nameFile="BANCO_{$this->dateNow}.sql";

	}
	public function openFile(){
		$this->file=fopen($this->path.$this->nameFile, "w");
		if($this->file==null){
			return false;
		}
		return true;
	}
	public function closeFile(){
		return fclose($this->file);
	}
	public function writeFile($str){
		fwrite($this->file,utf8_encode($str));

	}
	public function findTables(){
		$tables=$this->dao->consulta("SHOW TABLES");
		$tables=array_values($tables);
		
		foreach ($tables as $key =>$table) {
			$table=array_values($table);
			$this->tables[]=$table[0];
		}
	}
	public function createTable($table){
		
		$tables=$this->dao->consulta("SHOW CREATE TABLE {$table}");

		if(empty($tables)){
			return false;
		}
		$tables=array_values($tables);
		$tables[0]=array_values($tables[0]);
		
		return $tables[0][2].";";

	}
	public function insertData($table){
		$dados=$this->dao->consulta("SELECT * FROM {$table}");
		if(empty($dados)){
			return false;
		}
		foreach ($dados as $dado) {
			$grava = "INSERT INTO {$table} VALUES ('";
			
        	
        	$cont=0;
			foreach ($dado as $v3) {
				
				$v3 = $this->dao->conn->real_escape_string($v3);
				$dado[$cont]=$v3;
				$cont++;
				
			}
			
			
			$grava.= implode("', '", $dado);
			$grava.= "');\n";

			$this->writeFile($grava);
		}
		return true;
	
	}

	public function make(){
		if(file_exists($this->path.$this->nameFile)){
			//não fazer backup
			return false;
			
		}
		$this->openFile();
		$this->findTables();
		foreach($this->tables as $table){
			$tableCreate=$this->createTable($table);
			if($tableCreate==false){
				$this->closeFile();
				return false;
			}
			
			$this->writeFile("--{$table}\n{$tableCreate}\n\n\n");
			


		}
		foreach($this->tables as $table){
			$this->insertData($table);
		}
		$this->closeFile();
		return true;

	}
}