<?php

function imprimirGet($variable){
    if(isset($_GET[$variable])){
        if( is_array($_GET[$variable])){
            echo "<h3>$variable </h3>";
            foreach ($_GET[$variable] as $interes){
                echo $interes . "<br>";
            }
        } else {
            echo "<h3>$variable</h3> <div>". $_GET[$variable] . "</div><br>";
        }
    }
}

function copiarArchivoSubidoDeCarpetaTemporalADestino($destination){
    return move_uploaded_file($_FILES["archivo"]["tmp_name"], $destination);
}
