<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Dane</title>
    <style>
        body {
            background-color: #1C2833;
        }
    </style>
</head>
<body>
    <div class="container py-5">  
        <div class="row justify-content-center">  
            <div class="col-md-5">  
                <div class="card border-primary">  
                    <div class="card-header bg-primary text-white text-center">  
                        <h4 class="card-title text-uppercase">Registrar trabajador</h4>  
                    </div>  
                    <div class="card-body">  
                        <form action="registrar2.php" method="post" class="needs-validation" novalidate onsubmit="return validarform()">  
                            <div class="mb-2">
                                <script>
                                    var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
                                    var diasSemana = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];
                                    var f = new Date();
                                    document.write(diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
                                </script>
                            </div>
                            <div class="row">  
                                <div class="col-sm-6 col-md-12 col-xs-12">  
                                    <div class="form-group mb-2">  
                                        <div class="input-group">
                                            <span class="input-group-text">Nombre:</span>
                                            <input type="text" aria-label="First name" id="nombre" name="nombre" class="form-control" required>
                                            <div class="invalid-feedback">  
                                                Ingresar nombre.  
                                            </div>                                            
                                        </div>
                                    </div>  
                                </div>  
                                <div class="col-sm-6 col-md-12 col-xs-12">  
                                    <div class="form-group mb-2">  
                                        <div class="input-group">
                                            <span class="input-group-text">Apellido:</span>
                                            <input type="text" aria-label="Last name" id="apellido" name="apellido" class="form-control" required>
                                            <div class="invalid-feedback">  
                                                Ingresar apellido.  
                                            </div>                                            
                                        </div>
                                    </div>  
                                </div>
                            </div>  
                            <div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <div class="input-group mb-2">
                                            <span class="input-group-text" id="basic-addon3">Edad:</span>
                                            <input type="number" class="form-control" id="edad" name="edad" maxlength="2" aria-describedby="basic-addon3" required>
                                            <div class="invalid-feedback">  
                                                Ingrese Edad.  
                                            </div>
                                        </div>    
                                    </div>  
                                </div>                                
                                <div class="col-sm-4 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <div class="input-group mb-2">
                                            <label class="input-group-text" for="inputGroupSelect01">Sexo:</label>
                                            <select class="form-select" id="sexo" name="sexo" required>
                                                <option selected disabled value="">seleccionar</option>
                                                <option value="Hombre">Hombre</option>
                                                <option value="Mujer">Mujer</option>                                              
                                            </select>
                                            <div class="invalid-feedback">
                                                Selecciona el sexo.
                                            </div>
                                        </div>
                                    </div>  
                                </div>  
                                <div class="col-sm-4 col-md-12 col-xs-12">  
                                    <div class="form-group"> 
                                        <div class="input-group mb-2">
                                            <span class="input-group-text" id="basic-addon3">Correo:</span>
                                            <input type="email" class="form-control" id="correo" name="correo" aria-describedby="basic-addon3" required>
                                            <div class="invalid-feedback">  
                                                Ingrese correo.  
                                            </div>
                                        </div> 
                                    </div>  
                                </div>  
                                <div class="col-sm-4 col-md-12 col-xs-12">  
                                    <div class="form-group">  
                                        <div class="input-group mb-3">
                                            <span class="input-group-text" id="basic-addon3">Télefono:</span>
                                            <input type="number" pattern="^\d{9}$" class="form-control" id="telefono" name="telefono" aria-describedby="basic-addon3" required>
                                            <div class="invalid-feedback">  
                                                Ingrese numero telefono.  
                                            </div>
                                        </div>
                                    </div>  
                                </div>  
                            </div>
                            <div class="form-group">
                                <label for="departamento">Departamento:</label>
                                <select class="form-control" id="departamento" name="departamento" onchange="updateMunicipios()" required>
                                    <option value="">Seleccione un departamento</option>
                                </select>
                                <div class="invalid-feedback">  
                                    Seleccione un departamento.  
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="municipio">Municipio:</label>
                                <select class="form-control" id="municipio" name="municipio" onchange="updateBarrios()" required>
                                    <option value="">Seleccione un municipio</option>
                                </select>
                                <div class="invalid-feedback">  
                                    Seleccione un municipio.  
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="barrio">Barrio:</label>
                                <select class="form-control" id="barrio" name="barrio" required>
                                    <option value="">Seleccione un barrio</option>
                                </select>
                                <div class="invalid-feedback">  
                                    Seleccione un barrio.  
                                </div>
                            </div>
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12 text-center">  
                                    <div class="float-right">  
                                        <button class="btn btn-danger rounded-0" type="reset">Limpiar</button>  
                                        <button class="btn btn-primary rounded-0" type="submit">Registrar</button>  
                                    </div>                            
                                </div>  
                            </div>  
                        </form>  
                    </div>  
                </div>  
            </div>  
        </div>  
    </div>  
    <!--
    Cargamos el archivo de JavaScript de Bootstrap Bundle,
    que contiene Popper.js, Tooltip.js, Popover.js, ScrollSpy.js, y más.
    La propiedad de integridad y crossorigin se establecen para mejorar la seguridad.
    Cargamos la biblioteca jQuery, necesaria para las solicitudes AJAX.
    Cargamos los archivos de JavaScript personalizados: scriptb.js y validate.js,
    que contienen código JavaScript personalizado.
    Los archivos de JavaScript personalizados se cargan después de la biblioteca de Bootstrap Bundle y jQuery.
    -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="javascript/scriptb.js"></script>
    <script src="javascript/validate.js"></script>
    <!--
    Agregamos un evento de escucha que se ejecuta cuando se dispara el evento DOMContentLoaded.
    Cuando se desencadena el evento DOMContentLoaded, se llama a la función cargarDepartamentos().
    -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            cargarDepartamentos();
        });

        /**
         * Cargamos la lista de departamentos a través de una solicitud AJAX.
         * La lista de departamentos se agrega al elemento de selección 'departamento'.
         */
        function cargarDepartamentos() {
            $.ajax({
                url: 'get_departamentos.php',
                method: 'GET',
                success: function(data) {
                    $('#departamento').append(data);
                }
            });
        }

        /**
         * Actualizamos la lista de municipios en función del departamento seleccionado.
         * La lista de municipios se carga a través de una solicitud AJAX y se agrega al elemento de selección 'municipio'.
         */
        function updateMunicipios() {
            var id_departamento = $('#departamento').val();
            $.ajax({
                url: 'get_municipios.php',
                method: 'GET',
                data: { id_departamento: id_departamento },
                success: function(data) {
                    $('#municipio').html('<option value="">Seleccione un municipio</option>').append(data);
                }
            });
        }

        /**
         * Actualiza la lista de barrios en base al municipio seleccionado.
         */
        function updateBarrios() {
            var id_municipio = $('#municipio').val();
            $.ajax({
                url: 'get_barrios.php',
                method: 'GET',
                data: { id_municipio: id_municipio },
                success: function(data) {
                    $('#barrio').html('<option value="">Seleccione un barrio</option>').append(data);
                }
            });
        }
    </script>
</body>
</html>
