<%@page import="java.sql.SQLException"%>
<%@page import="BaseDatos.ConexionDB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pendientes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Last-Modified" content="0">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <meta http-equiv="Pragma" content="no-cache">

        <link rel="stylesheet" href="css/principal.css">
        <link rel="stylesheet" href="css/cliente.css">
        <link rel="stylesheet" href="css/carrito.css">
        <link rel="shortcut icon" href="img/logo.ico">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@800&display=swap" rel="stylesheet">
        <link rel="stylesheet"  href="http://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/admin.css">
        <link rel="icon" href="img/logo.png">

        <link rel="stylesheet" href="css/princAdmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

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
                                <li><a href="Controlador?accion=SalirAdmin">Cerrar sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <section class="container" style="margin-top:80px;">
            <br><br>
            <h2 align="center">PEDIDOS PENDIENTES</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">NO.<br>PEDIDO</th>
                        <th scope="col">ID</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDOS</th>
                        <th scope="col">TOTAL</th>
                        <th scope="col">FECHA</th>
                        <th scope="col">TELEFONO</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Connection con = ConexionDB.getConexionDB();
                            Statement stm = con.createStatement();
                            ResultSet check = stm.executeQuery("select t.id AS NO, c.id as ID, c.nombre as NOMBRES, "
                                    + "c.apellidos as APELLIDOS, t.total as TOTAL, t.fecha as FECHA, "
                                    + "c.numero AS TEL from cliente c "
                                    + "join total t on(c.id = t.id_cliente) where estado=0 ORDER BY fecha desc");

                            while (check.next()) {
                    %>
                    <tr>
                        <td><%= check.getInt("NO")%></td>
                        <td><%= check.getInt("ID")%></td>
                        <td><%= check.getString("NOMBRES")%></td>
                        <td><%= check.getString("APELLIDOS")%></td>
                        <td><%= check.getFloat("TOTAL")%></td>
                        <td><%= check.getString("FECHA")%></td>
                        <td><%= check.getString("TEL")%></td>
                        <th style="background-color: red;" class="btn btn-dark boton"><a style="color: white; text-decoration: none !important;" href="Confirmar.jsp?id=<%= check.getInt("ID")%>&fecha=<%= check.getString("FECHA")%>&numero1=<%= check.getString("TEL")%>">DETALLES</a></th>
                    </tr>
                    <%
                            }
                            stm.close();
                            con.close();
                            System.out.println("ya estan dentro man");
                        } catch (SQLException e) {
                            System.out.println("Error bro :'(");
                            System.out.println(e);
                        }
                    %>
                </tbody>
            </table>
            <input style="display:none;" id="fecha" type="text">
        </section>

        <br><br>

        


        <script src="js/pedido.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>