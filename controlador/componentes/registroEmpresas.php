<?php  
$id=0;
$a1=$_POST['documento'];
$a2=$_POST['tipo'];
$a3=$_POST['nombres'];
$a4=$_POST['apellidos'];
$a5=$_POST['fecha'];
$a6=$_POST['telefono'];
$a7=$_POST['email'];
$a8=1;	
$a9=$_POST['usuario'];
$a10=$_POST['contrasena'];
//$subcategoria=1;






//	$empresa=1;
//	$estado=1;
//	$estado_pago="inactivo";
//	$contador=1;
//	$barrio=1;

require 'conexion.php';

	 $result = $mysqli-> query("INSERT INTO usuario (usuario_id,num_doc,tipo_doc,nombre,apellido,fecha_nacimiento,telefono,email,tipo_usuario_id,usuario,contrasena)VALUES('$id','$a1','$a2','$a3','$a4','$a5','$a6','$a7','$a8','$a9','$a10')")		




?>
