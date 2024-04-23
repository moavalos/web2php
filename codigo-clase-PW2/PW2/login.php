<?php
session_start();

if ( isset($_POST["usuario"]) &&  isset($_POST["pass"]) ){
    $usuario = $_POST["usuario"];
    $pass = $_POST["pass"];

    $esValido = consultarBD($usuario, $pass);

    if($esValido){
        $_SESSION["usuario"] = $usuario;

        header("location:home.php");
        exit();
    } else {
        header("location:index.php?error=1");
        exit();
    }

} else {
    header("location:index.php?error=2");
    exit();
}

function consultarBD($usuario, $pass)
{
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "test";

    // Crear conexión
    $conn = mysqli_connect($servername, $username, $password, $database);

    // Verificar la conexión
    if (!$conn) {
        die("Error al conectar con la base de datos: " . mysqli_connect_error());
    }

    // Realizar consulta
    $sql = "SELECT * FROM login WHERE usuario = '" . $usuario . "' && pass = '" . $pass . "'";
    $result = mysqli_query($conn, $sql);

    return mysqli_num_rows($result) == 1;
}