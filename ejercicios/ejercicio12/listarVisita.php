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
        $visitantes = [];
        if (file_exists("visitantes.json")) {
            $visitantes = json_decode(file_get_contents("visitantes.json"), true);
        }

        $contador = 0;

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nombre = $_POST["nombre"];
            $planeta = $_POST["planeta"];

            $visitantes[] = ["nombre" => $nombre, "planeta" => $planeta];

            file_put_contents("visitantes.json", json_encode($visitantes));
        }

        echo "<ul>";
        foreach ($visitantes as $visitante) {
            echo "<li>{$visitante['nombre']} - Planeta: {$visitante['planeta']}</li>";
            if ($visitante['planeta'] !== 'Tierra') {
                $contador++;
            }
        }
        echo "</ul>";

        echo "<p>Total de visitantes que no pertenecen a la Tierra: $contador</p>";
        ?>

        <p><a href="12.php">Volver</a></p>
    </main>

</body>

</html>