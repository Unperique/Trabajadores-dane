<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS para el diseño responsivo -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Consulta DB</title>
    <!-- Hoja de estilo personalizada -->
    <link rel="stylesheet" href="css/tabla.css">
    <!-- jQuery para facilitar la manipulación del DOM y AJAX -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
        .inactive {
            background-color: red;
            color: black;
        }
    </style>
    <script>
        $(document).ready(function(){
            // Al cargar la página, cargar los estados almacenados localmente y aplicarlos a las filas
            loadLocalStates();
        });

        function loadLocalStates() {
            // Cargar los estados de las filas desde el almacenamiento local
            for (var i = 1; i <= localStorage.length; i++) {
                var key = localStorage.key(i - 1);
                var state = localStorage.getItem(key);
                if (state === 'inactive') {
                    $('#row_' + key).addClass('inactive');
                }
            }
        }

        function editRow(id) {
            // Obtener la fila a editar por ID
            var row = document.getElementById("row_" + id);
            var cells = row.getElementsByTagName("td");
            var nombre = cells[1].innerText;
            var apellido = cells[2].innerText;
            var edad = cells[3].innerText;
            var sexo = cells[4].innerText;
            var correo = cells[5].innerText;
            var telefono = cells[6].innerText;
            var departamento = cells[7].innerText;
            var municipio = cells[8].innerText;
            var barrio = cells[9].innerText;

            // Mostrar el modal de edición y llenar los campos con los valores actuales
            document.getElementById('editModal').style.display = 'block';
            document.getElementById('edit_id').value = id;
            document.getElementById('edit_nombre').value = nombre;
            document.getElementById('edit_apellido').value = apellido;
            document.getElementById('edit_edad').value = edad;
            document.getElementById('edit_sexo').value = sexo;
            document.getElementById('edit_correo').value = correo;
            document.getElementById('edit_telefono').value = telefono;

            // Cargar los selectores de departamento, municipio y barrio
            cargarSelectoresDepartamento(departamento, municipio, barrio);
        }

        function disableRow(id) {
            var row = document.getElementById("row_" + id);
            var estadoCell = row.getElementsByTagName('td')[10]; // Índice de la columna Estado
            var nuevoEstado = (estadoCell.textContent.trim() === 'Activo') ? 'Inactivo' : 'Activo';

            // Cambiar el estado visualmente
            estadoCell.textContent = nuevoEstado;
            if (nuevoEstado === 'Inactivo') {
                row.classList.add('inactive');
            } else {
                row.classList.remove('inactive');
            }

            // Guardar el estado en el almacenamiento local
            localStorage.setItem(id, nuevoEstado);

            // Enviar solicitud AJAX para actualizar el estado en la base de datos
            $.ajax({
                url: 'deshabilitar_usuario.php',
                method: 'POST',
                data: { id: id, nuevoEstado: nuevoEstado },
                success: function(response) {
                    var data = JSON.parse(response);
                    if (data.status !== 'success') {
                        alert('Error al actualizar el estado del usuario');
                        // Revertir cambios visuales en caso de error
                        estadoCell.textContent = (nuevoEstado === 'Activo') ? 'Inactivo' : 'Activo';
                        if (nuevoEstado === 'Activo') {
                            row.classList.remove('inactive');
                        } else {
                            row.classList.add('inactive');
                        }
                    }
                },
                error: function() {
                    alert('Error en la solicitud AJAX');
                    // Revertir cambios visuales en caso de error
                    estadoCell.textContent = (nuevoEstado === 'Activo') ? 'Inactivo' : 'Activo';
                    if (nuevoEstado === 'Activo') {
                        row.classList.remove('inactive');
                    } else {
                        row.classList.add('inactive');
                    }
                }
            });
        }

        function closeModal() {
            document.getElementById('editModal').style.display = 'none';
        }

        function saveChanges() {
            var id = document.getElementById('edit_id').value;
            var nombre = document.getElementById('edit_nombre').value;
            var apellido = document.getElementById('edit_apellido').value;
            var edad = document.getElementById('edit_edad').value;
            var sexo = document.getElementById('edit_sexo').value;
            var correo = document.getElementById('edit_correo').value;
            var telefono = document.getElementById('edit_telefono').value;
            var departamento = document.getElementById('edit_departamento').value;
            var municipio = document.getElementById('edit_municipio').value;
            var barrio = document.getElementById('edit_barrio').value;

            console.log("Datos a enviar:", {
                id, nombre, apellido, edad, sexo, correo, telefono, departamento, municipio, barrio
            });

            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    console.log("Respuesta del servidor:", xhr.responseText);
                    closeModal();
                    refreshPage();
                }
            };
            xhr.open("POST", "guardar_cambios.php", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.send("id=" + id + "&nombre=" + nombre + "&apellido=" + apellido + "&edad=" + edad + "&sexo=" + sexo + "&correo=" + correo + "&telefono=" + telefono + "&departamento=" + departamento + "&municipio=" + municipio + "&barrio=" + barrio);
        }

        function cargarSelectoresDepartamento(departamento, municipio, barrio) {
            // Cargar los departamentos en el selector
            $.ajax({
                url: 'get_departamentos.php',
                method: 'GET',
                success: function(data) {
                    $('#edit_departamento').html('<option value="">Seleccione un departamento</option>').append(data);
                    $('#edit_departamento').val(departamento);

                    if (departamento) {
                        cargarMunicipios(departamento, municipio, barrio);
                    }
                }
            });

            $('#edit_departamento').on('change', function() {
                var id_departamento = $(this).val();
                cargarMunicipios(id_departamento, null, null);
            });

            $('#edit_municipio').on('change', function() {
                var id_municipio = $(this).val();
                cargarBarrios(id_municipio, null);
            });
        }

        function cargarMunicipios(departamento, municipio, barrio) {
            // Cargar los municipios en el selector
            $.ajax({
                url: 'get_municipios.php',
                method: 'GET',
                data: { id_departamento: departamento },
                success: function(data) {
                    $('#edit_municipio').html('<option value="">Seleccione un municipio</option>').append(data);
                    if (municipio) {
                        $('#edit_municipio').val(municipio);
                        cargarBarrios(municipio, barrio);
                    }
                }
            });
        }

        function cargarBarrios(municipio, barrio) {
            // Cargar los barrios en el selector
            $.ajax({
                url: 'get_barrios.php',
                method: 'GET',
                data: { id_municipio: municipio },
                success: function(data) {
                    $('#edit_barrio').html('<option value="">Seleccione un barrio</option>').append(data);
                    if (barrio) {
                        $('#edit_barrio').val(barrio);
                    }
                }
            });
        }

        function refreshPage() {
            // Recargar la página para actualizar los datos
            location.reload();
        }

        function searchCity() {
            // Filtrar las filas de la tabla por municipio
            var input = document.getElementById('searchInput');
            var filter = input.value.toUpperCase();
            var table = document.getElementById('dataTable');
            var tr = table.getElementsByTagName('tr');

            for (var i = 1; i < tr.length; i++) {
                var td = tr[i].getElementsByTagName('td')[8];
                if (td) {
                    var txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = '';
                    } else {
                        tr[i].style.display = 'none';
                    }
                }
            }
        }

        window.onclick = function(event) {
            // Cerrar el modal al hacer clic fuera del mismo
            var modal = document.getElementById('editModal');
            if (event.target == modal) {
                closeModal();
            }
        }
    </script>
</head>
<body>

<?php
$host = "localhost";
$user = "root";
$pass = "";

// Conexión a la base de datos
$connection = mysqli_connect($host, $user, $pass);

if (!$connection) {
    die("No se ha podido conectar con el servidor: " . mysqli_error($connection));
} else {
    echo "<b><h4>Hemos conectado al servidor</h4></b>";
}

$datab = "rol";
$db = mysqli_select_db($connection, $datab);

if (!$db) {
    die("No se ha podido encontrar la Tabla");
} else {
    echo "<h3>Tabla seleccionada:</h3>";
}

// Consulta para obtener los datos de la base de datos
$consulta = "SELECT reg_user.id, reg_user.nombre, reg_user.apellido, reg_user.edad, reg_user.sexo, reg_user.correo, reg_user.telefono, departamento.departamento, municipio.municipio, barrio.barrio, estado.estado FROM reg_user INNER JOIN departamento ON reg_user.departamento = departamento.id_departamento INNER JOIN municipio ON reg_user.municipio = municipio.id_municipio INNER JOIN barrio ON reg_user.barrio = barrio.id_barrio INNER JOIN estado ON reg_user.estado = estado.id_estado";
$result = mysqli_query($connection, $consulta);
if (!$result) {
    die("No se ha podido realizar la consulta");
}
?>

<div class="container">
    <!-- Botón para volver al menú anterior -->
    <a class="btn btn-success mb-3" href="menuAdmin.html">Atras</a>
    <!-- Input para buscar por municipio -->
    <input type="text" id="searchInput" onkeyup="searchCity()" placeholder="Buscar por municipio" class="form-control mb-3">
    <div class="text-center">
        <table class="table text-center" id="dataTable"> <!-- Añadimos la clase text-center a la tabla -->
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Edad</th>
                    <th>Sexo</th>
                    <th>Correo</th>
                    <th>Teléfono</th>
                    <th>Departamento</th>
                    <th>Municipio</th>
                    <th>Barrio</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
            <?php
            // Generar las filas de la tabla con los datos obtenidos
            while ($colum = mysqli_fetch_array($result)) {
                echo "<tr id='row_" . $colum['id'] . "' class='" . ($colum['estado'] == 1 ? "" : "inactive") . "'>";
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
                echo "<td>" . ($colum['estado'] == 1 ? "Activo" : "Inactivo") . "</td>";
                echo "<td>
                    <button class='btn btn-primary' onclick='editRow(" . $colum['id'] . ")'>Editar</button>
                    <button class='btn btn-danger' onclick='disableRow(" . $colum['id'] . ")'>Accion</button>
                </td>";
                echo "</tr>";
            }
            ?>
            </tbody>
        </table>
    </div>
</div>

<?php mysqli_close($connection); ?>

<!-- Modal para editar registros -->
<div id="editModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Editar Registro</h2>
        <form>
            <input type="hidden" id="edit_id">
            Nombre: <input type="text" id="edit_nombre" class="form-control"><br>
            Apellido: <input type="text" id="edit_apellido" class="form-control"><br>
            Edad: <input type="text" id="edit_edad" class="form-control"><br>
            Sexo: <input type="text" id="edit_sexo" class="form-control"><br>
            Correo: <input type="text" id="edit_correo" class="form-control"><br>
            Teléfono: <input type="text" id="edit_telefono" class="form-control"><br>
            Departamento:
            <select id="edit_departamento" class="form-control"></select><br>
            Municipio:
            <select id="edit_municipio" class="form-control"></select><br>
            Barrio:
            <select id="edit_barrio" class="form-control"></select><br>
            <button type="button" onclick="saveChanges()" class="btn btn-success">Guardar Cambios</button>
        </form>
    </div>
</div>

</body>
</html>