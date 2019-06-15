<script language="javascript" src="jquery-3.3.1.min.js"/>
	<script; language="javascript">
		$(document).ready(function(){
				$("#departamento").change(function () {
					//$('#municipio').find('option').remove().end().append('<option value="whatever"></option>').val('whatever');
					$("#departamento option:selected").each(function () {
						departamento = $(this).val();
						$.post("../../controlador/componentes/prueba.php", { departamento: departamento }, function(data){
							$("#municipio").html(data);
						});
					});
				})
			});
    </script>