<?php
/**
 * Deshabilita un usuario en la base de datos.
 *
 * Esta página se encarga de deshabilitar un usuario en la base de datos.
 * Recibe un identificador de usuario y un nuevo estado a través de un formulario POST.
 * Actualiza el estado del usuario en la base de datos.
 */

// Configuración de la conexión a la base de datos
$host = "localhost";
$user = "root";
$pass = "";
$datab = "rol";

$connection = mysqli_connect($host, $user, $pass, $datab);

if (!$connection) {
    // Si no se puede conectar a la base de datos, muestra el error y termina la ejecución
    die("No se ha podido conectar con el servidor: " . mysqli_error($connection));
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $id = $_POST['id'];
    $nuevoEstado = $_POST['nuevoEstado'];

    // Convertir el estado a un valor numérico (1 para Activo, 0 para Inactivo)
    $estadoValor = ($nuevoEstado === 'Activo') ? 1 : 0;

    // Construir la consulta SQL para actualizar el estado del usuario
    $query = "UPDATE reg_user SET estado = $estadoValor WHERE id = $id";

    // Ejecutar la consulta
    if (mysqli_query($connection, $query)) {
        // Si la consulta se ejecuta correctamente, envía un estado de éxito
        echo json_encode(['status' => 'success']);
    } else {
        // Si hay un error al ejecutar la consulta, envía un mensaje de error
        echo json_encode(['status' => 'error', 'message' => 'Error al actualizar el estado del usuario']);
    }
}

// Cerrar la conexión a la base de datos
mysqli_close($connection);
?>
