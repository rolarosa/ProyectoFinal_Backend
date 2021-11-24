<?php
error_reporting(E_ALL);
ini_set ('display_errors', 1);

//Productos
function traer_items(){
  $productos = model_traer_productos();
  return $productos;
}
// Llamar tabla productos
function model_traer_productos(){  
  // Crear conexion
  $enlace = mysqli_connect("localhost", "root", "", "optica_lentsur");
  // Chequear conexion
  if (!$enlace) {
      die("Connection failed: " . mysqli_connect_error());
  }
  $sql = "SELECT * FROM productos";
  $result = mysqli_query($enlace, $sql);

  if (mysqli_num_rows($result) > 0) {
      // Mostrar data por cada columna
  while($row = mysqli_fetch_assoc($result)) {
  $productos[] = $row;
    }
  } else {
      echo "0 results";
  }
  return $productos;
}

//Carrito
function traer_carrito(){
  $carrito = get_carrito_db(); 
  return $carrito;   
}
// Llamar tabla carrito
function get_carrito_db(){
    // Crear conexion
    $enlace = mysqli_connect("localhost", "root", "", "optica_lentsur");
    // Chequear conexion
    if (!$enlace) {
      die("Connection failed: " . mysqli_connect_error());
    }
    $sql = "SELECT * FROM carrito";
    $result = mysqli_query($enlace, $sql);
  
    if (mysqli_num_rows($result) > 0) {
      // mostrar data por cada columna
      while($row = mysqli_fetch_assoc($result)) {
        $carrito[] = $row;                            //$carrito array de arrays
      }
    } else {
      echo "0 results";
    }
     return $carrito;
     
mysqli_close($enlace);
}
?>