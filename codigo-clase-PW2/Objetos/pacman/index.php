<?php

include_once "Packman.php";
include_once "Pildora.php";
include_once "FantasmaComestible.php";
include_once "Fantasma.php";
include_once "VidaExtra.php";


$packman = new Packman(0, 5);
$pildora = new Pildora();
$fantasmaComestible = new FantasmaComestible();
$fantasma = new Fantasma();
$vidaExtra = new VidaExtra();


$packman->chocaContra($pildora);
$packman->mostrarPuntaje(); // 10 y 5
$packman->chocaContra($fantasmaComestible);
$packman->mostrarPuntaje(); // 110 y 5
$packman->chocaContra($fantasma);
$packman->mostrarPuntaje(); // 110 y 4
$packman->chocaContra($vidaExtra);
$packman->mostrarPuntaje(); // 110 y 5

/*
$packman.chocaContra($fantasmaComestible);
$packman.chocaContra($fantasmaComestible);
$partida->mostrarPuntaje();
$packman.chocaContra($pildora);
$partida->mostrarPuntaje();
$packman.chocaContra($pildora);
$packman.chocaContra($pildora);
$partida->mostrarPuntaje();
$packman.chocaContra($fantasma);
$partida->mostrarPuntaje();
$packman.chocaContra($fantasma);
$packman.chocaContra($fantasma);
$partida->mostrarPuntaje();
*/