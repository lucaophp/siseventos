<?php

class Router {

    private $url;
    private $controller;
    private $controllerName;
    private $action;
    private $att;
    private $controle;
    public static $pageView;
    public static $dataView = array();
    public static $themeView = "app/Views/Themes/default/default.phtml";

    public function __construct(Array $url, $x) {
        $this->url = $url;
        if ((!is_integer($x)) || (!is_array($url))) {
            return;
        }
        if ($x == 0) {
            $this->setController('inicio');
        }


        if ($x > 0) {
            $this->setController($url[0]);
        }
        if ((!isset($url[1]) || $url[1] == "")) {
            $this->callAction("index");
        }
        if ($x == 2) {
            $this->callAction($url[1]);
        }
        if ($x > 2) {
            $this->callAction($url[1], 2, $x);
        }
        $this->callView();
    }

    public function setController($controle) {
        $this->controle = strtolower($controle);
        $controle = ucfirst($controle);
        $controle.="Controller";
        $this->controllerName = $controle;

        $this->controller = new $controle() or die();
    }

    public function callAction($action, $inicio = null, $fim = null) {

        $this->action = $action;

        $this->att = array();
        for ($i = $inicio; $i < $fim; $i++) {
            $this->att[$i - $inicio] = $this->url[$i];
        }

        if (method_exists($this->controllerName, $this->action)) {

            $this->page = $this->controller->$action($this->att);
            self::$themeView = "app/Views/Themes/" . $this->controle . "/default.phtml";
            self::$pageView = $this->controle . "/" . $this->action . ".phtml";

            if ((is_array($this->page)) && ((isset($this->page["data"])) || (isset($this->page["page"])) || (isset($this->page["theme"])))) {

                self::$themeView = isset($this->page["theme"]) ? $this->page["theme"] : self::$themeView;
                self::$dataView = isset($this->page["data"]) ? $this->page["data"] : self::$dataView;
                self::$pageView = isset($this->page["page"]) ? $this->page["page"] : self::$pageView;
            } else {
                self::$dataView = $this->page;
                self::$themeView = "app/Views/Themes/" . $this->controle . "/default.phtml";
            }
        } else {
            echo "Erro";
            exit();
        }
    }

    public function callView() {
        require_once("../app/Views/View.php");
        new View(self::$pageView, self::$dataView, self::$themeView);
    }

}
