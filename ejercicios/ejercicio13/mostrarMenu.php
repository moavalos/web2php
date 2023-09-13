<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Menú Seleccionado</title>
    <style>
        main {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #333;
            text-align: center;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        p {
            text-align: center;
        }
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["elementos"])) {
            $menu = parse_ini_file("menu.ini");

            $elementosSeleccionados = $_POST["elementos"];

            echo "<ul>";
            foreach ($elementosSeleccionados as $elemento) {
                if (isset($menu[$elemento])) {
                    echo "<li>{$menu[$elemento]}</li>";
                }
            }
            echo "</ul>";
        } else {
            echo "<p>No se seleccionaron elementos del menú.</p>";
        }
        ?>
    </main>
</body>

</html>