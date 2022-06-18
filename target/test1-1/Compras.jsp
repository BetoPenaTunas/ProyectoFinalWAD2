<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="BaseDatos.ConexionDB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    System.out.println(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Compras</title>
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
        
        <!-- Estilos -->
        <link rel="stylesheet" href="css/inicioCliente.css">
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
                        <li><a href="InicioCliente.jsp?id=${id}">Inicio</a></li>
                        <li><a href="ControladorTienda?accionCliente=muestraProductos">Tienda</a></li>
                        <li><a href="Compras.jsp?id=${id}">Mis pedidos</a></li>

                    </ul>
                    <div class="nav_settings">
                        <input type="checkbox" name="" id="btn_settings">
                        <label for="btn_settings">
                            <ion-icon name="settings-outline"></ion-icon>
                            <ion-icon id="chevron" name="caret-down-outline"></ion-icon>
                        </label>
                        <div class="settings_list">
                            <ul class="settings_column">
                                <li>${nombre} ${apellidos}</li>
                                <li>${id}</li>
                                <li>${escuela}</li>
                                <li>${dinero} SportCoins</li>
                                <li><a href="Controlador?accion=Salir">Cerrar sesión</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>    

        <h1 class="nomti" align="center">
            HOLA ${nombre} ${apellidos}
        </h1>
            
        <section class="container">
            <br><br>
            <h2 align="center">Pedidos pendientes</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDOS</th>
                        <th scope="col">TOTAL</th>
                        <th scope="col">FECHA</th>
                        <th scope="col">TIEMPO DE ENTREGA<br>APROXIMADO</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try{
                            Connection con = ConexionDB.getConexionDB();
                            Statement stm=con.createStatement();
                            ResultSet check=stm.executeQuery("select c.id as ID, c.nombre as NOMBRES, "
                            + "c.apellidos as APELLIDOS, t.total as TOTAL, t.fecha as FECHA, "
                            + "DATE_ADD(fecha, interval 30 minute) as APROX from cliente c "
                            + "join total t on(c.id = t.id_cliente) where id_cliente="+id+" AND estado=0 ORDER BY fecha desc"); 
                            
                            while(check.next()){
                        %>
                    <tr>
                        <td><%= check.getInt("ID") %></td>
                        <td><%= check.getString("NOMBRES") %></td>
                        <td><%= check.getString("APELLIDOS") %></td>
                        <td><%= check.getFloat("TOTAL") %></td>
                        <td><%= check.getString("FECHA") %></td>
                        <td><%= check.getString("APROX") %></td>
                        <th style="background-color: black;" class="btn btn-dark boton"><a style="color: white; text-decoration: none !important;" href="Lista.jsp?id=${id}&fecha=<%= check.getString("FECHA") %>">DETALLES</a></th>
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
                <input style="display:none;" id="fecha" type="text">
        </section>
        <br><br>
        <section class="container">
            <br><br>
            <h2 align="center">Pedidos completados</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDOS</th>
                        <th scope="col">TOTAL</th>
                        <th scope="col">FECHA</th>
                        <th scope="col">FECHA DE ENTREGA</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try{
                            Connection con = ConexionDB.getConexionDB();
                            Statement stm=con.createStatement();
                            ResultSet check=stm.executeQuery("select c.id as ID, c.nombre as NOMBRES, "
                            + "c.apellidos as APELLIDOS, t.total as TOTAL, t.fecha as FECHA, t.fecha_entrega "
                            + "as ENTREGA from cliente c "
                            + "join total t on(c.id = t.id_cliente) where id_cliente="+id+" AND estado=1 ORDER BY fecha desc;"); 
                            
                            while(check.next()){
                        %>
                    <tr>
                        <td><%= check.getInt("ID") %></td>
                        <td><%= check.getString("NOMBRES") %></td>
                        <td><%= check.getString("APELLIDOS") %></td>
                        <td><%= check.getFloat("TOTAL") %></td>
                        <td><%= check.getString("FECHA") %></td>
                        <td><%= check.getString("ENTREGA") %></td>
                        <th style="color: white; background-color: black;" class="btn btn-dark boton"><a style="color: white; text-decoration: none !important;" href="Lista.jsp?id=${id}&fecha=<%= check.getString("FECHA") %>">DETALLES</a></th>
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
                <input style="display:none;" id="fecha" type="text">
        </section>
        <br><br>

        <section class="section_money">
                <h2 style="font-weight: 600;">Dinero disponible</h2>
                <h3 style="font-weight: 600;" align="center">$ ${dinero}</h3>
        </section>

        <script src="js/pedido.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
    
    <%-- CHATBOT --%>
<script defer>
            function loadChatWidget() {
                  chatteron.init({
                  clientId: "_4NYe8aMIG3RVowwVusd4",
                  height:450,
                  bubbleUrl: "https://download.seaicons.com/icons/rafiqul-hassan/blogger/128/Chat-4-icon.png"
                  
            });
          }
        </script>
        <script defer src="https://web.leena.ai/scripts/sdk.js" onload="loadChatWidget();">
        </script>
    
    
</html>

