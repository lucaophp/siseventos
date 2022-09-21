<?php
class ExportExcel{
	public function __construct($data,$fileName){
		// Determina que o arquivo é uma planilha do Excel
   		header("Content-type: application/vnd.ms-excel");  
 
  		 // Força o download do arquivo
  		header("Content-type: application/force-download"); 
	 
   		// Seta o nome do arquivo
   		header("Content-Disposition: attachment; filename=".$fileName.".xls");
	 
	   	header("Pragma: no-cache");
	   	// Imprime o conteúdo da nossa tabela no arquivo que será gerado
	   	echo "<meta http-equiv=\"content-type\" content=\"application/xhtml+xml; charset=UTF-8\" />";
	   	echo $data;
	   	exit(0);


	}
}