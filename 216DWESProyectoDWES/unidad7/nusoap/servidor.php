/*
    Archivo: servidor.php
    Descripción: 
    Autor: Irene RODRIGUEZ RODRIGUEZ
    Fecha de creación: 30/01/2026
    Última modificación: 31/01/2026
*/

<?php
// servidor.php - Servidor SOAP con NuSOAP

require_once('lib/nusoap.php');   // la librería NuSOAP
require_once('datos.php');        // datos de conexión

// Configurar error reporting
ini_set('display_errors', 0);
error_reporting(E_ALL);

$namespace = "http://localhost/LinkiaFP/DWES/UD07/nusoap/servidor.php";

// Crear instancia del servidor SOAP
$server = new soap_server();
$server->configureWSDL("AgendaContactos", $namespace);
$server->wsdl->schemaTargetNamespace = $namespace;
$server->soap_defencoding = 'UTF-8';

// ---------- Implementación de funciones ----------

/**
 * Lista todos los contactos de la agenda
 */
function listaContactos() {
    global $host, $user, $pass, $db_name;
    
    $agenda = array();
    $con = mysqli_connect($host, $user, $pass, $db_name);
    
    if (!$con) {
        return array(); 
    }
    
    // Configurar charset
    mysqli_set_charset($con, "utf8mb4");
    
    $query = "SELECT codigo as id, nombre, telefono, email, direccion, tipo FROM contacto ORDER BY codigo";
    $res = mysqli_query($con, $query);
    
    if ($res) {
        while($contacto = mysqli_fetch_assoc($res)){
            $contacto['id'] = (int)$contacto['id'];
            $agenda[] = $contacto;
        }
    }
    
    mysqli_close($con);
    return $agenda;
}

/**
 * Lista contactos por tipo (personal o trabajo)
 */
function listaPorTipo($tipo) {
    global $host, $user, $pass, $db_name;
    
    $agenda = array();
    $con = mysqli_connect($host, $user, $pass, $db_name);
    
    if (!$con) {
        return array(); 
    }
    
    // Configurar charset
    mysqli_set_charset($con, "utf8mb4");
    
    // Preparar la consulta
    $stmt = mysqli_prepare($con, "SELECT codigo as id, nombre, telefono, email, direccion, tipo FROM contacto WHERE tipo = ? ORDER BY codigo");
    
    if (!$stmt) {
        mysqli_close($con);
        return array();
    }
    
    // Vincular parámetros
    mysqli_stmt_bind_param($stmt, "s", $tipo);
    
    // Ejecutar
    mysqli_stmt_execute($stmt);
    
    // Obtener resultados
    $res = mysqli_stmt_get_result($stmt);
    
    if ($res) {
        while($contacto = mysqli_fetch_assoc($res)){
            $contacto['id'] = (int)$contacto['id'];
            $agenda[] = $contacto;
        }
    }
    
    mysqli_stmt_close($stmt);
    mysqli_close($con);
    
    return $agenda;
}

// ---------- Definición de tipos complejos para WSDL ----------

// Definir tipo Contacto (estructura)
$server->wsdl->addComplexType(
    'Contacto',
    'complexType',
    'struct',
    'all',
    '',
    array(
        'id' => array('name'=>'id','type'=>'xsd:int'),
        'nombre' => array('name'=>'nombre','type'=>'xsd:string'),
        'telefono' => array('name'=>'telefono','type'=>'xsd:string'),
        'email'  => array('name'=>'email','type'=>'xsd:string'),
        'direccion' => array('name'=>'direccion','type'=>'xsd:string'),
        'tipo' => array('name'=>'tipo','type'=>'xsd:string')
    )
);

// Array de Contactos
$server->wsdl->addComplexType(
    'ArrayContactos',
    'complexType',
    'array',
    '',
    'SOAP-ENC:Array',
    array(),
    array(
        array('ref'=>'SOAP-ENC:arrayType','wsdl:arrayType'=>'tns:Contacto[]')
    ),
    'tns:Contacto'
);

// ---------- Registro de métodos ----------

$server->register(
    'listaContactos',
    array(),
    array('return'=>'tns:ArrayContactos'),
    $namespace,
    false,
    'rpc',
    'encoded',
    'Devuelve todos los contactos de la agenda'
);

$server->register(
    'listaPorTipo',
    array('tipo'=>'xsd:string'),
    array('return'=>'tns:ArrayContactos'),
    $namespace,
    false,
    'rpc',
    'encoded',
    'Devuelve contactos filtrados por tipo (personal o trabajo)'
);

// ---------- Procesar solicitud SOAP ----------

// Obtener los datos POST
$input = file_get_contents('php://input');
if (empty($input)) {
    $input = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
}

// Si no hay datos POST pero hay ?wsdl en la query, NuSOAP lo maneja automáticamente
// Si hay datos POST, procesar la solicitud SOAP
if (!empty($input)) {
    $server->service($input);
} else {
    // NuSOAP maneja automáticamente ?wsdl
    $server->service($input);
}
?>
