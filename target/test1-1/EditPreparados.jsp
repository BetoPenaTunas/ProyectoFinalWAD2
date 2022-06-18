<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BaseDatos.ConexionDB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/principal.css">
        <link rel="shortcut icon" href="img/logo.ico">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@800&display=swap" rel="stylesheet">
        <link rel="stylesheet"  href="http://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/admin.css">
        
        
        <!-- Estilos -->
        <link rel="stylesheet" href="css/princAdmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <title>Editar Administrador</title>
        
        
    </head>
    <body>
        <header>
            <nav>
                <div class="nav_logo">
                    <img src="img/sportvoeding2.png">
                </div>
                <div class="nav_options">
                    <ul class="options_list">
                        <li><a href="PrincAdmin.jsp">Inicio Administrador</a></li>
                        <li><a href="index.jsp">Cliente</a></li>
                    </ul>
                    <div class="nav_settings">
                        <input type="checkbox" name="" id="btn_settings">
                        <label for="btn_settings">
                            <ion-icon name="settings-outline"></ion-icon>
                            <ion-icon id="chevron" name="caret-down-outline"></ion-icon>
                        </label>
                        <div class="settings_list">
                            <ul class="settings_column">
                                <li>Id Administrador: ${idKey}</li>
                                <li>${nombreAdminVar} ${apellidoAdminVar}</li>
                                <li><a href="Controlador?accion=SalirAdmin" >Cerrar sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <section>
            <form action="AgregarPreparado">
            <div class="row">
                <div class="col">
                    <div class="cajalog2" id="margincaja">
                        <h1 class="log">Agregar Producto</h1>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ID</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=idpra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ALIMENTO</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=alimentopra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">COSTO</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=costopra>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">IMAGEN</label>
                                <input class="form-control" type="file" id="formFile" name="imagenpra">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">DESCRIPCIÓN</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="descpra"></textarea>
                            </div>
                    </div>
                </div>
                <div class="col">
                    <div class="cajalog2" id="margincaja">
                        <h1 class="log">Información nutricional</h1>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CANTIDAD EN GRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=cantidadpra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CALORIAS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=caloriaspra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">GRASAS TOTALES EN GRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=grasaspra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">COLESTEROL EN MILIGRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=colesterolpra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">SODIO EN MILIGRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=sodiopra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">POTASIO EN MILIGRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=potasiopra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CARBOHIDRATOS EN GRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=carpra>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">PROTEINAS EN GRAMOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=proteinaspra>
                            </div>
                            <button type="submit" class="btn btn-dark">AGREGAR</button>
                    </div>
                </div>
            </div>
        </form>
            <form action="EditarPreparado">
            <div class="row">
                <div class="col">
                    <div class="cajalog2">
                        <h1 class="log">Editar Producto</h1>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ID</label>
                                <input class="form-control" id="i1" aria-describedby="emailHelp" readonly name=idpred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ALIMENTO</label>
                                <input class="form-control" id="i2" aria-describedby="emailHelp" name=alimentopred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">COSTO</label>
                                <input class="form-control" id="i3" aria-describedby="emailHelp" name=costopred>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">IMAGEN</label>
                                <input class="form-control" type="file" id="i4" name="imagenpred">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">DESCRIPCIÓN</label>
                                <textarea class="form-control" id="i5" rows="10" name="descpred"></textarea>
                            </div>
                    </div>
                </div>
                <div class="col">
                    <div class="cajalog2">
                        <h1 class="log">Información nutricional</h1>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CANTIDAD EN GRAMOS</label>
                                <input class="form-control" id="i6" aria-describedby="emailHelp" name=cantidadpred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CALORIAS</label>
                                <input class="form-control" id="i7" aria-describedby="emailHelp" name=caloriaspred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">GRASAS TOTALES EN GRAMOS</label>
                                <input class="form-control" id="i8" aria-describedby="emailHelp" name=grasaspred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">COLESTEROL EN MILIGRAMOS</label>
                                <input class="form-control" id="i9" aria-describedby="emailHelp" name=colesterolpred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">SODIO EN MILIGRAMOS</label>
                                <input class="form-control" id="i10" aria-describedby="emailHelp" name=sodiopred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">POTASIO EN MILIGRAMOS</label>
                                <input class="form-control" id="i11" aria-describedby="emailHelp" name=potasiopred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CARBOHIDRATOS EN GRAMOS</label>
                                <input class="form-control" id="i12" aria-describedby="emailHelp" name=carpred>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">PROTEINAS EN GRAMOS</label>
                                <input class="form-control" id="i13" aria-describedby="emailHelp" name=proteinaspred>
                            </div>
                            <button type="submit" class="btn btn-dark">EDITAR</button>
                    </div>
                </div>
            </div>
        </form>
            <form action="EliminarPreparado">
            <div class="row">
                <div class="col">
                    <div class="cajalog2">
                        <h1 class="log">Eliminar producto</h1>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ID</label>
                                <input class="form-control" id="i14" readonly aria-describedby="emailHelp" name=idpre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ALIMENTO</label>
                                <input class="form-control" id="i15" aria-describedby="emailHelp" readonly="readonly" name=alimentopre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">COSTO</label>
                                <input class="form-control" id="i16" aria-describedby="emailHelp" readonly="readonly" name=costopre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlTextarea1" class="form-label">DESCRIPCIÓN</label>
                                <textarea class="form-control" id="i18" rows="10" readonly="readonly" name="descpre"></textarea>
                            </div>
                    </div>
                </div>
                <div class="col">
                    <div class="cajalog2">
                        <h1 class="log">Información nutricional</h1>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CANTIDAD EN GRAMOS</label>
                                <input class="form-control" id="i19" aria-describedby="emailHelp" readonly="readonly" name=cantidadpre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CALORIAS</label>
                                <input class="form-control" id="i20" aria-describedby="emailHelp" readonly="readonly" name=caloriaspre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">GRASAS TOTALES EN GRAMOS</label>
                                <input class="form-control" id="i21" aria-describedby="emailHelp" readonly="readonly" name=grasaspre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">COLESTEROL EN MILIGRAMOS</label>
                                <input class="form-control" id="i22" aria-describedby="emailHelp" readonly="readonly" name=colesterolpre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">SODIO EN MILIGRAMOS</label>
                                <input class="form-control" id="i23" aria-describedby="emailHelp" readonly="readonly" name=sodiopre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">POTASIO EN MILIGRAMOS</label>
                                <input class="form-control" id="i24" aria-describedby="emailHelp" readonly="readonly" name=potasiopre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">CARBOHIDRATOS EN GRAMOS</label>
                                <input class="form-control" id="i25" aria-describedby="emailHelp" readonly="readonly" name=carpre>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">PROTEINAS EN GRAMOS</label>
                                <input class="form-control" id="i26" aria-describedby="emailHelp" readonly="readonly" name=proteinaspre>
                            </div>
                            <button type="submit" class="btn btn-dark">ELIMINAR</button>
                    </div>
                </div>
            </div>
        </form>
            <div class="container">
                <h1 class="log">Lista de productos</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">ALIMENTO</th>
                            <th scope="col">COSTO</th>
                            <th scope="col">FOTO</th>
                            <th scope="col">DESCRIPCION</th>
                            <th scope="col">CANTIDAD<br>GR</th>
                            <th scope="col">CALORIAS</th>
                            <th scope="col">GRASAS<br>TOTALES<br>GR</th>
                            <th scope="col">COLESTEROL<br>MG</th>
                            <th scope="col">SODIO<br>MG</th>
                            <th scope="col">POTASIO<br>MG</th>
                            <th scope="col">CARBOHIDRATOS<br>GR</th>
                            <th scope="col">PROTEINAS<br>GR</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try{
                                Connection con = ConexionDB.getConexionDB();
                                Statement stm=con.createStatement();
                                ResultSet check=stm.executeQuery("select id,alimento,tipo,costo,foto,descripcion,"
                                + "cantidad,calorias,grasastotales,colesterol,sodio,potasio,carbohidratos,proteinas from alimentos");  
                                while(check.next()){    
                            %>
                        <tr>
                            <td><%=check.getString("id")%></td>
                            <td><%=check.getString("alimento")%></td>
                            <td><%=check.getInt("costo")%></td>
                            <td><%=check.getString("foto")%></td>
                            <td><p class="ov"><%=check.getString("descripcion")%></p></td>
                            <td><%=check.getInt("cantidad")%></td>
                            <td><%=check.getInt("calorias")%></td>
                            <td><%=check.getInt("grasastotales")%></td>
                            <td><%=check.getInt("colesterol")%></td>
                            <td><%=check.getInt("sodio")%></td>
                            <td><%=check.getInt("potasio")%></td>
                            <td><%=check.getInt("carbohidratos")%></td>
                            <td><%=check.getInt("proteinas")%></td>
                            <th class="btn btn-dark boton">ESCOGER</th>
                        </tr>
                        <%
                                }
                                check.close();
                                stm.close();
                                con.close();
                            }
                            catch(SQLException e){
                                System.out.println("ERROR AL CONSULTAR");
                            }
                            %>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- FOOTER -->

        <script src="js/preparado.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
