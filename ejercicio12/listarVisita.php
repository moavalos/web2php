<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Listar visita</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h1>Lista de Visitantes no Terrestres</h1>

        <?php
        $archivo = 'visitas.json';

        if (file_exists($archivo)) {
            $visitas = json_decode(file_get_contents($archivo), true);

            $contadorNoTerrestres = 0;

            echo '<ul>';
            foreach ($visitas as $visita) {
                echo '<li>' . $visita['nombre'] . ' (' . $visita['planeta'] . ')</li>';
                if ($visita['planeta'] !== 'Tierra') {
                    $contadorNoTerrestres++;
                }
            }
            echo '</ul>';

            echo '<p>Total de visitas no terrestres: ' . $contadorNoTerrestres . '</p>';
        } else {
            echo '<p>No hay visitantes registrados.</p>';
        }
        ?>

        <p><a href="11.php">Volver</a></p>
    </main>

</body>

</html>