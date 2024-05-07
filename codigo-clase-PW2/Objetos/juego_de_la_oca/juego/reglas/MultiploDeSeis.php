<?php

class MultiploDeSeis
{
    public function aplicaA($posicion)
    {
        return $posicion % 6 == 0;
    }

    public function descripcion()
    {
        return "Mueve dos espacios hacia adelante";
    }
}