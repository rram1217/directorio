
<?php
	require 'conexionDb.php';
	$codigodepartamento=$_POST['departamento'];
	$consultamunicipio= "SELECT * FROM municipio WHERE departamento_id = ".$codigodepartamento;
	$resultado=$conexion->query($consultamunicipio);
	$html= "<option value='0'>Seleccionar Sede</option>";
	while($municipio=$resultado->fetch_array()){
			$html.= "<option value='".$municipio['departamento_id']."'>".$municipio['descripcion']."</option>";
		}
	echo $html;
		
?>