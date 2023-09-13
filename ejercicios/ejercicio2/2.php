<?php
function binomioCuadradoPerfecto_a($a, $b) {
    $suma = $a + $b;
    $resultado1 = pow($suma, 2);
    return $resultado1;
}

function binomioCuadradoPerfecto_b($a, $b) {
    $resultado2 = $a**2 + 2 * $a * $b + $b**2;
    return $resultado2;
}

