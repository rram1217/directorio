<?php
require '../dao/conexion.php';
$usuario = $_POST['usuario'];
$contrasenia = $_POST['contraseña'];

/** @var consultar $usuario $sql */
$sql = "SELECT * FROM usuarios WHERE usuario='$usuario' ";
$resultado = $mysqli->query($sql);

while ($row = mysqli_fetch_assoc($resultado)) {
    $login = $row['usuario'];
    $password = $row['contrasena'];
    if ($password == $contrasenia && $usuario == $login) {
        echo "<script> location.href='../vista/index.php?op=publicidad'</script>";
    } else {
        echo "<script>alert('Usuario o Contraseña Invalidos');</script>";
        echo "<script> location.href='../vista/index.php?log=inicio'</script>";
    }
}
