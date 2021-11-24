<?php

$enlace = mysqli_connect('localhost','root','','optica_lentsur');
$data = $_POST;
$id_usuario = $data['id_usuario'];
$id_producto = $data['id'];
$imagen = $data['imagen'];
$marca = $data['marca'];
$modelo = $data['modelo'];
$precio = $data['precio'];

$sql = "INSERT INTO carrito (id_usuario, id_producto, imagen, marca, modelo, precio)
VALUES ('$id_usuario', '$id_producto','$imagen', '$marca', '$modelo', '$precio')";

if ($enlace->query($sql)===TRUE) {
   echo "Se ha agregado exitósamente";
   } else {
   echo "Error: " . $sql . "<br>" . $enlace->error;
}

return;
?>