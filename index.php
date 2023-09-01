<?php

/*require_once "ejercicio1/1.php";

$color = "verde";

$estadoA = semaforoA($color);
$estadoB = semaforoB($color);
$estadoC = semaforoC($color);

echo "Estado correspondiente (semaforoA): $estadoA";
echo "Estado correspondiente (semaforoB): $estadoB";
echo "Estado correspondiente (semaforoC): $estadoC";*/

require_once "ejercicio2/2.php";

$a = 3;
$b = 4;

$resultado_a = binomioCuadradoPerfecto_a($a, $b);
$resultado_b = binomioCuadradoPerfecto_b($a, $b);

echo "Resultado utilizando función a: $resultado_a<br>";
echo "Resultado utilizando función b: $resultado_b";

require_once "ejercicio3/3.php";

$texto1 = "Hola, ";
$texto2 = "mundo!";

$resultado = concatenar($texto1, $texto2);

echo "Resultado de la concatenación: $resultado";

require_once "ejercicio4/4.php";
$valor = 5;
echo "Valor original: $valor<br>";

incrementar($valor);
echo "Valor después de incrementar: $valor";

?>
