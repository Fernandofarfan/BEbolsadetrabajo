<?php
// autoload.php
// 10 octubre del 2014
// esta funcion elimina el hecho de estar agregando los modelos manualmente


// autoload.php
// Updated for modern PHP

spl_autoload_register(function ($modelname) {
    if (Model::exists($modelname)) {
        include Model::getFullPath($modelname);
    }
});




?>