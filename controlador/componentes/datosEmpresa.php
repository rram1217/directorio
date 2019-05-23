<?php
require '../dao/conexion.php';
$empresa = 1;
$result = $mysqli->query("SELECT * FROM empresa WHERE empresa_id='$empresa'") or die(mysql_error());
$extract = mysqli_fetch_assoc($result);
$nombre = $extract['nombre'];
$descripcion = $extract['descripcion'];
$direccion = $extract['direccion'];
$telefono = $extract['telefono'];
$celular = $extract['celular'];
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>BuhOjea</title>
    <link rel="stylesheet" href="../modelo/css/index.css"/>
    <link rel="stylesheet" href="../modelo/css/estilos.css">
    <script src="../modelo/js/jquery-3.1.1.min.js"></script>
    <script src="../modelo/js/main.js"></script>
    <link rel="icon" type="image/png" href="../imagenes/logo_sin_fondo.png"/>
    <H1 color="#ffffff" align="center">SERVICIOS</H1>
<body bgcolor="black">
</br>
<div align="center" class="card" style="width: 17rem;">
    <img src="../imagenes/descarga.jpg" class="card-img-top" alt="#">
    <div class="card-body">
        <p class="card-text"><?php echo "$descripcion" ?></p>
        </br>
        <p class="card-text">DIRECCION: <?php echo "$direccion" ?></p>
        <p class="card-text">TELEFONO: <?php echo "$telefono" ?></p>
        <p class="card-text">CELULAR: <?php echo "$celular" ?></p>
    </div>
</div>
</body>
</html>
<head>

