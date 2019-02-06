<?php  
require 'conexion.php';

$documento=$_POST['documento'];
$tipo=$_POST['tipo'];
$nombre=$_POST['nombres'];
$apellidos=$_POST['apellidos'];
$edad=$_POST['fecha'];
$sexo=$_POST['sexo'];
$direccion=$_POST['direccion'];
$telefono=$_POST['telefono'];
$email=$_POST['email'];
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
//$subcategoria=1;


if(isset($_POST['REGISTRAR']))
{	
$tipo_usuario_id=1;	

if ($tipo ==0){
	$tipo1="cedula";
}	
if ($tipo ==1){
	$tipo1="cedula extranjeria";
}
if ($tipo ==2){
	$tipo1="pasaporte";
}
if ($tipo ==3){
	$tipo1="visa";
}
if ($tipo ==4){
	$tipo1="otra";
}
if ($sexo ==0){
	$sexo1="hombre";
}
if ($sexo ==1){
	$sexo1="mujer";
}
if ($sexo ==2){
	$sexo1="indefinido";
}
//	$empresa=1;
//	$estado=1;
//	$estado_pago="inactivo";
//	$contador=1;
//	$barrio=1;

	  $result = $mysqli-> query("INSERT INTO usuario(num_doc, tipo_doc, nombre, apellido, fecha_nacimiento, sexo, telefono, direccion, email, tipo_usuario_id, usuario, contraseña)VALUES('$documento', '$tipo1', '$nombre', '$apellidos', '$edad', '$sexo1', '$telefono', '$direccion', '$email', '$tipo_usuario_id', '$usuario', '$contraseña')");
	  echo "<script>alert('REGISTRO EXITOSO');</script>";
	  echo "<script> location.href='../vista/index.html'</script>";
}



?>
