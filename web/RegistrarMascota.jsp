<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Clase.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
        <script src="js/RegistrarMasc.js" type="text/javascript"></script>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

       
        <title>JSP Page</title>
    </head>
    <%
        Usuario usu = Usuario_DB.listarUsuarioPorCodigo(request.getParameter("codigoU"));
    %>
    <%
        String Codigo_M = ObtenerCodigo.CodigoMascota();
    %>

    <body onload="cargar()">
        <div class="d-flex">
            <div class="col-sm-12">
                <div class="card">
                   <form name="frm" class="was-validated" action="Servlet_Mas" method="post" id="frmRegistrarMasc">
                        <table id="tablaRegistrarMasc" align="center">
                            <tr>
                                <th colspan="2">
                                    <h1> Registrar mascota  </h1>
                                </th>
                            </tr>
                            <tr>
                                <td class="form-group">
                                    <label>CODIGO :</label>
                                </td>
                                <td>
                            <dd> <input class="form-control " style="width: 210px;" type="text" name="txtCodigo" value="<%=Codigo_M%>" readonly="readonly" required> </dd>
                            </td>
                            </tr>

                            <tr>
                                <td class="form-group">
                                    <label>NOMBRE :</label>
                                </td>
                                <td>
                            <dd> <input onblur="limpia()" onkeypress="return soloLetras(event)" style="width: 210px;" type="text" name="txtNombre" id="txtNombre" class="form-control"  placeholder="ingresar el nombre" required> </dd>
                            </td>
                            <script>
                                function soloLetras(e) {
                                    key = e.keyCode || e.which;
                                    tecla = String.fromCharCode(key).toLowerCase();
                                    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                                    especiales = [8, 37, 39, 46];

                                    tecla_especial = false
                                    for (var i in especiales) {
                                        if (key == especiales[i]) {
                                            tecla_especial = true;
                                            break;
                                        }
                                    }

                                    if (letras.indexOf(tecla) == -1 && !tecla_especial)
                                        return false;
                                }


                                 var opt_1 =new Array("LABRADOR RETRIEVER","PASTOR ALEMÁN","YORKSHIRE TERRIER","BEAGLE","GOLDEN RETRIEVER","BULLDOG","BÓXER","POODLE","SHIH TZU","PEKINÉS","BULLMASTIFF","BULLMASTIFF","DALMATA","GRAN DANES","POINTER INGLES","SPITZ FINLANDEZ");
                                var opt_2 =new Array ("Gato curl americano","Gato montés","Gato burmés","Gato munchkin","Gato chausie","Van turco","Gato sphynx o esfinge","Gato sokoke","Gato siberiano","Gato snowshoe","Maine coon");
                              
                                        function cambia(){
				var cosa;
				
				cosa = document.frm.cosa[document.frm.cosa.selectedIndex].value;
			
				if(cosa!=0){
					
					mis_opts=eval("opt_" + cosa);
					
					num_opts=mis_opts.length;
					
					document.frm.txtRaza.length = num_opts;
					
					for(i=0; i<num_opts; i++){
						document.frm.txtRaza.options[i].value=mis_opts[i];
						document.frm.txtRaza.options[i].text=mis_opts[i];
					}
					}else{
					
						document.frm.txtRaza.length = 1;
						
						document.frm.txtRaza.options[0].value="-";
						document.frm.txtRaza.options[0].text="-";
					}
					
					document.frm.txtRaza.options[0].selected = true;
					
				}
                                
                                
                                function limpia() {
                                    var val = document.getElementById("txtNombre").value;
                                    var tam = val.length;
                                    for (i = 0; i < tam; i++) {
                                        if (!isNaN(val[i]))
                                            document.getElementById("txtNombre").value = '';
                                    }
                                }
                            </script>
                            </tr>
                            
                            
                                 <tr>
                                <td class="form-group">
                                    <label> Tipo :</label>
                                </td>
                                <td>
                                 <dd> <select style="width: 210px;"  type="text" name="cosa" id="TUCTOCABRO:VVVVVVV" class="form-control " onchange="cambia()" required>
                                             <option value="0">Elegir</option>
                                         <option value="1">Perro</option>
                                    <option value="2">Gato</option>
                                    
                                </select>
                            </dd>
                            </td>
                            </tr>
                             <tr>
                                <td class="form-group">
                                    <label>RAZA :</label>
                                </td>
                                <td>
                            <dd> <select style="width: 210px;"  type="text" name="txtRaza" id="txtRaza" class="form-control " required>
                                    <option value="-">Elegir</option>
                                </select>
                                
                                    
                                </select>
                            </dd>
                            </td>
                            </tr>
                            
                         
                          <tr>
                                <td class="form-group">
                                    <label>SEXO :</label>
                                </td>
                                <td>
                            <dd> <select style="width: 210px;" type="text" name="txtSexo" id="txtSexo" class="form-control " required>
                                    <option value="MACHO">MACHO</option>
                                    <option value="HEMBRA">HEMBRA</option>
                                </select>
                            </dd>
                            </td>
                            </tr>
                            <tr>
                                <td class="form-group">
                                    <label>EDAD :</label>
                                </td>
                                <td>
                            <dd> <input placeholder="ingresar la edad" style="width: 210px;" type="text" name="txtEdad" id="txtEdad" class="form-control" onkeypress="return soloNumeros(event)"maxlength=2" required> </dd>
                            </td>
                            </tr>

                            <tr>
                                <td>
                            <dd> <input type="hidden" name="txtCodigoCliente" value="<%=usu.getCodigoUsuario()%>"> </dd>

                            </td>
                            </tr>

                            <tr>
                                <td colspan="2" class="Botones">
                                    <br>
                                    <input name="btnCancelar" id="btnCancelar" class="button btn btn-outline-danger" value="Cancelar">
                                    <input  name="btnRegistrar" id="btnRegistrarMasc" class="button btn btn-outline-warning" value="Registrar">
                                 <a href="javascript:history.back(1)" class="btn btn-outline-success" >Volver Atrás</a>
                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>

                            <h1 align="center">
                                <%
                                    if (request.getParameter("mens") != null) {
                                        out.println(request.getParameter("mens"));
                                    }
                                %>
                            </h1><br>
                            <script type="text/javascript">
                                // Solo permite ingresar numeros.
                                function soloNumeros(e) {
                                    var key = window.Event ? e.which : e.keyCode
                                    return (key >= 48 && key <= 57)
                                }
                            </script>
                        </table>
                            
                        <input type="hidden" name="accion" value="insertar">
                    </form>
               
                </div>
            </div>
        </div>
    </body>
</html>