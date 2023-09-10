<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 7</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f5f5f5;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        h2 {
            color: #333;
            text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.1);
            border-bottom: 1px solid #333;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        p {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
<h1>Mora Avalos</h1>
<?php
echo "<h3>EJERCICIO 1</h3>";
echo "<p>Esta funcionalidad muestra el resultado del semáforo utilizando distintas funciones.</p><br>";
/*require_once "ejercicio1/1.php";

$color = "verde";

$estadoA = semaforoA($color);
$estadoB = semaforoB($color);
$estadoC = semaforoC($color);

echo "Estado correspondiente (semaforoA): $estadoA";
echo "Estado correspondiente (semaforoB): $estadoB";
echo "Estado correspondiente (semaforoC): $estadoC";*/

echo "<h3>EJERCICIO 2</h3><br>";
echo "<p>Esta funcionalidad calcula el resultado del binomio cuadrado perfecto.<br></p>";
require_once "ejercicio2/2.php";

$a = 3;
$b = 4;

$resultado_a = binomioCuadradoPerfecto_a($a, $b);
$resultado_b = binomioCuadradoPerfecto_b($a, $b);

echo "Resultado utilizando función a: $resultado_a<br>";
echo "Resultado utilizando función b: $resultado_b<br>";

echo "<h3>EJERCICIO 3</h3><br>";
echo "<p>Esta funcionalidad concatena dos textos y muestra el resultado.</p><br>";
require_once "ejercicio3/3.php";

$texto1 = "Hola, ";
$texto2 = "mundo!";

$resultado = concatenar($texto1, $texto2);

echo "Resultado de la concatenación: $resultado<br>";

echo "<h3>EJERCICIO 4</h3><br>";
echo "<p>Esta funcionalidad incrementa un valor en 1.</p><br>";
require_once "ejercicio4/4.php";
$valor = 5;
echo "Valor original: $valor<br>";

incrementar($valor);
echo "Valor después de incrementar: $valor<br>";

echo "<h3>EJERCICIO 5</h3><br>";
echo "<p>Esta funcionalidad calcula la sumatoria de los valores de un vector utilizando distintas estructuras de control.</p><br>";
require_once "ejercicio5/5.php";
$array = array(2, 4, 6, 8, 10);

$resultado_a = sumatoria_a($array);
$resultado_b = sumatoria_b($array);
$resultado_c = sumatoria_c($array);

echo "Sumatoria usando for: $resultado_a<br>";
echo "Sumatoria usando foreach: $resultado_b<br>";
echo "Sumatoria usando while: $resultado_c<br>";

?>
</div>
</body>
</html>
