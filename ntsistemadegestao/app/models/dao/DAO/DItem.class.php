<?php
class DItem implements IDAO {
	private $dao;
	private $item;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof Item){
			$this->item = $obj;
		}
	}

	public function setItem($obj = null) {
		$this->item = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("Item",
			array('idSubtopico', 'nomeItem', 'texto'),
			array($this->item->getidSubtopico(),
				$this->item->getNomeItem(),
				$this->item->getTexto()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("Item",
			array('idSubtopico' => $this->item->getidSubtopico(),
				'nomeItem' => $this->item->getNomeItem(),
				'texto' => $this->item->getTexto()
			),
			"idItem={$this->item->getidItem()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("Item","idItem={$codigo}");
	}
	
	//return instance of Usuario
	public function getById($codigo){
		$ite = $this->dao->lista("Item",null,"idItem={$codigo}");
		$ite = isset($ite[0]) ? $ite[0] : null;
		return new Item($ite);
	}
	
	//return is array
	public function getAll(){
		$items=array();
		foreach($this->dao->lista("Item",null,"1+1=2") as $item){
			$items[]=new Item($item);
		}
		return $items;
	}

	public function getByCond($where){
		$items=array();
		foreach($this->dao->lista("Item",null,$where) as $item){
			$items[]=new Item($item);
		}
		return $items;
	}
}