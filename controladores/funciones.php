<?php
//Productos hacer un get

error_reporting(E_ALL);
ini_set ('display_errors', 1);

include ('modelos/modelo.php');
$enlace = mysqli_connect("localhost", "root", "", "optica_lentsur");
//include (ROOT_DIR . '/modelos/modelo.php');

//Definición de la Función
function traer_items(){
$productos = model_traer_productos();
return $productos;

}