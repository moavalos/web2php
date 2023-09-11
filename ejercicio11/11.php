<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 11</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h1>Lanzar Dados</h1>

        <form action="lanzarDados.php" method="post">
            <label for="cantidadDados">Cantidad de Dados:</label>
            <select name="cantidadDados" id="cantidadDados">
                <option value="1">1 Dado</option>
                <option value="2">2 Dados</option>
                <option value="3">3 Dados</option>
            </select>
            <input type="submit" value="Lanzar Dados">
        </form>

    </main>
</body>

</html>