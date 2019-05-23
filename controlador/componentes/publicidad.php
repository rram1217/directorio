<table width="95%" align="center">
    <?php
    require '../dao/conexion.php';
    $sql = "SELECT * FROM empresa ";
    $cantidad = 12;
    $con = 1;
    $resultado = $mysqli->query($sql);
    for ($contador = 1; $contador <= $cantidad; $contador++) {
        echo "<tr>";
        for ($i = 1; $i <= 5; $i++) {
            if ($contador <= $cantidad) {
                echo "<td>
									<div class='article'>
										" . $contador . "
									</div>
								</td>";
                $contador++;
            }
        }
        $contador--;
        echo "</tr>";
    }
    ?>
</table>