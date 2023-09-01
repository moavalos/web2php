<?php
include_once('functions.php');
$nombre = $_POST['nombre'];
$edad = $_POST['edad'];

if (validarNombre($nombre)) {
    echo 'el nombre no debe ser un número<br>';
} else {
    $nombreProcesado = ucfirst($nombre);
    echo 'Pretendentiente<br>';
    echo "Hola $nombreProcesado ($edad)<br>";
}
$intereses = isset($_POST['intereses']) ? $_POST['intereses'] : [];
if ($intereses != []) {
    echo 'Intereses<br>';
    foreach ($intereses as $interes) {
        echo $interes . '<br>';
    }
}
?>
