<!doctype html>
<html>
	
<head>
	<meta charset="utf-8">
	<title>BuhOjea</title>
	<link rel="stylesheet" href="../modelo/css/index.css"/>
	<link rel="icon" type="image/png" href="../imagenes/logo_sin_fondo.png"/>
    <?php
        require 'conexionDb.php';
            ?>
    <script language="javascript" src="/jquery-3.3.1.min.js"></script>
	<script language="javascript">
		$(document).ready(function(){
				$("#departamento").change(function () {
					//$('#municipio').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					$("#departamento option:selected").each(function () {
						departamento = $(this).val();
						$.post("prueba.php", { departamento: departamento }, function(data){
							$("#municipio").html(data);
						});            
					});
				})
			});
    </script>
</head>

<body>
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
						<div class="buscar">
							<input class="txt" type="txt">
							<input type=image src="../imagenes/buscar.png" width="35">
						</div>
					</form>
				</td>

				<td align="right">
                		<?php  

							$sql = "SELECT codigo,descripcion FROM departamento WHERE estado = 1";
							$resultado = $mysqli->query($sql);				
						?> 
					<select class="boton" name="departamento" id="departamento">	
                    		<option>DEPARTAMENTO</option>				
						<?php while($row = mysqli_fetch_assoc($resultado)){
								echo "<option value='".$row['codigo']."' >".$row['descripcion']."</option>"; 
								}	
						?>
              		</select>
                                      
                    <select class="boton" name="municipio" id="municipio"></select>

                    
						<a class="boton" href="index.php?op=usuarios">Iniciar Sesion</a>
				</td>
			</tr>
		</table>
	</header>
<br>
	<div class="navbar">
	  <a href="index.php?op=publicidad" class="active">Inicio</a>
	  <a href="index.php?op=empresas">Comidas</a>
	  <a href="index.php?op=usuarios">Ropa</a>
	  <a href="#news">Salud</a>
	  <a href="#contact">Hoteles</a>
	  <a href="#news">Educacion</a>
	  <a href="#contact">Industrias</a>
	</div>
	
	<aside>
	
	
	</aside>
	<br><div class="container">
	<?php
		if (empty($_GET['op'])==false){
			$pagina = $_GET['op'];
			include($pagina.'.html');
		}
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