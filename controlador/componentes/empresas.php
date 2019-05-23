<?php
$id = 0;
$a1 = $_POST['nit'];
$a2 = $_POST['razon'];
$a3 = $_POST['nombre1'];
$a4 = $_POST['direccion'];
$a5 = $_POST['email'];
$a6 = $_POST['descripcion'];

require 'conexion.php';

$result = $mysqli->query("INSERT INTO usuario (empresa_id,nit,razon_social,nombre,descripcion,direccion,telefono,celular,email)VALUES('$id','$a1','$a2','$a3','$a4','$a5','$a6')")

?>

