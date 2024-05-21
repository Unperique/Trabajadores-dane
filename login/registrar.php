<?php
    // Se obtienen los datos enviados por el formulario
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $edad = $_POST['edad'];
    $sexo = $_POST['sexo'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $departamento = $_POST['departamento'];
    $municipio = $_POST['municipio'];
    $barrio = $_POST['barrio'];

    // Se obtiene la fecha actual
    $fechaRegistro = date("d/m/y H:i a");
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paso de Valores</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #1C2833;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row mt-4 justify-content-center">
            <div class="col-sm-12 col-lg-6">
                <div class="card border-primary">
                    <div class="card-header bg-primary text-white text-center">
                        <h3>Trabajadores Registrados</h3>
                    </div>
                    <div class="card-body">
                        <!-- Se muestra la información capturada -->
                        <p><b>Fecha de Registro:</b> <?php echo $fechaRegistro; ?></p>
                        <p><b>Nombres:</b> <?php echo $nombre; ?></p>
                        <p><b>Apellidos:</b> <?php echo $apellido; ?></p>
                        <p><b>Edad:</b> <?php echo $edad; ?></p>
                        <p><b>Sexo:</b> <?php echo $sexo; ?></p>
                        <p><b>Correo:</b> <?php echo $correo; ?></p>
                        <p><b>Teléfono:</b> <?php echo $telefono; ?></p>
                        <p><b>Departamento:</b> <?php echo $departamento; ?></p>
                        <p><b>Municipio:</b> <?php echo $municipio; ?></p>
                        <p><b>Barrio:</b> <?php echo $barrio; ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

