<?php

class ToursController
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
        $presentaciones = $this->model->getTours();
        $this->presenter->render("view/toursView.mustache", ["presentaciones" => $presentaciones]);
    }

    public function add(){
        $this->presenter->render("view/addToursView.mustache");
    }

    public function procesarAlta()
    {
        $tourName = $_POST["tourName"];
        $this->model->addTour($tourName);
        header("location:/tours");
        exit();
    }

}