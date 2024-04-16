<?php
// Datos de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$database = "pw2";

// Crear conexión
$conn = mysqli_connect($servername, $username, $password, $database);

// Verificar la conexión
if (!$conn) {
    die("Error al conectar con la base de datos: " . mysqli_connect_error());
}

echo "Conexión exitosa";

$sql = "SELECT * FROM peliculas";
$result = mysqli_query($conn, $sql);

// Comprobar si hay resultados
if (mysqli_num_rows($result) > 0) {
    // Mostrar resultados en una tabla HTML
    echo "<table border='1'>";
    echo "<tr><th>Nombre</th><th>Descripción</th><th>Duración</th></tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row["nombre"] . "</td>";
        echo "<td>" . $row["descripcion"] . "</td>";
        echo "<td>" . $row["duracion"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No se encontraron resultados.";
}


// Cerrar conexión
mysqli_close($conn);
?>