<?php
$dbname = "directorio";
$host = "localhost";
$dbuser = "root";
$dbpass = "";
$mysqli = new PDO("pgsql:dbname=$dbname;host=$host", $dbuser, $dbpass);
if (mysqli_connect_error()) {
    echo 'Conexion Fallida : ', mysqli_connect_error();
    exit();
}


