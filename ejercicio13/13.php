<!doctype html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejercicio 13</title>
    <style>
        main {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #333;
        }
        form {
            margin-top: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="checkbox"] {
            margin-right: 5px;
        }
        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>

<body>
    <header>
        <?php include '../header8-15.php'; ?>
    </header>

    <main>
        <h2>
            Menu no saludable
        </h2>

        <form action="mostrarMenu.php" method="post">
            <label><input type="checkbox" name="elementos[]" value="entrada"> Entrada</label><br>
            <label><input type="checkbox" name="elementos[]" value="plato_principal"> Plato Principal</label><br>
            <label><input type="checkbox" name="elementos[]" value="acompañamiento"> Acompañamiento</label><br>
            <label><input type="checkbox" name="elementos[]" value="postre"> Postre</label><br><br>
            <input type="submit" value="Mostrar Menú Seleccionado">
        </form>
    </main>
</body>

</html>