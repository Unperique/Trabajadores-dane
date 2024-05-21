<?php
/**
 * Este archivo realiza la validación de los usuarios en la base de datos.
 * Recibe los datos del formulario de login y verifica si el usuario y contraseña son correctos.
 * Si el usuario es administrador, lo redirige al menú de administrador, si es cliente al menú de cliente,
 * si no es ninguno de los dos, muestra un mensaje de error.
 */

//Se obtienen los datos del formulario de login
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];

session_start();

//Se guarda el nombre de usuario en la sesión
$_SESSION['usuario']=$usuario;

//Se establece la conexión a la base de datos
$conexion=mysqli_connect("localhost","root","","rol");

//Se realiza la consulta a la base de datos
$consulta="SELECT*FROM usuarios where usuario='$usuario' and contraseña='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

//Se obtiene el primer registro de la consulta
$filas=mysqli_fetch_array($resultado);

//Se verifica el tipo de usuario
if($filas['id_cargo']==1){ //administrador
    header("location:menuAdmin.html");
}else if($filas['id_cargo']==2){ //cliente
    header("location:menuCliente.html");
}else{
    //Si el usuario no es administrador o cliente, se muestra un mensaje de error
    include("index.html");
    ?>
    <h1 class="bad">ERROR EN LA AUTENTIFICACION</h1>
    <?php
}

//Se libera los resultados de la consulta y se cierra la conexión a la base de datos
mysqli_free_result($resultado);
mysqli_close($conexion);

