<?php

echo "<h1>Piedra, Papel, Tijera</h1>";

$jugador1 = $_GET["j1"];
$jugador2 = $_GET["j2"];


//Creacion
$fabricaJugadas = new Fabrica();

$jugada1 = $fabricaJugadas->createDesde($_GET["j1"], "jugador1");
$jugada2 = $fabricaJugadas->createDesde($_GET["j2"], "jugador2");

//Interaccion
echo $jugada1->competiContra($jugada2);


//Objetos
class Piedra{
    public $jugador;

    function __construct($jugador){
        $this->jugador = $jugador;
    }

    public function competiContra($jugada2){
        return $jugada2->competisContraPiedra($this);
    }

    public function competisContraPiedra($otroJugador){
        return  "Empate";
    }

    public function competisContraPapel($otroJugador)
    {
        return  $otroJugador->jugador;
    }

    public function competisContraTijera($otroJugador)
    {
        return  $this->jugador;
    }

    public function competisContraLagarto($otroJugador)
    {
        return  $this->jugador;
    }
}

class Papel{
    public $jugador;

    function __construct($jugador){
        $this->jugador = $jugador;
    }

    public function competiContra($jugada2){
        return $jugada2->competisContraPapel($this);
    }


    public function competisContraPiedra($otroJugador)
    {
        return  $this->jugador;
    }

    public function competisContraPapel($otroJugador)
    {
        return  "Empate";
    }

    public function competisContraTijera($otroJugador)
    {
        return  $otroJugador->jugador;
    }

    public function competisContraLagarto($otroJugador)
    {
        return  $otroJugador->jugador;
    }
}

class Tijera{
    public $jugador;

    function __construct($jugador){
        $this->jugador = $jugador;
    }

    public function competiContra($jugada2){
        return $jugada2->competisContraTijera($this);
    }

    public function competisContraPiedra($otroJugador)
    {
        return  $otroJugador->jugador;
    }

    public function competisContraPapel($otroJugador)
    {
        return $this->jugador;
    }

    public function competisContraTijera($otroJugador)
    {
        return "Empate";
    }

    public function competisContraLagarto($otroJugador)
    {
        return  $this->jugador;
    }
}


class Lagarto
{
    public $jugador;

    function __construct($jugador){
        $this->jugador = $jugador;
    }

    public function competiContra($jugada2){
        return $jugada2->competisContraLagarto($this);
    }

    public function competisContraPiedra($otroJugador)
    {
        return  $otroJugador->jugador;
    }

    public function competisContraPapel($otroJugador)
    {
        return $this->jugador;
    }

    public function competisContraTijera($otroJugador)
    {
        return  $otroJugador->jugador;
    }

    public function competisContraLagarto($otroJugador)
    {
        return "Empate";
    }
}

class Fabrica{
    function __construct(){
    }

    public function createDesde($valor, $jugador)
    {
        switch ($valor){
            case "piedra":
                return new Piedra($jugador);
            case "papel":
                return new Papel($jugador);
            case "tijera":
                return new Tijera($jugador);
            case "lagarto";
                return new Lagarto($jugador);
        }
    }

}