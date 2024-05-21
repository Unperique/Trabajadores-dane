<?php
// Conecta a la base de datos y realiza un registro de nuevo usuario

// Conexión a la base de datos
$host = "localhost";
$user = "root";
$pass = "";
$db = "rol";

$connection = mysqli_connect($host, $user, $pass, $db);

if (!$connection) {
    // Si no se puede conectar a la base de datos, muestra un mensaje de error y termina el script
    echo "No se ha podido conectar con el servidor: " . mysqli_connect_error();
    exit;
}

// Registrar nuevo usuario
if (isset($_POST['nombre']) && isset($_POST['apellido']) && isset($_POST['edad']) && isset($_POST['sexo']) && isset($_POST['correo']) && isset($_POST['telefono']) && isset($_POST['departamento']) && isset($_POST['municipio']) && isset($_POST['barrio'])) {
    // Recoger los datos del formulario
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $edad = $_POST['edad'];
    $sexo = $_POST['sexo'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $departamento = $_POST['departamento'];
    $municipio = $_POST['municipio'];
    $barrio = $_POST['barrio'];

    // Crear la consulta SQL
    $sql = "INSERT INTO reg_user (nombre, apellido, edad, sexo, correo, telefono, departamento, municipio, barrio) VALUES ('$nombre', '$apellido', $edad, '$sexo', '$correo', '$telefono', '$departamento', '$municipio', '$barrio')";

    // Ejecutar la consulta y comprobar si ha sido exitosa
    if (mysqli_query($connection, $sql)) {
        // Si la consulta ha sido exitosa, muestra un mensaje de éxito
        echo "<div class='alert alert-success mt-3'>Usuario registrado correctamente.</div>";
    } else {
        // Si ha habido un error, muestra un mensaje de error con el mensaje de error devuelto por MySQL
        echo "<div class='alert alert-danger mt-3'>Error al registrar el usuario: " . mysqli_error($connection) . "</div>";
    }
}
