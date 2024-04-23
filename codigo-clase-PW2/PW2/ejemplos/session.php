<?php
// Iniciar o reanudar la sesión
session_start();

// Verificar si se ha enviado un nombre por el formulario
if(isset($_GET["nombre"])) {
    $nombre = $_GET["nombre"];

    // Guardar el nombre en una variable de sesión
    $_SESSION["nombre_session"] = $nombre;

    // Redirigir a la página actual para evitar el reenvío del formulario
    header("Location: " . $_SERVER['REQUEST_URI']);
    exit();
}

// Recuperar el valor de la variable de sesión si está establecida
if(isset($_SESSION["nombre_session"])) {
    $nombre_guardado = $_SESSION["nombre_session"];
    echo "Hola, $nombre_guardado. ¡Bienvenido de vuelta!";
} else {
    // Mostrar el formulario para ingresar el nombre
    echo '<form action="localhost://session.php" method="GET">';
    echo '<label for="nombre">¿Cómo te llamas?</label>';
    echo '<input type="text" id="nombre" name="nombre">';
    echo '<input type="submit" value="Enviar">';
    echo '</form>';
}
?>
