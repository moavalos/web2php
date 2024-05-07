<?php

//Null Pattern
class Operando
{
    private $value;

    public function __construct($value)
    {
        $this->value = $value;
    }

    public function resolverEcuacion(){
        return $this->value;
    }

    public function mostrate()
    {
        return $this->value;
    }
}