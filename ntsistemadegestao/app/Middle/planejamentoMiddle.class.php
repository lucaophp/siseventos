<?php
class planejamentoMiddle implements IMiddle{
	public function before(){
		$dusuario = new DUsuario();
        $dusuario->permissao(1);

	}
	public function doPost(Array $post){

	}
	public function doGet(Array $get){

	}
	public function after(){

	}

}