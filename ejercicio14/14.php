<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 14</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h2>Matriz cuadrada</h2>
        <h3>Ingrese la dimensión de la matriz cuadrada:</h3>
        <form action="procesar.php" method="post">
            <input type="number" name="dimension" required>
            <input type="submit" value="Crear Matriz">
        </form>
    </main>
</body>

</html>