<?php
// procesar.php - Lógica del servidor para la agenda

$nombre = $_POST['nombre'] ?? '';
$telefono = $_POST['telefono'] ?? '';
$tipo = $_POST['tipo'] ?? '';

// Campos extra según tipo
$extras = $_POST;

// Validación 
if ($nombre === '' || $telefono === '') {
    echo "<span style='color:red;'>Faltan campos obligatorios.</span>";
    exit;
}

// Simulación de contactos "existentes" en agenda
$contactosExistentes = [
    ["nombre"=>"Ana Gómez", "telefono"=>"666777888"],
    ["nombre"=>"Pepe Ruiz", "telefono"=>"600123456"]
];

// Validar duplicado por nombre o teléfono
foreach ($contactosExistentes as $c) {
    if (strtolower($c["nombre"]) === strtolower($nombre)) {
        echo "<span style='color:red;'>Ya existe un contacto con ese nombre.</span>";
        exit;
    }

    if ($c["telefono"] === $telefono) {
        echo "<span style='color:red;'>El número ya está guardado en la agenda.</span>";
        exit;
    }
}

// Si todo OK se hace un guardado simulado
echo "<span style='color:green;'>Contacto añadido correctamente.</span><br>";
echo "Nombre: $nombre<br>";
echo "Teléfono: $telefono<br>";
echo "Tipo: $tipo<br>";

// Mostrar campos extra del contacto
echo "<h4>Campos extra:</h4>";
foreach ($extras as $k => $v) {
    if (!in_array($k, ["nombre","telefono","tipo"])) {
        echo ucfirst($k) . ": " . htmlspecialchars($v) . "<br>";
    }
}
