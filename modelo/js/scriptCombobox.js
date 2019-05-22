<script language="javascript" src="../modelo/jquery-3.3.1.min.js"></script>
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