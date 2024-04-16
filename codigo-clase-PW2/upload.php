<?php

// Verificar si se ha enviado un archivo
if(isset($_FILES['archivo'])){
    $file_name = $_FILES['archivo']['name'];
    $file_size = $_FILES['archivo']['size'];
    $file_tmp = $_FILES['archivo']['tmp_name'];
    $file_type = $_FILES['archivo']['type'];

    // Carpeta donde se moverá el archivo
    $upload_folder = "uploads/";

    // Mover el archivo a la carpeta especificada
    if(move_uploaded_file($file_tmp, $upload_folder.$file_name)){
        echo "El archivo ".$file_name." ha sido subido exitosamente.";
    }else{
        echo "Error al subir el archivo.";
    }
}else{
    echo "Por favor, seleccione un archivo.";
}
