<%
    String id = request.getParameter("id");
    String fecha = request.getParameter("fecha");
    String numero = request.getParameter("numero1");
%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="BaseDatos.ConexionDB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Detalles entrega</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Last-Modified" content="0">
        <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
        <meta http-equiv="Pragma" content="no-cache">
        
        <link rel="stylesheet" href="css/principal.css">
        <link rel="stylesheet" href="css/cliente.css">
        <link rel="shortcut icon" href="img/logo.ico">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@800&display=swap" rel="stylesheet">
        <link rel="stylesheet"  href="http://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/principal.css">
        <link rel="shortcut icon" href="img/logo.ico">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@800&display=swap" rel="stylesheet">
        <link rel="stylesheet"  href="http://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="css/admin.css">
        
        <link rel="stylesheet" href="css/princAdmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link rel="icon" href="img/logo.png">
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
            
        <section class="container">
            <br><br>
            <h2 align="center">PRODUCTOS</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">CLAVE</th>
                        <th scope="col">ALIMENTO</th>
                        <th scope="col">COSTO</th>
                        <th scope="col">CANTIDAD</th>
                        <th scope="col">TOTAL</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try{
                            Connection con = ConexionDB.getConexionDB();
                            Statement stm=con.createStatement();
                            ResultSet check=stm.executeQuery("select v.id_alimento AS CLAVE, a.alimento AS NOMBRE,"
                            + " a.costo AS COSTO, v.cantidad AS CANTIDAD, v.costo AS TOTAL, v.salon AS LUGAR "
                            + "FROM ventas v join alimentos a on (v.id_alimento = a.id) "
                            + "where id_cliente="+id+" and fecha like '%"+fecha.substring(0, 16)+"%'"); 
                            
                            while(check.next()){
                        %>
                    <tr>
                        <td><%= check.getString("CLAVE") %></td>
                        <td><%= check.getString("NOMBRE") %></td>
                        <td><%= check.getFloat("COSTO") %></td>
                        <td><%= check.getInt("CANTIDAD") %></td>
                        <td><%= check.getFloat("TOTAL") %></td>
                    </tr>
                    <%
                        }
                            stm.close();
                            con.close();
                            System.out.println("ya estan dentro man");
                        }
                        catch(SQLException e){
                            System.out.println("Error bro :'(");
                            System.out.println(e);
                        }
                        %>
                </tbody>
            </table>
                <a align="center" class="btn btn-dark boton" style="color: white; text-decoration: none !important;" href="Confirmar?id=<%= id %>&fecha=<%=fecha.substring(0, 16)%>">CONFIRMAR ENTREGA</a>
                <a Target="_blank" class="btn btn-dark boton" style="color: white; text-decoration: none !important;" href="https://api.whatsapp.com/send?phone=52<%= numero %>&text=hola,%20Tu%20Pedido%20Va%20En%20Camino">MENSAJE</a>

        </section>
                
        <br><br>

        <br><br>

        
        
            
        <script src="js/pedido.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
