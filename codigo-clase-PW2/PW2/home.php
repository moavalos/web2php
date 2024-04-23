<?php
session_start();

if( isset($_SESSION["usuario"])  ){
    echo "hola " . $_SESSION["usuario"] . "!";
} else {
    header("location:index.php?error=3");
    exit();
}

