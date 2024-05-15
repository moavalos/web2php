<?php

class SongsController
{
    private $model;
    private $presenter;

    public function __construct($model, $presenter)
    {
        $this->model = $model;
        $this->presenter = $presenter;
    }

    public function get()
    {
        $canciones = $this->model->getSongs();
        $this->presenter->render("view/songsView.mustache", ["canciones" => $canciones]);
    }
}