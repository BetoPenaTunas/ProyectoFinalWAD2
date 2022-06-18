<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="BaseDatos.ConexionDB"%>
<%  
    int id=Integer.parseInt(request.getParameter("id"));
    System.out.println(id); 
    float din;
    try{
            Connection con = ConexionDB.getConexionDB();
            Statement stm=con.createStatement();
            ResultSet check=stm.executeQuery("select dinero from cliente where id="+id+"");  
            while(check.next()){
                din = check.getFloat("dinero");
                System.out.println(din);
                request.getSession().setAttribute("dinero", din);
            
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Estilos -->
    <link rel="stylesheet" href="css/inicioCliente.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Íconos -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="icon" href="img/logo.png">
    <title>Sportvoeding</title>
</head>
<body>
    <!-- Barra de navegación -->
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
                            <li><%= din %> SportCoins</li>
                            <li><a href="Controlador?accion=Salir">Cerrar sesión</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <!-- Contenido de la página -->
    <section class="section_welcome">
        <h1>
            ¡Hola, ${nombre} ${apellidos}!
        </h1>
    </section>

    <!-- Sección para visualizar imágenes -->
    <section class="section_slider">
        <div class="container_slider">
            <div id="slider_img">
                <ul>
                    <li><img src="img/athletic.jpeg" alt=""></li>
                    <li><img src="img/breakfast.jpg" alt=""></li>
                    <li><img src="img/cody.jpg" alt=""></li>
                    <li><img src="img/gym.jpg" alt=""></li>
                </ul> 
             </div>
        </div>
   </section>

   <section class="section_money">
       <h2>Dinero disponible</h2>
       <span>$<%=din %></span>
   </section>
    
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
    
   <!-- Script para el funcinamiento del slider -->
   <script>
        jQuery(document).ready(function ($) {
        
            setInterval(function () { 
                moveRight();
            }, 3000);

            var slideCount = $('#slider_img ul li').length;
            var slideWidth = $('#slider_img').width();
            var slideHeight = $('#slider_img').height();
            var sliderUlWidth = slideCount * slideWidth;
            
            // $('#slider_img').css({ width: slideWidth, height: slideHeight });
            
            // $('#slider_img ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
            
            $('#slider_img ul li:last-child').prependTo('#slider_img ul');

            function moveLeft() {
                $('#slider_img ul').animate({
                    left: + slideWidth
                }, 200, function () {
                    $('#slider_img ul li:last-child').prependTo('#slider_img ul');
                    $('#slider_img ul').css('left', '');
                });
            };

            function moveRight() {
                $('#slider_img ul').animate({
                    left: - slideWidth
                }, 200, function () {
                    $('#slider_img ul li:first-child').appendTo('#slider_img ul');
                    $('#slider_img ul').css('left', '');
                });
            };

            $('a.control_prev').click(function () {
                moveLeft();
            });

            $('a.control_next').click(function () {
                moveRight();
            });
        
        });
    </script>
    
    <%-- CHATBOT --%>
        <script defer>
            function loadChatWidget() {
                  chatteron.init({
                  clientId: "_4NYe8aMIG3RVowwVusd4",
                  height:500,
                  //openInTab: true,
                  bubbleUrl: "https://download.seaicons.com/icons/rafiqul-hassan/blogger/128/Chat-4-icon.png"
                  
            });
          }
        </script>
        <script defer src="https://web.leena.ai/scripts/sdk.js" onload="loadChatWidget();">
        </script>
    
</body>
</html>