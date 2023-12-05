<?php   
require 'conexion/conexion.php';

$query =  "SELECT * FROM candidatos";
$resultado_cd= mysqli_query($mysqli, $query);

$query =  "SELECT * FROM region";
$resultado= mysqli_query($mysqli, $query);

 ?>
<!DOCTYPE html>
<html>
    <head>
        <title>SISTEMA DE VOTACI&Oacute;N</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    </head>

    <body>
        <div>
            <h3>FORMULARIO DE VOTACI&Oacute;N</h3>
        </div>
      
        <form id="form_votacion" name="form_votacion" method="POST" action="funciones/insert_votacion.php" enctype="multipart/form-data">
        <table style="border-top: 1px solid; border-left: 1px solid;">
            <tbody>
                <tr>
                    <td><label for="nombre">Nombre y Apellido</label></td>
                    <td><input type="text" name="nombre" id="nombre" required="required"></td>
                </tr>
                <tr>
                    <td><label for="alias">Alias</label></td>
                    <td><input type="text" name="alias" id="alias"  pattern="[A-Za-z0-9]+"></td>
                </tr>
                <tr>
                    <td><label for="rut">RUT</label></td>
                    <td><input type="text" name="rut" id="rut" required="required" ></td>
                </tr>
                 <tr>
                    <td><label for="email">Email</label></td>
                    <td> <input type="email" name="correo" id="correo" required="required"></td>
                </tr>
                 <tr>
                    <td><label for="region">Regi&oacute;n</label></td>
                    <td>
                           <select name="region" id="region" required="required">  
                            <option value="">SELECCIONE REGION</option>
                            <?php while($fila = mysqli_fetch_assoc($resultado)) {?>
                            <option value="<?php echo $fila['ID_region'];?>"><?php echo $fila["R_nombre"];?></option>   
                            <?php }?>
                          </select>
                      </td>
                </tr>
                <tr>
                    <td><label for="comuna">Comuna</label></td>
                    <td><select name="comuna" id="comuna"  required="required"></select>
                    </td>
                </tr>
                <tr>
                    <td><label for="candidato">Candidato</label></td>
                    <td>
                           <select name="candidato" id="candidato" required="required">  
                                <option value="">SELECCIONE CANDIDATO</option>
                                <?php while($fila_cd = mysqli_fetch_assoc($resultado_cd)) {?>
                                <option value="<?php echo $fila_cd['ID_candidato'];?>"><?php echo $fila_cd["C_nombre"];?></option>   
                                <?php }?>
                          </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="interes">Como se enter&oacute; de Nosotros</label></td>
                    <td><input type="checkbox" name="interes[]" value="Web"><label>Web</label>
                        <input type="checkbox" name="interes[]" value="TV"><label>TV</label>
                        <input type="checkbox" name="interes[]" value="RRSS"><label>Redes Sociales</label>
                        <input type="checkbox" name="interes[]" value="Amigo"><label>Amigo</label>
                    </td>
                </tr>

                <tr>
                    <td colspan="2"><input type="submit"  value="Votar"/></td>
                </tr>

            </tbody>
        </table>
        </form>
    </body>

</html>

<script src="js/jquery-3.4.0.js"></script> 
<script src="js/sweetalert2.js"></script>
<script src="js/jquery.maskedinput.js"></script>
<script src="js/funciones.js"></script>

