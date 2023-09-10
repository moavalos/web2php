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

if (isset($_GET['nombre'])) {
    $nombreImagen = $_GET['nombre'];
    $imagenesDir = '../img/';

    if (file_exists($imagenesDir . $nombreImagen)) {
        echo '<img src="' . $imagenesDir . $nombreImagen . '" alt="' . $nombreImagen . '">';
    } else {
        echo '<p>La imagen no existe.</p>';
    }
} else {
    echo '<p>No se ha proporcionado un nombre de imagen válido.</p>';
}
?>
