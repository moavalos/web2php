<!DOCTYPE html>
<html>
<head>
    <title>Generador de Citas en Línea</title>
    <link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>
    <style>
        body {
            background-image: url('foto.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .container h2 {
            text-align: center;
        }
    </style>
</head>
<body>

<div class='container'>
    <h2>Generador de Citas en Línea</h2>
    <form class='w3-container w3-card-4 w3-light-grey'
          action='http://localhost//procesarFormulario.php' method='post'>
        <p><label>Nombre:</label><input class='w3-input' type='text' name='nombre'></p>
        <p><label>Edad:</label><input class='w3-input' type='range' name='edad' min='18' max='80'></p>
        <p><label>Sexo:</label></p>
        <p>
            <select class='w3-select w3-border' name='sexo[]' multiple>
                <option value='masculino'>Masculino</option>
                <option value='femenino'>Femenino</option>
                <option value='otro'>Otro</option>
            </select>
        </p>
        <p><label>Intereses:</label></p>
        <p>
            <select class='w3-select w3-border' name='intereses[]' multiple>
                <option value='deporte'>Deporte</option>
                <option value='arte'>Arte</option>
                <option value='tecnologia'>Tecnología</option>
                <option value='musica'>Música</option>
                <option value='viajes'>Viajes</option>
            </select>
        </p>
        <p><label>Comentarios:</label><textarea class='w3-input' name='comentarios'></textarea></p>
        <p>
            <button class='w3-button w3-blue' type='submit'>Generar Cita</button>
        </p>
    </form>
</div>

</body>
</html>
