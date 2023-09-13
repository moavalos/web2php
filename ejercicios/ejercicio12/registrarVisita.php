<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $planeta = $_POST['planeta'];

    $visitantes = [];
    if (file_exists("visitantes.json")) {
        $visitantes = json_decode(file_get_contents("visitantes.json"), true);
    }

    $visitantes[] = ["nombre" => $nombre, "planeta" => $planeta];

    file_put_contents("visitantes.json", json_encode($visitantes));

    header("Location: listarVisita.php");
    exit();
}
?>