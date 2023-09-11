<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 12</title>
    <style>
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h1>Control Interplanetario</h1>

        <form action="registrarVisita.php" method="post">
            <label for="nombre">Nombre del visitante:</label>
            <input type="text" name="nombre" id="nombre" required>
            <label for="planeta">Planeta perteneciente:</label>
            <select name="planeta" id="planeta">
                <option value="Tierra">Tierra</option>
                <option value="Marte">Marte</option>
                <option value="Jupiter">Jupiter</option>
            </select>
            <input type="submit" value="Registrar Visita">
        </form>
    </main>
</body>

</html>