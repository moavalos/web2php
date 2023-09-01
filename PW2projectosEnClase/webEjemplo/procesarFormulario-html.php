<!DOCTYPE html>
<html>
<head>
    <title>Generador de Citas en Línea</title>
    <link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>
    <style>
        body {
            background-image: url('foto.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .container h2 {
            text-align: center;
        }
    </style>
</head>
<body>

<div class='container'>
    <h2>Resultado</h2>
    <?php
    include_once("functions.php");

    $nombre = $_POST['nombre'];
    $edad = $_POST["edad"];

    if (validarNombre($nombre)) {
        echo('el nombre no debe ser un número');
    } else {
        $nombreProcesado = ucfirst($nombre);
        echo "<div class='w3-card w3-red-pale'>";
        echo "<h2>Pretendentiente</h2>";
        echo "<div class='w3-center'>Hola  $nombreProcesado($edad)</div>";
        echo "</div>";
    }


    $intereses = isset($_POST["intereses"]) ? $_POST['intereses'] : [];

    if ($intereses != []) {
        echo "<div class='w3-card'><h2>Intereses</h2>";
        foreach ($intereses as $interes) {
            echo "<div class='w3-center'>" . $interes . "</div>";
        }
        echo '</div>';
    }

    ?>
</div>

</body>
</html>

