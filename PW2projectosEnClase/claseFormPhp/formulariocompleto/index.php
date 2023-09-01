<html>
<body>

<h1>Formulario de ejemplo</h1>

<form action="procesarSaludo.php" method="post" enctype="multipart/form-data">
    <label>Usuario: <input type="text" name="user"</input></label><br>
    <label>Clave: <input type="text" name="clave"/></label><br>
    <br>

    <div>Comida preferida</div>
    <input type="radio" name="comidapreferida" id="milanesa" value="milanesa">
    <label for="milanesa">Milanesa</label><br>
    <input type="radio" name="comidapreferida" id="pastas" value="pastas">
    <label for="pastas">Pastas</label><br>
    <br>

    <div>Intereses</div>
    <input type="checkbox" name="intereses[]" id="deportes" value="deportes">
    <label for="deportes">deportes</label>
    <input type="checkbox" name="intereses[]" id="juegos" value="juegos">
    <label for="juegos">juegos</label>
    <input type="checkbox" name="intereses[]" id="netflix" value="netflix">
    <label for="netflix">netflix</label>
    <input type="checkbox" name="intereses[]" id="libros" value="libro">
    <label for="libros">libros</label>
    <br>
    <br>

    <label for="ciudad">Ciudad:</label>
    <select name="ciudad" id="ciudad">
        <option value="buenosaires">Buenos Aires</option>
        <option value="gba">Gran Buenos Aires</option>
        <option value="otros">Otros</option>
    </select>
    <br>
    <br>

    <label for="comentarios">Comentarios:</label><br>
    <textarea rows="3" cols="30" name="comentarios" id="comentarios"></textarea><br>


    <input type="file" name="archivo" id="archivo"><br>

    <br>
    <br>
    <input type="submit">
</form>

</body>
</html>