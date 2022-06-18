<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="BaseDatos.ConexionDB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <link rel="icon" href="img/logo.png">
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

        <section  id="separar" style="margin-top:6rem;">
            <div class="row">
                <div class="col">
                    <div class="cajalog">
                        <h1 class="log">Agregar administrador</h1>
                        <form action="AgregarAdmin">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ID</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=idada>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">NOMBRE(S)</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=nombreada>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">APELLIDOS</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=apeada>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">USUARIO</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=usuarioada>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">CONTRASEÑA</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" name="claveada">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">SUELDO</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=sueldoada>
                            </div>
                            <button type="submit" class="btn btn-dark">AGREGAR</button>
                        </form>
                    </div>
                </div>
                <div class="col">
                    <div class="cajalog">
                        <h1 class="log">Editar administrador</h1>
                        <form action="EditarAdmin">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ID</label>
                                <input class="form-control" id="i1" readonly="readonly" aria-describedby="emailHelp" name=idaded>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">NOMBRE(S)</label>
                                <input class="form-control" id="i2" aria-describedby="emailHelp" name=nombreaded>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">APELLIDOS</label>
                                <input class="form-control" id="i3" aria-describedby="emailHelp" name=apeaded>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">USUARIO</label>
                                <input class="form-control" id="i4" aria-describedby="emailHelp" name=usuarioaded>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">CONTRASEÑA</label>
                                <input type="password" class="form-control" id="i5" name="claveaded">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">SUELDO</label>
                                <input class="form-control" id="i6" aria-describedby="emailHelp" name=sueldoaded>
                            </div>
                            <button type="submit" class="btn btn-dark">EDITAR</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="cajalog">
                        <h1 class="log">Eliminar administrador</h1>
                        <form action="EliminarAdmin">
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">ID</label>
                                <input class="form-control" id="i7" readonly aria-describedby="emailHelp" name=idade>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">NOMBRE(S)</label>
                                <input class="form-control" id="i8" aria-describedby="emailHelp" readonly="readonly"  name=nombreade>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">APELLIDOS</label>
                                <input class="form-control" id="i9" aria-describedby="emailHelp" readonly="readonly"  name=apeade>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">USUARIO</label>
                                <input class="form-control" id="i10" aria-describedby="emailHelp" readonly="readonly"  name=usuarioade>
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">CONTRASEÑA</label>
                                <input type="password" class="form-control" id="i11" readonly="readonly"  name="claveade">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">SUELDO</label>
                                <input class="form-control" id="i12" aria-describedby="emailHelp" readonly="readonly"  name=sueldoade>
                            </div>
                            <button type="submit" class="btn btn-dark">ELIMINAR</button>
                        </form>
                    </div>
                </div>
                <div class="col">
                    <h1 class="log">Lista de administradores</h1>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">NOMBRE</th>
                                <th scope="col">APELLIDOS</th>
                                <th scope="col">USUARIO</th>
                                <th scope="col">CONTRASEÑA</th>
                                <th scope="col">SUELDO</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    Connection con = ConexionDB.getConexionDB();
                                    Statement stm = con.createStatement();
                                    ResultSet check = stm.executeQuery("select * from administrador");
                                    while (check.next()) {
                            %>
                            <tr>
                                <td><%=check.getInt("id")%></td>
                                <td><%=check.getString("nombre")%></td>
                                <td><%=check.getString("apellido")%></td>
                                <td><%=check.getString("usuario")%></td>
                                <td><%=check.getString("clave")%></td>
                                <td><%=check.getInt("sueldo")%></td>
                                <th class="btn btn-dark boton">ESCOGER</th>
                            </tr>
                            <%
                                    }
                                    check.close();
                                    stm.close();
                                    con.close();
                                } catch (SQLException e) {
                                    System.out.println("ERROR AL CONSULTAR");
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>

        

        <script src="js/admin.js"></script>               
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
