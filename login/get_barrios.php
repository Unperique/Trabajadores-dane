<?php
/**
 * Este archivo se encarga de obtener los barrios de un municipio específico
 * y devolverlos en formato de opciones HTML para ser utilizados en un
 * select en HTML.
 */

// Configuración de la conexión a la base de datos
$host = "localhost";
$user = "root";
$pass = "";
$db = "rol";

// Realizar la conexión a la base de datos
$connection = mysqli_connect($host, $user, $pass, $db);

// Verificar si la conexión fue exitosa
if (!$connection) {
  // Si no se pudo conectar, imprimir un mensaje de error y terminar la ejecución
  die("No se ha podido conectar con el servidor: " . mysqli_connect_error());
}

// Obtener el ID del municipio desde la URL
$id_municipio = $_GET['id_municipio'];

// Construir la consulta SQL para obtener los barrios del municipio
$query = "SELECT id_barrio, barrio FROM barrio WHERE id_municipio = '$id_municipio'";

// Ejecutar la consulta
$result = mysqli_query($connection, $query);

// Inicializar la variable para almacenar las opciones HTML
$options = "";

// Recorrer los resultados de la consulta
while ($row = mysqli_fetch_assoc($result)) {
  // Construir una opción HTML para cada barrio y agregarla a la variable $options
  $options .= "<option value='{$row['id_barrio']}'>{$row['barrio']}</option>";
}

// Imprimir las opciones HTML
echo $options;

// Cerrar la conexión a la base de datos
mysqli_close($connection);
?>

