<%@page import="java.sql.ResultSet"%>
<%@page import="BaseDatos.ConexionDB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ventas Totales Sportvoeding</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/principal.css">
        <link rel="shortcut icon" href="img/logo.ico">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@800&display=swap" rel="stylesheet">
        <link rel="stylesheet"  href="http://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        
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

        <section class="container mt-5" >
            <br><br><h1 class="log" align="center">Ventas totales</h1>
            <div align="center">
            <br><br> <a class="text-white btn btn-dark"  href="VentasSources?accion=verReportePDF" target="_blank">Generar reporte</a>
            <a class="text-white btn btn-dark" href="VentasSources?accion=verGrafica" target="_blank">Generar gráfica</a>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">NO</th>
                        <th scope="col">ID CLIENTE</th>
                        <th scope="col">ID ALIMENTO</th>
                        <th scope="col">PRODUCTO</th>
                        <th scope="col" >CANTIDAD</th>
                        <th scope="col">COSTO</th>  
                        <th scope="col">FECHA DE<br>PEDIDO</th>  
                        <th scope="col">FECHA DE<br>ENTREGA</th>
                        <th scope="col">ESTADO</th>  
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            Connection con = ConexionDB.getConexionDB();
                            Statement stm = con.createStatement();
                            ResultSet check = stm.executeQuery("select v.id AS NUMERO, v.id_cliente AS ID, v.id_alimento AS IDAL, a.alimento AS PRODUCTO, v.cantidad AS CANTIDAD, v.costo" 
                                     +" AS COSTO, v.salon AS SALON, t.fecha AS FECHA, t.fecha_entrega AS ENTREGA," 
                                     +"t.estado AS ESTADO FROM ventas v join total t on(v.id_cliente = t.id_cliente) JOIN alimentos a on (v.id_alimento = a.id) where t.estado=1 order by t.fecha desc;");

                            while (check.next()) {
                    %>
                    <tr>
                        <td><%= check.getInt("NUMERO")%></td>
                        <td><%= check.getInt("ID")%></td>
                        <td><%= check.getString("IDAL")%></td>
                        <td><%= check.getString("PRODUCTO")%></td>
                        <td align="center"><%= check.getInt("CANTIDAD")%></td>
                        <td><%= check.getFloat("COSTO")%></td>
                        <td><%= check.getString("FECHA")%></td>
                        <td><%= check.getString("ENTREGA")%></td>
                        <td align="center"><%= check.getInt("ESTADO")%></td>
                    </tr>
                    <%
                            }
                            stm.close();
                            con.close();
                            System.out.println("ya estan dentro man");
                        } catch (SQLException e) {
                            System.out.println("Error al mostrar VENTAS TOTALES");
                            System.out.println(e);
                        }
                    %>
                </tbody>
            </table>
            <%
                try {
                    Connection con = ConexionDB.getConexionDB();
                    Statement stm = con.createStatement();
                    ResultSet check = stm.executeQuery("select SUM(total) AS TOTAL from total");

                    while (check.next()) {
            %>
            <h1 class="log" align="center">Total: <%= check.getFloat("TOTAL")%></h1>
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
        </section>

        

        

        <script src="js/principal.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>
