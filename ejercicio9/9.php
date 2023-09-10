<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 9</title>
    <style>
        .imagen-container {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
        }

        .imagen {
            margin: 10px;
            text-align: center;
        }

        .imagen img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h2>Insta-gramo</h2>

        <h2>Imágenes existentes:</h2>
        <div class="imagen-container">
            <?php
            $imagenesDir = '../img/';
            $imagenes = scandir($imagenesDir);

            foreach ($imagenes as $imagen) {
                if ($imagen != '.' && $imagen != '..') {
                    echo '<div class="imagen">';
                    echo '<img src="' . $imagenesDir . $imagen . '" alt="' . $imagen . '">';
                    echo '<p>' . $imagen . '</p>';
                    echo '</div>';
                }
            }
            ?>
        </div>

        <h2>Subir nueva imagen:</h2>
        <form action="upload.php" method="post" enctype="multipart/form-data">
            <input type="file" name="imagen" id="imagen" required>
            <label for="nombre">Nombre de la imagen:</label>
            <input type="text" name="nombre" id="nombre" required>
            <input type="submit" value="Subir Imagen">
        </form>
    </main>
</body>

</html>