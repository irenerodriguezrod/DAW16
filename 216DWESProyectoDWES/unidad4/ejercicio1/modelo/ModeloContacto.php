<?php
class ModeloContacto {
    private $contactos = [
        ['id' => 1, 'nombre' => 'Juan Pérez', 'telefono' => '123-456-7890', 'email' => 'juan@example.com'],
        ['id' => 2, 'nombre' => 'Ana López', 'telefono' => '098-765-4321', 'email' => 'ana@example.com']
    ];

    public function obtenerContactos() {
        return $this->contactos;
    }

    public function agregarContacto($nombre, $telefono, $email) {
        $id = count($this->contactos) + 1;
        $this->contactos[] = ['id' => $id, 'nombre' => $nombre, 'telefono' => $telefono, 'email' => $email];
        return $this->contactos;
    }
}
?>
