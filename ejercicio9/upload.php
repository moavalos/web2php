<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $imagenesDir = '../img/';
    $nombreImagen = $_POST['nombre'];

    $ext = pathinfo($_FILES['imagen']['name'], PATHINFO_EXTENSION);
    $nombreArchivo = $nombreImagen . '.' . $ext;

    move_uploaded_file($_FILES['imagen']['tmp_name'], $imagenesDir . $nombreArchivo);

    header('Location: 9.php');
    exit();
}
?>
