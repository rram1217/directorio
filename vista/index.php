<!doctype html>
<html>
	
<head>
	<meta charset="utf-8">
	<title>BuhOjea</title>
	<link rel="stylesheet" href="../modelo/css/index.css"/>
	<link rel="icon" type="image/png" href="../imagenes/logo_sin_fondo.png">

</head>
<body>
	<header>
		<table class="header" border="0">
			<tr>
				<td width="7%">
					<img src="../imagenes/logo_sin_fondo.png" height="50" alt="">
				</td>
				<td align="left">
					<a id="nombre">BuhOjea.com</a>
				</td>
				<td align="center">
					<form name="formIndex" id="formIndex" method="get">
						<input type="txt">
						<input type="submit" value="buscar">
						<input type=image src="../imagenes/buscar.png" width="25">
					</form>
				</td>
				<td align="right">
						<input type="submit" class="boton" value="Seleccionar Ciudad">
						<input type="submit" class="boton" value="Iniciar Sesion">
						<a class="boton" href="index.php?op=empresas">Seleccionar Ciudad</a>
						<a class="boton" href="index.php?op=empresas">Iniciar Sesion</a>
				</td>
			</tr>
		</table>
	</header>
<br>
	<div class="navbar">
	  <a href="index.php?op=publicidad" class="active">Inicio</a>
	  <a href="index.php?op=empresas">Comidas</a>
	  <a href="#contact">Ropa</a>
	  <a href="#news">Salud</a>
	  <a href="#contact">Hoteles</a>
	  <a href="#news">Educacion</a>
	  <a href="#contact">Industrias</a>
	</div>
	
	<aside>
	
	
	</aside>
	<br>
<div class="container">
	<?php	
	$pagina = $_GET['op'];
		include($pagina.'.html');
	?>		
</div>
	<section>		
		<article>	</article>
		
		<article>	</article>
		
		<article>	</article>
	</section>
</body>
<footer>
	
	</footer>
</html>