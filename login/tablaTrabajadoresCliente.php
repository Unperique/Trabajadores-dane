<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Consulta DB</title>
</head>

<body>
<div class="container mt-3">
    <!-- Enlace para volver al menú principal -->
    <a class="btn btn-success" href="menuCliente.html">Atras</a>

    <!-- Conexión a la base de datos -->
    <?php
    // Configuración de la conexión
    $host = "localhost"; // Host de la base de datos
    $user = "root"; // Usuario de la base de datos
    $pass = ""; // Contraseña de la base de datos

    // Realizar la conexión a la base de datos
    $connection = mysqli_connect($host, $user, $pass);

    // Verificar si la conexión fue exitosa
    if (!$connection) {
        echo "<div class='alert alert-danger' role='alert'>No se ha podido conectar con el servidor: " . mysqli_error($connection) . "</div>";
        exit;
    }

    $datab = "rol"; // Nombre de la base de datos

    // Seleccionar la base de datos
    $db = mysqli_select_db($connection, $datab);

    // Verificar si la selección de la base de datos fue exitosa
    if (!$db) {
        echo "<div class='alert alert-danger' role='alert'>No se ha podido encontrar la base de datos</div>";
        exit;
    }

    // Consulta para obtener los datos de los trabajadores
    $consulta = "SELECT reg_user.id, reg_user.nombre, reg_user.apellido, reg_user.edad, reg_user.sexo, reg_user.correo, reg_user.telefono, departamento.departamento, municipio.municipio, barrio.barrio
                FROM reg_user
                INNER JOIN departamento ON reg_user.departamento = departamento.id_departamento
                INNER JOIN municipio ON reg_user.municipio = municipio.id_municipio
                INNER JOIN barrio ON reg_user.barrio = barrio.id_barrio";

    // Ejecutar la consulta en la base de datos
    $result = mysqli_query($connection, $consulta);

    // Verificar si la consulta fue exitosa
    if (!$result) {
        echo "<div class='alert alert-danger' role='alert'>No se ha podido realizar la consulta</div>";
        exit;
    }

    // Mostrar los datos en una tabla
    echo "<table class='table'>";
    echo "<thead class='thead-dark'>";
    echo "<tr>";
    echo "<th scope='col'>ID</th>";
    echo "<th scope='col'>Nombre</th>";
    echo "<th scope='col'>Apellido</th>";
    echo "<th scope='col'>Edad</th>";
    echo "<th scope='col'>Sexo</th>";
    echo "<th scope='col'>Correo</th>";
    echo "<th scope='col'>Teléfono</th>";
    echo "<th scope='col'>Departamento</th>";
    echo "<th scope='col'>Municipio</th>";
    echo "<th scope='col'>Barrio</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";

    // Recorrer los resultados de la consulta y mostrarlos en la tabla
    while ($colum = mysqli_fetch_array($result)) {
        echo "<tr>";
        echo "<td>" . $colum['id'] . "</td>";
        echo "<td>" . $colum['nombre'] . "</td>";
        echo "<td>" . $colum['apellido'] . "</td>";
        echo "<td>" . $colum['edad'] . "</td>";
        echo "<td>" . $colum['sexo'] . "</td>";
        echo "<td>" . $colum['correo'] . "</td>";
        echo "<td>" . $colum['telefono'] . "</td>";
        echo "<td>" . $colum['departamento'] . "</td>";
        echo "<td>" . $colum['municipio'] . "</td>";
        echo "<td>" . $colum['barrio'] . "</td>";
        echo "</tr>";
    }

    echo "</tbody>";
    echo "</table>";

    // Cerrar la conexión a la base de datos
    mysqli_close($connection);
    ?>
</div>

</body>
</html>