<?php
	require '../controlador/conexionDb.php';
	$codigodepartamento = $_POST['departamento'];
	$consultamunicipio = "SELECT * FROM municipio WHERE departamento_id = '$codigodepartamento'";
	$resultado = $mysqli->query($consultamunicipio);
	$html = "<option value='0'>Municipio</option>";
	while($municipio=$resultado->fetch_assoc()){
			$html.= "<option value='".$municipio['departamento_id']."'>".$municipio['descripcion']."</option>";
		}
	echo $html;
?>