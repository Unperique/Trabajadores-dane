<?php
/**
 * Este script obtiene los municipios de un departamento de la base de datos "rol"
 * y devuelve una lista de opciones HTML para un <select> en un formulario.
 */

// Datos de conexión a la base de datos
$host = "localhost";
$user = "root";
$pass = "";
$db = "rol";

// Conexión a la base de datos
$connection = mysqli_connect($host, $user, $pass, $db);

// Verificamos si la conexión fue exitosa
if (!$connection) {
  // Si no, muestra un mensaje de error y finaliza el script
  die("No se ha podido conectar con el servidor: " . mysqli_connect_error());
}

// Obtenemos el ID del departamento desde la URL
$id_departamento = $_GET['id_departamento'];

// Construimos la consulta SQL
$query = "SELECT id_municipio, municipio FROM municipio WHERE id_departamento = '$id_departamento'";

// Ejecutamos la consulta
$result = mysqli_query($connection, $query);

// Inicializamos la variable que almacenará las opciones
$options = "";

// Recorremos los resultados de la consulta
while ($row = mysqli_fetch_assoc($result)) {
  // Creamos una opción HTML para cada municipio
  $options .= "<option value='{$row['id_municipio']}'>{$row['municipio']}</option>";
}

// Imprimimos las opciones
echo $options;

// Cerrar la conexión a la base de datos
mysqli_close($connection);

