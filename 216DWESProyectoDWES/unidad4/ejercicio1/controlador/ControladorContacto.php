<?php
require_once 'modelo/ModeloContacto.php';
require_once 'vista/VistaContacto.php';

class ControladorContacto {
    private $modelo;
    private $vista;

    public function __construct() {
        $this->modelo = new ModeloContacto();
        $this->vista = new VistaContacto();
    }

    public function listarContactos() {
        $contactos = $this->modelo->obtenerContactos();
        $this->vista->mostrarContactos($contactos);
    }

    public function agregarContacto() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $nombre = $_POST['nombre'];
            $telefono = $_POST['telefono'];
            $email = $_POST['email'];
            $this->modelo->agregarContacto($nombre, $telefono, $email);
        }
        $this->listarContactos(); // Redirige a listar después de agregar
    }
}
?>
