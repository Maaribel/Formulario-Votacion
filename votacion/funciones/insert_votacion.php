<?php 
require '../conexion/conexion.php';

$nomvot = $_POST['nombre'];
$aliasvot = $_POST['alias'];
$rutvot = $_POST['rut'];
$correovot = $_POST['correo'];
$regionvot =  $_POST['region'];
$comunavot = $_POST['comuna'];
$candidatovot =  $_POST['candidato'];

$interes = array();

if (isset($_POST['interes'])) {
	$interes  = $_POST['interes'];
}else{
	$interes  = [];
}

//Funcion para validar los campos nulos
function isNull($n1, $n2, $n3, $n4, $n5, $n6, $n7){
		if(strlen(trim($n1)) < 1 || strlen(trim($n2)) < 1 || strlen(trim($n3)) < 1 || strlen(trim($n4)) < 1 || strlen(trim($n5)) < 1 || strlen(trim($n6)) < 1  || strlen(trim($n7)) < 1){
			return true;
		}else{
			return false;
		}		
}

//Funcion para validar el campo Email
function isEmail($correovot)
	{
		if (filter_var($correovot, FILTER_VALIDATE_EMAIL)){
			return true;
			} else {
			return false;
		}
	}

//Funcion para validar si el rut es valido
function validaRut($rutvot){
	$numero=$rutvot; 
				 $final=2*	$numero[9]+
						3*	$numero[8]+
						4*	$numero[7]+
						5*	$numero[5]+
						6*	$numero[4]+
						7*	$numero[3]+
						2*	$numero[1]+
						3*	$numero[0];
					
					$fin = array($final);
					$suma = array_sum($fin);
					$mod = floor($suma / 11);
					$mod2 = $mod * 11;
					$mod3 = $suma - $mod2;
					$mod4 = 11 - $mod3;
					if($mod4 == $numero[11]){
						return true;	
					}else if($mod4 == 11){
							$rs= 0;
						if($rs == $numero[11]) {
							return true;
						}else{return false;}	
					}else if($mod4 == 10){
						$rs1 = 'K' || 'k';
				 		if ($rs1 == $numero[11]){
							return true;
				 		}else{return false;}	
					}else{return false;}
	
	
	}

//Funcion para validar si los Checkbox estan seleccionados
function validaCheckbox($interes){
	
	if ($interes == ""  ||  count($interes) < 2) {
		return false;
	}else{
		return true;
	}
  
}

//Funcion para validar el formato el Alias
function validaAlias($alias){
	if ($alias == "" || strlen($alias) < 5) {
		return false;
	}else{
		return true;
	}
}

//Funcion para validar la duplicacion de votos por el rut
function validaRutExit($rutvot){
	global $mysqli;
	$query = "SELECT  `V_rut`  FROM `votaciones` WHERE  `V_rut` = '$rutvot'";
	$resultado  = $mysqli->query($query);

	if(mysqli_num_rows($resultado)>0){
    	return false;
	}else{
    	return true;
    }

}


if(!isNull($nomvot, $aliasvot, $rutvot, $correovot,  $regionvot, $comunavot, $candidatovot)){
	if(validaAlias($aliasvot)){
			if(isEmail($correovot)){
				if(validaRut($rutvot)){
					if(validaRutExit($rutvot)){
							if (validaCheckbox($interes)) {

								$interes_str = implode(', ',$interes);
								
								$sql="INSERT INTO `votaciones`( `V_nombre_apellido`, `V_alias`, `V_rut`, `V_email`, `ID_region`, `ID_comuna`, `ID_candidato`, `V_interes`)
								VALUES ('$nomvot', '$aliasvot', '$rutvot', '$correovot', '$regionvot', '$comunavot', '$candidatovot', '$interes_str' )";

								echo $result=mysqli_query($mysqli, $sql);

							}else{
								echo 5;									
							}
						}else{
							echo 7;											
						}
				}else{					
					echo 4;					
				}
			}else{				
				echo 3;
			}
	}else{				
		echo 6;
	}
}else{
	echo 2;	
}




?>