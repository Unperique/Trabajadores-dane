<?php
$host = "localhost";
$user = "root";
$pass = "";
$datab = "rol";

// Establecer conexión a la base de datos
$connection = mysqli_connect($host, $user, $pass, $datab);

if (!$connection) {
    die("No se ha podido conectar con el servidor: " . mysqli_error($connection));
}

// Verificar si los datos POST están configurados
if (
    isset($_POST['id']) && isset($_POST['nombre']) && isset($_POST['apellido']) && 
    isset($_POST['edad']) && isset($_POST['sexo']) && isset($_POST['correo']) && 
    isset($_POST['telefono']) && isset($_POST['departamento']) && 
    isset($_POST['municipio']) && isset($_POST['barrio'])
) {
    $id = $_POST['id'];
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $edad = $_POST['edad'];
    $sexo = $_POST['sexo'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $departamento = $_POST['departamento'];
    $municipio = $_POST['municipio'];
    $barrio = $_POST['barrio'];

    // Depuración: imprimir los valores recibidos
    error_log("Datos recibidos: ID: $id, Nombre: $nombre, Apellido: $apellido, Edad: $edad, Sexo: $sexo, Correo: $correo, Teléfono: $telefono, Departamento: $departamento, Municipio: $municipio, Barrio: $barrio");

    // Crear la consulta SQL para actualizar los datos
    $query = "UPDATE reg_user SET nombre='$nombre', apellido='$apellido', edad='$edad', sexo='$sexo', correo='$correo', telefono='$telefono', departamento='$departamento', municipio='$municipio', barrio='$barrio' WHERE id='$id'";

    // Ejecutar la consulta SQL
    if (mysqli_query($connection, $query)) {
        echo "Registro actualizado correctamente";
    } else {
        // Mostrar el error específico de la consulta SQL
        echo "Error al actualizar el registro: " . mysqli_error($connection);
    }
} else {
    // Mostrar mensaje de error si faltan datos POST
    echo "Error: Faltan datos en la solicitud.";
}

// Cerrar la conexión a la base de datos
mysqli_close($connection);
?>
