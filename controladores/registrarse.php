<?php

error_reporting(E_ALL);
ini_set ('display_errors', 1);

//Llamado conexión Base de Datos
include(ROOT_DIR . '/controladores/conexionsql.php');
$enlace = [];
}

//Validación de registros. contraseñas y usuario
$data = $_POST;

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

//Encriptar contraseña por hash y validar con password_verify
// $hash = '$2y$10$qu2dBDGOwCcaBfP6TXWG6ugrUcJ8Kw9KyIAZgJ7yvhBgHptQjKPya';
// if (password_verify('holasol', $hash)) {
//    echo '¡La contraseña es válida!';
//} else {
//    echo 'La contraseña no es válida :/';
//}

?>