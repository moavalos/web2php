<?php
/*
$conn = mysqli_connect("localhost", "root", "", "pw2");
$result = mysqli_query($conn, "SELECT * FROM peliculas");

while ($row = mysqli_fetch_assoc($result))
    echo  "-> " . $row["nombre"]  . " " .  $row["descripcion"]  . " " . $row["duracion"] . "<br>";

mysqli_close($conn);
*/

$conn = new mysqli("localhost","root","","pw2");

$result = $conn->query("SELECT * FROM peliculas");

$all =  $result->fetch_all( MYSQLI_ASSOC );

var_dump($all);

$conn->close();