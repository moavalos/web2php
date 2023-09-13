<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 15</title>
    <style>
        main {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        p {
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h2>Busqueda de palabras</h2>
        <form action="" method="post">
            <label for="palabra">Palabra a buscar:</label>
            <input type="text" name="palabra" id="palabra" required>
            <br>
            <label for="texto">Texto:</label>
            <textarea name="texto" id="texto" rows="4" cols="50" required></textarea>
            <br>
            <input type="submit" value="Buscar">
        </form>

        <?php
        function buscar($clave, $texto)
        {
            $ocurrencias = 0;
            $clave = strtolower($clave); // para convertir la palabra clave y el texto en minuscula 
            $texto = strtolower($texto); 
            $claveLength = strlen($clave);
            $textoLength = strlen($texto);

            for ($i = 0; $i <= $textoLength - $claveLength; $i++) {
                $match = true;

                for ($j = 0; $j < $claveLength; $j++) {
                    if ($texto[$i + $j] !== $clave[$j]) {
                        $match = false;
                        break;
                    }
                }

                if ($match) {
                    $ocurrencias++;
                    $i += $claveLength - 1;
                }
            }

            return $ocurrencias;
        }

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $palabraClave = $_POST["palabra"];
            $texto = $_POST["texto"];

            $ocurrencias = buscar($palabraClave, $texto);
            echo "<p>Número de ocurrencias de '$palabraClave' en el texto: $ocurrencias</p>";
        }
        ?>
    </main>
</body>

</html>