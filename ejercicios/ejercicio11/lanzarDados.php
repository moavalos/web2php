<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lanzar dados</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h1>Resultado de Lanzamiento de Dados</h1>

        <?php
        if (isset($_POST['cantidadDados'])) {
            $cantidadDados = $_POST['cantidadDados'];
            $puntajeTotal = 0;

            echo '<p>Lanzando ' . $cantidadDados . ' dado(s):</p>';
            echo '<div class="dados-container">';

            for ($i = 1; $i <= $cantidadDados; $i++) {
                $valorDado = rand(1, 6);
                $puntajeTotal += $valorDado;
                echo '<img src="dado' . $valorDado . '.png" alt="Dado ' . $i . '">';
            }

            echo '</div>';
            echo '<p>Puntaje total obtenido: ' . $puntajeTotal . '</p>';
        } else {
            echo '<p>No se ha proporcionado una cantidad de dados válida.</p>';
        }
        ?>

        <p><a href="11.php">Volver</a></p>

    </main>
</body>

</html>