<?php

class ToursModel
{
    private $database;

    public function __construct($database)
    {
        $this->database = $database;
    }

    public function getTours()
    {
       return $this->database->query("SELECT * FROM PRESENTACIONES");
    }

    public function addTour($nombre)
    {
        $this->database->execute("INSERT INTO `presentaciones`(`nombre`, `fecha`, `precio`) VALUES ('" . $nombre ."','2024-1-1',10)");
    }
}