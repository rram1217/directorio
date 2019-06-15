<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>BuhOjea</title>
    <link rel="stylesheet" href="../../modelo/css/index.css"/>
    <link rel="stylesheet" href="../../modelo/css/estilos.css">
    <script src="../../modelo/js/jquery-3.1.1.min.js"></script>
    <script src="../../modelo/js/main.js"></script>
    <link rel="icon" type="image/png" href="../../vista/img/logo_sin_fondo.png"/>
    <!---->
    <meta charset="UTF-8"/>
    <title>index_slider</title>
    <link rel="stylesheet" type="text/css" href="../../modelo/css/slider/slicebox.css"/>
    <link rel="stylesheet" type="text/css" href="../../modelo/css/slider/demo.css"/>
    <link rel="stylesheet" type="text/css" href="../../modelo/css/slider/custom.css"/>
    <script type="text/javascript" src="../../modelo/js/slider/modernizr.custom.46884.js"></script>
    <?php
    require '../dao/conexion.php';
    require '../../modelo/js/scriptCombobox.js';
    ?>
</head>
<body>
<?php
include('encabezado.php');
include('menu.php');
?>
<div class="container">
    <?php
    if (empty($_GET['op']) == false) {
        $pagina = $_GET['op'];
        include($pagina . '');
    } else {
        include('../../vista/slider.html');
    }
    ?>
</div>
<div class="modal-content" id="modal">
    <?php
    if (empty($_GET['log']) == false) {
        $pagina = $_GET['log'];
        include($pagina . '');
    } else {
        # code...
    }
    ?>
</div>
<script src="../modelo/js/materialize.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var elems = document.querySelectorAll('.modal');
        var instances = M.Modal.init(elems, options);
    });
</script>
</body>
<footer>
</footer>
</html>