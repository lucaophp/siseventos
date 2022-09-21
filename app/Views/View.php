<?php
class View{
	private $theme="app/Views/Themes/default/default.phtml";
	private $page;
	private $data=array();
	private $dadosEvento;
	public function __construct($page,$data=array(),$theme="app/Views/Themes/default/default.phtml"){
		
		$this->dadosEvento=session("event");
		$this->data=$data;
		$this->page=$page;
		//print_r($this->dadosEvento);
		$this->theme=$theme;
		//extract($this->$data);
		require_once("../".$this->theme);
	}
}