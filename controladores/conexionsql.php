<?php
//Mis credenciales
function conectar_bd(){ 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "optica_lentsur";

// Crear la conexión
$enlace = mysqli_connect($servername, $username, $password, $dbname);
return $enlace;
}

?>