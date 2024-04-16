<?php
// Datos de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$database = "pw2";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $database) or die("Error al conectar con la base de datos: " . $conn->connect_error . "-" . $conn->connect_errno);

echo "Conexion exitosa!";

// Realizar consulta
$sql = "SELECT * FROM peliculas";
$result = $conn->query($sql);

// Comprobar si hay resultados
if ($result->num_rows > 0) {
    // Mostrar resultados en una tabla HTML
    echo "<table border='1'>";
    echo "<tr><th>Nombre</th><th>Descripción</th><th>Duración</th></tr>";
    while ($row = $result->fetch_assoc()) {
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
$conn->close();
?>
