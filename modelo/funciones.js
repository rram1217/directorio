function cargarmunicipio(){
	$("#departamento").ready(function (){
		$("#departamento option:selected").each(function (){
			var elegido= $(this).val();
			$.POST("prueba.php",{elegido:elegido},function(data){
				$("#municipio").html(data);
				});
			});
		});
}


