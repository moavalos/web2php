<?php

class ReglaDelPuente
{
    public function aplicaA($posicion)
    {
        return $posicion == 6;
    }

    public function descripcion()
    {
        return "El puente: mueve al espacio 12";
    }
}