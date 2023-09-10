<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 10</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h1>Ver Imagen</h1>

        <?php
        if (isset($_GET['nombre'])) {
            $nombreImagen = $_GET['nombre'];
            $imagenesDir = '../img/';

            if (file_exists($imagenesDir . $nombreImagen)) {
                echo '<img src="' . $imagenesDir . $nombreImagen . '" alt="' . $nombreImagen . '">';
            } else {
                echo '<p>La imagen no existe.</p>';
            }
        } else {
            echo '<p>No se ha proporcionado un nombre de imagen válido.</p>';
        }
        ?>

        <p><a href="../ejercicio9/9.php">Volver a la galería</a></p>
    </main>
</body>

</html>