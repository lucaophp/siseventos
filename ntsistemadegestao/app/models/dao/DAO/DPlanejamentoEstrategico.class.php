<?php
class DPlanejamentoEstrategico implements IDAO {
	private $dao;
	private $planejamento;
	
	public function __construct($obj = null){
		$this->dao = new DAO();
		if($obj instanceof PlanejamentoEstrategico){
			$this->planejamento = $obj;
		}
	}

	public function setPlanejamentoEstrategico($obj = null) {
		$this->planejamento = $obj;
	}
	
	public function insere(){
		$id=$this->dao->insere("PlanejamentoEstrategico",
			array('idEmpresa', 'consideracoesIniciais', 'consideracoesFinais'),
			array($this->planejamento->getidEmpresa(),
				$this->planejamento->getconsideracoesIniciais(),
				$this->planejamento->getconsideracoesFinais()
			)
		);
		return $id;
	}
	
	public function atualiza(){
		return $this->dao->update("PlanejamentoEstrategico",
			array('idEmpresa' => $this->planejamento->getidEmpresa(),
				'consideracoesIniciais' => $this->planejamento->getconsideracoesIniciais(),
				'consideracoesFinais' => $this->planejamento->getconsideracoesFinais()
			),
			"idPlan={$this->planejamento->getidPlan()}"
		);
	}
	
	public function deleta($codigo){
		return $this->dao->remove("PlanejamentoEstrategico","idPlan={$codigo}");
	}
	
	//return instance of PlanejamentoEstrategico
	public function getById($codigo){
		$plan = $this->dao->lista("PlanejamentoEstrategico",null,"idPlan={$codigo}");
		$plan = isset($plan[0]) ? $plan[0] : null;
		return new PlanejamentoEstrategico($plan);
	}
	
	//return is array
	public function getAll(){
		$plans = array();
		foreach($this->dao->lista("PlanejamentoEstrategico", null, "true=true") as $plan){
			$plans[] = new PlanejamentoEstrategico($plan);
		}
		return $plans;
	}

	//return is array
	public function getByCond($where){
		$plans=array();
		foreach($this->dao->lista("PlanejamentoEstrategico",null,$where) as $plan){
			$plans[] = new PlanejamentoEstrategico($plan);
		}
		return $plans;
	}
}