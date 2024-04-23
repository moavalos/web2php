<?php
// Verificar si se ha enviado un nombre por el formulario
if(isset($_GET["nombre"])) {
    $nombre = $_GET["nombre"];

    // Escribir la cookie con el nombre proporcionado
    setcookie("nombre_cookie", $nombre, time() + 5);

    // Redirigir a la página actual para evitar el reenvío del formulario
    header("Location: localhost://cookie.php");
    exit();
}

// Recuperar el valor de la cookie si está establecida
if(isset($_COOKIE["nombre_cookie"])) {
    $nombre_guardado = $_COOKIE["nombre_cookie"];
    echo "Hola, $nombre_guardado. ¡Bienvenido de vuelta!";
} else {
    // Mostrar el formulario para ingresar el nombre
    echo '<form action="localhost://cookie.php" method="GET">';
    echo '<label for="nombre">¿Cómo te llamas?</label>';
    echo '<input type="text" id="nombre" name="nombre">';
    echo '<input type="submit" value="Enviar">';
    echo '</form>';
}
?>
