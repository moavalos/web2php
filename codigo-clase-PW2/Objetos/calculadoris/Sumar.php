<?php

class Sumar
{
    private $operando1;
    private $operando2;

    public function __construct($operando1, $operando2)
    {
        $this->operando1 = $operando1;
        $this->operando2 = $operando2;
    }

    public function resolverEcuacion(){
        return $this->operando1->resolverEcuacion() + $this->operando2->resolverEcuacion();
    }

    public function mostrate()
    {
        return $this->operando1->mostrate() . " + " . $this->operando2->mostrate()  ;
    }
}