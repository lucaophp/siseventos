<?php
import("system/Log.php");
ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);
register_shutdown_function( "fatal_handler" );

function fatal_handler() {
    $error = error_get_last();
    
    if( $error !== NULL) {
        Log::getInstance("WARNING",$error);
        $errno   = $error["type"];
        $errfile = $error["file"];
        $errline = $error["line"];
        $errstr  = $error["message"];
        
        
    }
}
function alert($str) {
    echo "<script>alert('{$str}');</script>";
}
function back(){
    echo "<script>window.history.go(-1);</script>";
}

function import($name) {

    if (file_exists("../" . $name)) {
        require_once("../" . $name);
    } else {
        $name = str_replace(".", "/", $name);
        if (file_exists("../lib/{$name}.module.php"))
            require_once("../lib/{$name}.module.php");
        else
            throw new Exception("Biblioteca nao encontrada");
    }
}

function __autoload($classe) {
    if (file_exists("../app/Models/{$classe}.php")) {
        import("app/Models/{$classe}.php");
    } else if (file_exists("../app/Controllers/{$classe}.php")) {
        import("app/Controllers/{$classe}.php");
    } else if (file_exists("../app/Persistence/{$classe}.php")) {
        import("app/Persistence/{$classe}.php");
    } else if (file_exists("../system/{$classe}.php")) {
        import("system/{$classe}.php");
        if (method_exists("{$classe}", "main")) {

            $classe::main();
        }
    }else{
        echo "Erro!!!";
        die();
    }
}

function selectMime() {
    if (!is_dir($_GET['key'])) {
        if (file_exists($_GET["key"])) {
            $ext = pathinfo($_GET['key'], PATHINFO_EXTENSION);
            $ext = strtolower($ext);
            if ($ext == "php" && $_GET['key'] == "index.php") {
                
            } else
            if ($ext == "css") {
                header('Content-type: text/css; filename=' . $_GET['key']);
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "js") {
                header('Content-Type: application/javascript');
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "png") {
                header('Content-Type: image/png');
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "jpg") {
                header('Content-Type: image/jpeg');
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "gif") {
                header('Content-Type: image/gif');
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else

            if ($ext == "ico") {

                header("Content-Type: image/x-icon");
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "html" || $ext == "htm") {

                header("Content-Type: text/html");
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "php" || $ext == "phtml") {

                //header("Content-Type: text/php");
                require_once($_GET['key']);
                clearstatcache();
                exit();
            } else
            if ($ext == "xml") {

                header("Content-Type: text/xml");
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            }else
            if($ext=="pdf"){
                header("Content-Type: application/pdf");
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();

            }else
            if ($ext == "ttf") {

                header("Content-Type: application/octet-stream");
                echo file_get_contents($_GET['key']);
                clearstatcache();
                exit();
            }else{
                header('Content-disposition: attachment; filename=' . $_GET['key']);

            }

                
        }
    }
}

function array2xml($array, $xml = false) {
    if ($xml === false) {
        $xml = new SimpleXMLElement('<root/>');
    }
    foreach ($array as $key => $value) {
        if (is_array($value)) {
            array2xml($value, $xml->addChild($key));
        } else {
            $xml->addChild($key, $value);
        }
    }
    return $xml->asXML();
}

function session($name) {
    return ($_SESSION[$name]);
}

function get($name) {
    return ($_GET[$name]);
}

function post($name) {
    return ($_POST[$name]);
}
