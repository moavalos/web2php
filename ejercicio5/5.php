<?php

function sumatoria_a($array){
    $length = count($array);
    $suma = 0;
    for($i = 0; $i<$length; $i++){ // no existe array.length (creo)
        $suma += $array[$i];
    }
    return $suma;
}
function sumatoria_b($array){
    $suma = 0;
    foreach ($array as $valor) {
        $suma += $valor;
    }
    return $suma;
}
function sumatoria_c($array){
    $suma = 0;
    $length = count($array);
    $i = 0;

    while ($i < $length) {
        $suma += $array[$i];
        $i++;
    }
    return $suma;
}