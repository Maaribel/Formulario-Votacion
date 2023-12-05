$(document).ready(function(){

//Funcion para obtener las comunas por la region
    $("#region").change(function () {
            $("#region option:selected").each(function () {
                ID_region = $(this).val();
                $.post("funciones/get_comuna.php", { ID_region: ID_region }, function(data){
                    $("#comuna").html(data);
                });            
            });
        });

//Funcion para validar el formato el Alias
    $('#alias').on('input', function () { 
      this.value = this.value.replace(/[^0-9a-zA]/g,'');
    });


});


//Funcion para agregar un formato al rut chileno
 $(function() {
        $.mask.definitions['~'] = "[+-]";
        $("#rut").mask("99.999.999-*");
        $("input").blur(function() {
            $("#info").html("Unmasked value: " + $(this).mask());
        }).dblclick(function() {
            $(this).unmask();
        });
    });

//Funcion para agregar el formulario
$(function(){
        $("#form_votacion").on("submit", function(e){
            e.preventDefault();
            var f = $(this);
            var formData = new FormData(document.getElementById("form_votacion"));
                
            $.ajax({
                url: "funciones/insert_votacion.php",
                type: "post",
                dataType: "html",
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(r){
                        if(r==1){
                            Swal.fire({
                                title: "¡Votacion Ingresada!",
                                text:  "presionar OK para cerrar",
                                icon: "success" },
                                function() {
                                    // Redireccion a la pagina inicio
                                    window.location.href = "index.php";
                           
                            });
                                        
                        }else if(r==2) {

                            Swal.fire({
                                title: "¡Debe rellenar todos los campos!",
                                text:  "presionar OK para cerrar",
                                icon: "warning"
                            });
                        
                        }else if(r==3) {

                            Swal.fire({
                                title: "¡Ingrese correo valido!",
                                text:  "presionar OK para cerrar",
                                icon: "warning"
                            });

                        }else if(r==4) {

                            Swal.fire({
                                title: "¡Ingrese Rut Valido!",
                                text:  "presionar OK para cerrar",
                                icon: "warning"
                            });

                        }else if(r==5) {

                            Swal.fire({
                                title: "¡Seleccione al menos 2 opciones!",
                                text:  "presionar OK para cerrar",
                                icon: "warning"
                            });
                        
                        }else if(r==6) {

                            Swal.fire({
                                title: "¡El Alias debe tener mas de 5 caracteres y tener solo letras y numeros!",
                                text:  "presionar OK para cerrar",
                                icon: "warning"
                            });
                        
                        }else if(r==7) {

                            Swal.fire({
                                title: "¡El rut del votante ya existe!",
                                text:  "presionar OK para cerrar",
                                icon: "warning"
                            });
                        
                        }else{

                            Swal.fire({
                                title: "Error en Agregar",
                                text:  "presionar OK para cerrar",
                                icon: "warning"

                            });
                        }
                    }
            });
        });
    }); 
    
