/*
    Archivo: cliente.php
    Descripción: 
    Autor: Irene RODRIGUEZ RODRIGUEZ
    Fecha de creación: 30/01/2026
    Última modificación: 31/01/2026
*/
<?php
// cliente.php
require_once('datos.php');

$con = mysqli_connect($host, $user, $pass, $db_name);

if (!$con) {
    die("Error: No se pudo conectar a la BD. " . mysqli_connect_error());
}

mysqli_set_charset($con, "utf8mb4");

echo "<h2>Agenda de Contactos</h2>";

echo "<h3>Todos los contactos</h3>";
$query = "SELECT codigo as id, nombre, telefono, email, direccion, tipo 
        FROM contacto 
        ORDER BY codigo";
$res = mysqli_query($con, $query);

if ($res) {
    while ($contacto = mysqli_fetch_assoc($res)) {
        echo htmlspecialchars($contacto['nombre']) . " - " . htmlspecialchars($contacto['telefono']) . " - " . htmlspecialchars($contacto['email']) . "<br>";
    }
}

echo "<h3>Contactos personal</h3>";
$stmt = mysqli_prepare($con, "SELECT codigo as id, nombre, telefono, email, direccion, tipo 
                            FROM contacto 
                            WHERE tipo = ? 
                            ORDER BY codigo");
$tipo = "personal";
mysqli_stmt_bind_param($stmt, "s", $tipo);
mysqli_stmt_execute($stmt);
$res = mysqli_stmt_get_result($stmt);

if ($res) {
    while ($contacto = mysqli_fetch_assoc($res)) {
        echo htmlspecialchars($contacto['nombre']) . " - " . htmlspecialchars($contacto['telefono']) . "<br>";
    }
}
mysqli_stmt_close($stmt);

echo "<h3>Contactos trabajo</h3>";
$stmt = mysqli_prepare($con, "SELECT codigo as id, nombre, telefono, email, direccion, tipo 
                            FROM contacto 
                            WHERE tipo = ? 
                            ORDER BY codigo");
$tipo = "trabajo";
mysqli_stmt_bind_param($stmt, "s", $tipo);
mysqli_stmt_execute($stmt);
$res = mysqli_stmt_get_result($stmt);

if ($res) {
    while ($contacto = mysqli_fetch_assoc($res)) {
        echo htmlspecialchars($contacto['nombre']) . " - " . htmlspecialchars($contacto['telefono']) . "<br>";
    }
}
mysqli_stmt_close($stmt);

mysqli_close($con);
