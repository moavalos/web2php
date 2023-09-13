<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Resultados</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <?php
        $dimension = isset($_POST['dimension']) ? intval($_POST['dimension']) : 0;

        if ($dimension <= 0) {
            echo "<p>La dimensión de la matriz debe ser un número mayor que cero.</p>";
        } else {
            $matriz = [];
            for ($i = 0; $i < $dimension; $i++) {
                for ($j = 0; $j < $dimension; $j++) {
                    $matriz[$i][$j] = rand(1, 100);
                }
            }

            echo "<h2>Matriz de $dimension x $dimension:</h2>";
            echo "<table border='1'>";
            for ($i = 0; $i < $dimension; $i++) {
                echo "<tr>";
                for ($j = 0; $j < $dimension; $j++) {
                    echo "<td>{$matriz[$i][$j]}</td>";
                }
                echo "</tr>";
            }
            echo "</table>";

            echo "<h2>Diagonal Principal:</h2>";
            echo "<ul>";
            for ($i = 0; $i < $dimension; $i++) {
                echo "<li>{$matriz[$i][$i]}</li>";
            }
            echo "</ul>";

            echo "<h2>Diagonal Secundaria:</h2>";
            echo "<ul>";
            for ($i = 0; $i < $dimension; $i++) {
                echo "<li>{$matriz[$i][$dimension - 1 - $i]}</li>";
            }
            echo "</ul>";

            $suma = 0;
            for ($i = 0; $i < $dimension; $i++) {
                for ($j = 0; $j < $dimension; $j++) {
                    $suma += $matriz[$i][$j];
                }
            }

            echo "<h2>Suma de todos los valores de la matriz:</h2>";
            echo "<p>$suma</p>";
        }
        ?>
    </main>
</body>

</html>