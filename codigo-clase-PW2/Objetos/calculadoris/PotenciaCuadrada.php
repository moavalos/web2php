<?php

class PotenciaCuadrada
{

    private $operando;

    public function __construct($operando)
    {
        $this->operando = $operando;
    }

    public function resolverEcuacion()
    {
        return $this->operando->resolverEcuacion() *  $this->operando->resolverEcuacion() ;
    }

    public function mostrate()
    {
        return  "POW2(" . $this->operando->mostrate() . ")";
    }
}