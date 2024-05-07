<?php

class Packman{

    private $puntaje;
    private $vida;

    public function __construct($puntajeInicial,$vidaIniciales)
    {
        $this->puntaje = $puntajeInicial;
        $this->vida = $vidaIniciales;
    }

    public function mostrarPuntaje()
    {
        echo " Partida activa - $this->puntaje puntos -  $this->vida vidas <br>";
    }

    public function sumaPuntos($valor)
    {
        $this->puntaje += $valor;
    }

    public function restarPuntos($valor)
    {
        $this->puntaje -= $valor;
    }

    public function restarVida()
    {
        $this->vida -= 1;
    }

    public function sumarVida()
    {
        $this->vida += 1;
    }

    public function chocaContra($cosa)
    {
        $cosa->chocasteConPackman($this);
    }
}