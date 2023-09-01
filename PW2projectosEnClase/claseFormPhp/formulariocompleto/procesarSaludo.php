<html>
<body>
<?php

include "funciones.php";

imprimirGet("user");
imprimirGet("clave");
imprimirGet("comidapreferida");
imprimirGet("intereses");
imprimirGet("comentarios");
imprimirGet("ciudad");

if (copiarArchivoSubidoDeCarpetaTemporalADestino("./archivos/" . $_FILES["archivo"]["name"]))
    echo "<img src='./archivos/" . $_FILES["archivo"]["name"] . "' >";

?>

</body>
</html>