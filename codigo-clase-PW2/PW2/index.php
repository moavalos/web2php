<?php

if( isset($_GET["error"]) ){
    switch ($_GET["error"]){
        case 1:
            echo "<div style='background-color: aquamarine;color:red' >Usuario y contraseña invalidos </div> ";
            break;
        case 2:
            echo "<div style='background-color: aquamarine;color:red' >Debe completar los datos </div> ";
            break;
        case 3:
            echo "<div style='background-color: aquamarine;color:red' >LTA </div> ";
            break;
    }
}

?>

<form action="login.php" method="post">
    Usuario: <input type="text" name="usuario"> <br>
    Pass:  <input type="text" name="pass"> <br>
    <button type="submit">Enviar</button>
</form>