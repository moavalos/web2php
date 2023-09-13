<?php

function semaforoA($color) {
    if ($color === "rojo") {
        return "frene";
    } elseif ($color === "amarillo") {
        return "precaución";
    } elseif ($color === "verde") {
        return "avance";
    } else {
        return "estado desconocido";
    }
}

function semaforoB($color) {
    return ($color === "rojo") ? "frene" :
        ($color === "amarillo") ? "precaución" :
            ($color === "verde") ? "avance" :
                "estado desconocido";
}

function semaforoC($color) {
    switch ($color) {
        case "rojo":
            return "frene";
        case "amarillo":
            return "precaución";
        case "verde":
            return "avance";
        default:
            return "estado desconocido";
    }
}
?>

