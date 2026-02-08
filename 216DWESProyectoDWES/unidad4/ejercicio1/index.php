<?php
require_once 'controlador/ControladorContacto.php';

$controlador = new ControladorContacto();
$accion = isset($_GET['action']) ? $_GET['action'] : 'listar';

switch ($accion) {
    case 'agregar':
        $controlador->agregarContacto();
        break;
    default:
        $controlador->listarContactos();
        break;
}
?>