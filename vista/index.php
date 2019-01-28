<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>BuhOjea</title>
	<link rel="stylesheet" href="../modelo/css/index.css"/>
	<link rel="icon" type="image/png" href="../imagenes/logo_sin_fondo.png"/>
    <?php
        require '../controlador/conexionDb.php';
        require '../controlador/scriptCombobox.js';
    ?>
</head>
<body>
	<?php 
		include('encabezado.php');
		include('menu.php');
	 ?>	
	<div class="container">
		<?php
			if (empty($_GET['op'])==false){
				$pagina = $_GET['op'];
				include($pagina.'.html');
			} else {
				# code...
			}
			
		?>		
	</div>
</body>
<footer>
	
</footer>
</html>