<?php
$id = 0;
$documento = $_POST['documento'];
$tipo = $_POST['tipo'];
$nombres = $_POST['nombres'];
$apellidos = $_POST['apellidos'];
$fecha = $_POST['fecha'];
$telefono = $_POST['telefono'];
$email = $_POST['email'];
$a8 = 1;
$usuario = $_POST['usuario'];
$contrasenia = $_POST['contrasena'];
require '../dao/conexion.php';
$result = $mysqli->query("INSERT INTO usuario (usuario_id,num_doc,tipo_doc,nombre,apellido,fecha_nacimiento,telefono,email,tipo_usuario_id,usuario,contrasena)VALUES('$id','$documento','$tipo','$nombres','$apellidos','$fecha','$telefono','$email','$a8','$usuario','$contrasenia')");

