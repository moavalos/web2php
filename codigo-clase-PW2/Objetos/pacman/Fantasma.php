<?php

class Fantasma
{

    public function __construct()
    {
    }

    public function chocasteConPackman($packman)
    {
        $packman->restarPuntos(10);
        $packman->restarVida();
    }
}