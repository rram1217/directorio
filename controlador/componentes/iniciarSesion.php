<?php
 
require 'conexion.php';

$usuario = $_POST['usuario'];
$contraseña = $_POST['contraseña'];


	$sql = "SELECT * FROM usuarios WHERE usuario='$usuario' ";
	$resultado = $mysqli->query($sql);

		while($row = mysqli_fetch_assoc($resultado)){
			$login = $row['usuario'];
			$password = $row['contrasena'];
			if ($usuario == $login && $password == $contraseña)
			{
			echo "<script> location.href='../vista/index.php?op=publicidad'</script>"; 
			}
			else{
				echo "<script>alert('Usuario o Contraseña Invalidos');</script>";
				echo "<script> location.href='../vista/index.php?log=inicio'</script>"; 
			}
		}
?>