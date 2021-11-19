<?php

error_reporting(E_ALL);
ini_set ('display_errors', 1);
$data = $_POST;

//Conexión Base de Datos
$enlace = mysqli_connect("localhost", "root", "", "optica_lentsur");
if (!$enlace) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit; 
}
//include(ROOT_DIR . '/controladores/conexionsql.php');
//$enlace = [];

//Validación de registros. contraseñas y usuario
if ($data ['password'] != $data ['password2']){
    echo "<h2>Las contraseñas no coinciden</h2>";
    header( "refresh:2;url=registro.php");
} else {
    $data ['password'] = password_hash ($data ['password'], PASSWORD_DEFAULT);
}
unset ($data ['password2']);
$data ['habilitado'] = true; 

$sql = "INSERT INTO usuarios (dni, nombre, apellido, email, telefono, ciudad, calle, nro_calle, cod_postal, password, habilitado)
VALUES ('".$data ["dni"]."','".$data ["nombre"]."','".$data ["apellido"]."','".$data ["email"]."','".$data ["telefono"]."','".$data ["ciudad"]."','".$data ["calle"]."','".$data ["nro_calle"]."','".$data ["cod_postal"]."','".$data ["password"]."','".$data ["habilitado"]."')";

if (mysqli_query($enlace, $sql)) {
    echo "Usuario registrado correctamente!";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($enlace);
  }


?>