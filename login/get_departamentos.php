<?php
/**
 * Este script PHP se conecta a una base de datos MySQL y recupera una lista de departamentos.
 * Luego genera opciones HTML para un elemento select y las muestra en el navegador.
 */

// Configuración de la conexión a la base de datos
$host = "localhost";
$user = "root";
$pass = "";
$datab = "rol";

// Conexión a la base de datos
$connection = mysqli_connect($host, $user, $pass, $datab);

// Verificar la conexión
if (!$connection) {
    die("No se ha podido conectar al servidor: " . mysqli_error($connection));
}

// Preparar la consulta SQL
$query = "SELECT id_departamento, departamento FROM departamento";

// Ejecutar la consulta
$result = mysqli_query($connection, $query);

// Inicializar la cadena de opciones HTML
$options = "";

// Recorrer los resultados de la consulta y generar opciones
while ($row = mysqli_fetch_assoc($result)) {
    $options .= "<option value='" . $row['id_departamento'] . "'>" . $row['departamento'] . "</option>";
}

// Mostrar las opciones en el navegador
echo $options;

// Cerrar la conexión a la base de datos
mysqli_close($connection);
?>

