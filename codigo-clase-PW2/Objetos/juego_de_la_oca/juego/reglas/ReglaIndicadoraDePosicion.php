<?php

class ReglaIndicadoraDePosicion
{

    private $posicion = "desconocida";

    public function aplicaA($posicion)
    {
        $this->posicion = $posicion;
        return true;
    }

    public function descripcion()
    {
        return "Estás en la casilla $this->posicion";
    }
}