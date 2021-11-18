<?php
//Productos hacer un get

error_reporting(E_ALL);
ini_set ('display_errors', 1);

include (ROOT_DIR . '/modelos/modelo.php');

//Definición de la Función
function traer_items(){
$productos = model_traer_productos();
return $productos;

}