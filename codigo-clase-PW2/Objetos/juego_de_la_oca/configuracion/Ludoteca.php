<?php
include_once "juego/Tablero.php";
include_once "juego/reglas/ReglaDelPuente.php";
include_once "juego/reglas/MultiploDeSeis.php";
include_once "juego/reglas/ReglaIndicadoraDePosicion.php";
include_once "juego/reglas/ElHotel.php";
include_once "colaboradores/ImpresorHTML.php";
include_once "colaboradores/ImpresorPorConsola.php";

class Ludoteca
{

    public static function juegoDeLaOca()
    {
        return self::crearTablero(new ImpresorHTML());
    }

    public static function juegoDeLaOcaPorConsola()
    {
        return self::crearTablero(new ImpresorPorConsola());
    }

    private static function crearTablero($impresor)
    {
        return new Tablero(
            1,
            20,
            [
                new ReglaDelPuente(),
                new MultiploDeSeis(),
                new ElHotel(),
                new ReglaIndicadoraDePosicion()
            ],
            $impresor
        );
    }
}