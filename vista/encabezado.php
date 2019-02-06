<table class="header" border="0">
	<tr>
		<td width="7%">
			<img src="../imagenes/logo_sin_fondo.png" height="50" alt="">
		</td>
		<td align="left" width="20%">
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
		<td align="right" width="30%">
        		<?php  
					$sql = "SELECT codigo,descripcion FROM departamento WHERE estado = 1";
					$resultado = $mysqli->query($sql);				
				?> 
			<select class="boton-select" name="departamento" id="departamento">	
        		<option>DEPARTAMENTO</option>				
				<?php while($row = mysqli_fetch_assoc($resultado)){
						echo "<option value='".$row['codigo']."'> ".$row['descripcion']."</option>";
						}	
				?>
      		</select>
            <select class="boton-select" name="municipio" id="municipio"></select>
				<a class="boton" href="inicio.html">Iniciar Sesion</a>
		</td>
	</tr>
</table>