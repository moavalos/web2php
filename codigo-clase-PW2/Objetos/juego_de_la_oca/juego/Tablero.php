<?php

class Tablero
{

    private $posicionInicial;
    private $posicionFinal;
    private $reglas;
    private $impresor;

    public function __construct($posicionInicial, $posicionFinal, $reglas, $impresor)
    {
        $this->posicionInicial = $posicionInicial;
        $this->posicionFinal = $posicionFinal;
        $this->reglas = $reglas;
        $this->impresor = $impresor;
    }

    public function imprimeReglamento()
    {
        for ($posicion = $this->posicionInicial; $posicion <= $this->posicionFinal; $posicion++)
            $this->imprimirReglaEn($posicion);

    }

    private function imprimirReglaEn($posicion)
    {
        foreach ($this->reglas as $regla)
            if ($regla->aplicaA($posicion))
                return $this->impresor->imprimir($regla->descripcion());
    }
}