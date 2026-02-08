<?php
class VistaContacto {
    public function mostrarContactos($contactos) {
        echo "<h1>Agenda de Contactos</h1>";
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Nombre</th><th>Teléfono</th><th>Email</th></tr>";
        foreach ($contactos as $contacto) {
            echo "<tr><td>{$contacto['id']}</td><td>{$contacto['nombre']}</td><td>{$contacto['telefono']}</td><td>{$contacto['email']}</td></tr>";
        }
        echo "</table>";
        echo "<form method='POST' action='index.php?action=agregar'>";
        echo "Nombre: <input type='text' name='nombre' required><br>";
        echo "Teléfono: <input type='text' name='telefono' required><br>";
        echo "Email: <input type='email' name='email' required><br>";
        echo "<button type='submit'>Agregar Contacto</button>";
        echo "</form>";
    }
}
?>