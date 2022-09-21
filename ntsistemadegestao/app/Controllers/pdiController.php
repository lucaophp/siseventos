<?php
class pdiController extends Controller{
	private $pdiUser;
	private $usuarioLogado;
	public function __construct(){
		$dusuario = new DUsuario();				
		parent::__construct();
		$dpdi=new DPDI();
		//verifica se o usuario não tem pdi.
		if(!$dpdi->verificaUsuario($this->_page->usuario->getIdUsuario())){
			//se ele não tem, vamos criar um.
			$pdi=new PDI();
			$pdi->setIdUsuario($this->_page->usuario->getIdUsuario());
			$dpdi=new DPDI($pdi);
			$dpdi->insere();

		}
		//se ele já tiver um pdi logo iremos capturar os dados dele.
		$this->pdiUser=$dpdi->getByUser($this->_page->usuario->getIdUsuario());
		$this->usuarioLogado=$this->_page->usuario;


	}
	public function index(){

		$usuarioLogado=$this->usuarioLogado;
		$dcargo=new DCargo();
		$cargo=$dcargo->getById($usuarioLogado->getIdCargo());
		$ddep=new DDepartamento();
		$dep=$ddep->getById($cargo->getidDep());
		if($cargo->getNivel()==0){
			$dfundamentos=new DFundamento();
			$fundamentos=$dfundamentos->getByEmpresa($this->_page->empresa->getIdEmpresa());
			$idEmpresa=$this->_page->empresa->getIdEmpresa();
			$this->_page->getHeader();
			require_once("app/Views/pdi/cadastra_fundamento.php");
			$this->_page->getFooter();
			return;

		}
		$infoUser=
		array(
			"nome"=>$usuarioLogado->getNome(),
			"cargo"=>$cargo->getNomeFuncao(),
			"nivel"=>$cargo->getNivel(),
			"departamento"=>$dep->getNome()
		);
		@extract($infoUser);

		$this->_page->getHeader();
		require_once("app/Views/pdi/index.php");
		$this->_page->getFooter();
	}

	public function negado(){		
		$this->_page->getHeader();
		require_once("app/Views/pdi/negado.php");
		$this->_page->getFooter();
	}	
	
	public function tabela_pdi(){
		$usuarioLogado=$this->usuarioLogado;
		$dcargo=new DCargo();
		$cargo=$dcargo->getById($usuarioLogado->getIdCargo());
		$ddep=new DDepartamento();
		$dep=$ddep->getById($cargo->getidDep());
		$dpdi=new DPDI();
		$sub=$dpdi->getBySubordinados($dep->getIdDep(),$cargo->getNivel(),$usuarioLogado->getIdUsuario());	
		$subordinados=array();
		if($cargo->getNivel()==0){
			$sub=$dpdi->getByEmpresa($this->_page->empresa->getIdEmpresa());	
			$subordinados=array();
		}
		foreach($sub as $subordinado){
			$duser=new DUsuario();
			$Fuser=$duser->getById($subordinado->getIdUsuario());
			$daocargo=new DCargo();
			$Fcargo=$daocargo->getById($Fuser->getidCargo());
			$daodep=new DDepartamento();
			$Fdep=$daodep->getById($Fcargo->getIdDep());
			$dusuario=new DUsuario();
			
			$daoPDI=new DPDI();
			$atualPDI=$daoPDI->getById($subordinado->getIdPDI());
			$autoavaliacao=false;
			$avaliacaoSupervisor=false;
			if($dusuario->getBySession()->getIdUsuario()==$atualPDI->getIdUsuario()){
				$autoavaliacao=true;
				$avaliacaoSupervisor=false;
			}else{
				$autoavaliacao=false;
				$duser=new DUsuario();
				$usuarioPDI=$duser->getById($atualPDI->getIdUsuario());
				$usuarioLogado=$duser->getById($this->_page->usuario->getIdUsuario());
				$dcargo=new DCargo();
				$cargoPDI=$dcargo->getById($usuarioPDI->getIdCargo());
				$cargoLogado=$dcargo->getById($usuarioLogado->getIdCargo());

				$avaliacaoSupervisor=(($cargoPDI->getNivel())==($cargoLogado->getNivel()+1));
			}
			$subordinados[]=array(
				"pdi"=>$subordinado,
				"user"=>$Fuser,
				"cargo"=>$Fcargo,
				"dep"=>$Fdep,
				"avaliacaoSupervisor"=>$avaliacaoSupervisor,

				
			);
		}

		$this->_page->getHeader();
		require_once("app/Views/pdi/tabela_pdi.php");
		$this->_page->getFooter();
	}
	public function fundamentos(){
		$pdiURL=getParam(2);
		if(getParam(2)==""||!is_numeric(getParam(2))){
			return;
		}
		$dfundamentos=new DFundamento();
		$fundamentos=$dfundamentos->getByEmpresa($this->_page->empresa->getIdEmpresa());	
		$dusuario=new DUsuario();
		$dpdi=new DPDI();
		$pdi=$dpdi->getById(getParam(2));
		$autoavaliacao=false;
		$avaliacaoSupervisor=false;
		if($dusuario->getBySession()->getIdUsuario()==$pdi->getIdUsuario()){
			$autoavaliacao=true;
			$avaliacaoSupervisor=false;
		}else{
			$autoavaliacao=false;
			$duser=new DUsuario();
			$usuarioPDI=$duser->getById($pdi->getIdUsuario());
			$usuarioLogado=$duser->getById($this->_page->usuario->getIdUsuario());
			$dcargo=new DCargo();
			$cargoPDI=$dcargo->getById($usuarioPDI->getIdCargo());
			$cargoLogado=$dcargo->getById($usuarioLogado->getIdCargo());

			$avaliacaoSupervisor=(($cargoPDI->getNivel())==($cargoLogado->getNivel()+1));
		}

		$this->_page->getHeader();
		require_once("app/Views/pdi/fundamentos.php");
		$this->_page->getFooter();
	}
	
}