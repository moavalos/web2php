<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $planeta = $_POST['planeta'];

    $visita = array(
        'nombre' => $nombre,
        'planeta' => $planeta
    );

    $archivo = 'visitas.json';

    if (file_exists($archivo)) {
        $visitas = json_decode(file_get_contents($archivo), true);
        echo '<pre>';
        print_r($visitas);
        echo '</pre>';
    } else {
        $visitas = array();
    }

    $visitas[] = $visita;

    file_put_contents($archivo, json_encode($visitas));

    header('Location: 12.php');
    exit();
}
?>
