<?php

class Lista{
	public $info;
	public $next=null;//ponteiro
	
}
function insereInicio(&$lista,$info){
	if($lista==null){
		$lista=new Lista();
		$lista->info=$info;
		$lista->next=null;
	}else{
		$listar=new Lista();
		$listar->info=$info;
		$listar->next=$lista;
		$lista=$listar;
	}
}


insereInicio($lista,"numb");
insereInicio($lista,"Lucas");
insereInicio($lista,"Joao");
$aux=$lista;

while($aux!=null){
	printf("Nome: %s<br>",$aux->info);
	$aux=$aux->next;

}

