<%@page import="Controlador.ControladorProducto"%>
<%@page import="carrito.classes.Producto"%>
<% 
    
    //Se debe capturar el id que nos dieron en el ControladorProducto,
    String id =request.getParameter("id");
    Producto producto= new ControladorProducto().getProducto(id);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Detalles del Producto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/principal.css">
        <link rel="stylesheet" href="css/cliente.css">
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
            
        <section class="mardet" style="margin-top: 100px;">
            <div class="row">
                <div class="col-5" id="margenImagen">
                    <img src="img/<%= producto.getFoto() %>" alt="" width="430">
                </div>
                <div class="col-3">
                    <h2><%= producto.getAlimento() %></h2>
                    <h3>PRECIO: <%= producto.getCosto() %></h3>
                    <p><%= producto.getDescripcion() %></p>
                    <form action="AgregarCarrito2" method="post">
                        <label>CANTIDAD:</label>
                        <input type="hidden" value="<%= producto.getId() %>" id="txt-cantidad" name="idproducto">
                        <input onclick="restar();" readonly="readonly" value="-" class="btninp btn btn-dark">
                        <input id="cantpro" class="inca" value="1" readonly="readonly" name="cant">
                        <input onclick="sumar();" readonly="readonly" value="+" class="btninp btn btn-dark"><br><br>
                        <label>COSTO TOTAL: $</label>
                        <label id="costotot"><%= producto.getCosto() %></label><br><br>
                        <button type="submit" class="btn btn-dark">AGREGAR</button>
                    </form>
                </div>
                
            </div>
        </section>

        <section class="section_money">
                <h2 style="font-weight: 600;">Dinero disponible</h2>
                <h3 style="font-weight: 600;" align="center" id="dincom">$ ${dinero}</h3>
            </section>
            
        <script src="js/detalles.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
    
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
    
    
</html>

