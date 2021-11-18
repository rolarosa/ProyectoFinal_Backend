<?php
error_reporting(E_ALL);
ini_set ('display_errors', 1);

//Llamado a Base de Datos
include(ROOT_DIR . '/controladores/conexionsql.php');
$enlace = [];

function model_traer_productos(){ 
    
    $enlace = conectar_bd();        
    // Chequear la conexión
    if ($enlace) {
        die("Connection failed: " . mysqli_connect_error());
    }
    $sql = "SELECT * FROM productos";
    $result = mysqli_query($enlace, $sql);

    if (mysqli_num_rows($result) > 0) {
        // mostrar data por cada columna
        while($row = mysqli_fetch_assoc($result)) {
        $productos[] = $row;
        }
    } else {
        echo "0 results";
    }

    return $productos;

mysqli_close($enlace);
}

?>