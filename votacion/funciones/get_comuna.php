<?php 
require '../conexion/conexion.php';


	$idregion = $_POST['ID_region'];

	$query = "SELECT * FROM comuna WHERE ID_region = '$idregion'";
	$resultado  = $mysqli->query($query);

	$html = "<option value=''>SELECCIONE COMUNA</option>";

	while($filaC = $resultado->fetch_assoc())
	{
		$html.= "<option value='".$filaC['ID_comuna']."'>".$filaC['CM_nombre']."</option>";
	}
	
	echo $html;

 ?>