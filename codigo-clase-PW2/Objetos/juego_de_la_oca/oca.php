<h1>Juego de la Oca reducido: reglamento</h1>
<?php
include_once "configuracion/Ludoteca.php";

$juegoDeLaOca = Ludoteca::juegoDeLaOca();

$juegoDeLaOca->imprimeReglamento();
