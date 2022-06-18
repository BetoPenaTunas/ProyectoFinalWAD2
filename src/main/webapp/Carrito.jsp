<%@page import="carrito.classes.Producto"%>
<%@page import="Controlador.ControladorProducto"%>
<%@page import="carrito.classes.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion2 = request.getSession(true);
    ArrayList<Articulo> articulos = sesion2.getAttribute("carrito1") == null ? null : (ArrayList) sesion2.getAttribute("carrito1");
    System.out.println("LLEGAMOS");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Carrito </title>
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

        <link rel="stylesheet" href="https://cdn.rawgit.com/openlayers/openlayers.github.io/master/en/v5.3.0/css/ol.css"
              type="text/css">
        <script src="https://cdn.rawgit.com/openlayers/openlayers.github.io/master/en/v5.3.0/build/ol.js"></script>

        <!-- Estilos -->
        <link rel="stylesheet" href="css/inicioCliente.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link rel="icon" href="img/logo.png">
        <style>
            .map {
                height: 400px;
                width: 100%;
            }
        </style>
    </head>
    <body  onload="getLocation(); sufdin();">
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

        <section class="container" style="margin-top: 100px;">
            <div id="cart-container">
                <table class="table" id="shop-table">
                    <thead>
                        <tr class="tabcol">
                            <th scope="col">PRODUCTO</th>
                            <th scope="col">PRECIO</th>
                            <th scope="col">CANTIDAD</th>
                            <th scope="col">TOTAL</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ControladorProducto cp = new ControladorProducto();
                            float total = 0;

                            if (articulos != null) {
                                for (Articulo a : articulos) {
                                    Producto producto = cp.getProducto(a.getIdProducto());
                                    total += a.getCant() * producto.getCosto();

                        %>   
                        <tr class="tabcol">
                            <th><img src="img/<%= producto.getFoto()%>" alt="" width="500"></th>
                            <td>$<%= producto.getCosto()%></td>
                            <td>
                                <input class="form-control" id="cantto" type="" name="quantity" value="<%= a.getCant()%>" readonly="readonly" size="2">
                            </td>
                            <td class="cart-total" id="cantpcos"><%= producto.getCosto() * a.getCant()%></td>
                            <td>
                                <span id="idarticulo" style="display: none;"><%= producto.getId()%></span>
                                <a class="elix" href="" onclick="location.reload(true)" id="eliminarcarrito">x</a>
                            </td>
                        </tr>
                        <% }
                        }%>
                    </tbody>
                </table>
                <% if (articulos == null) { %>
                <h4>No hay Articulos en el carro</h4>
                <% }%>    
            </div>
            <div class="total3" align="right">
                <label style="font-size: 30px !important;font-weight: 700;">Total: $<%= total%></label>
                
            </div>
            <a style="text-decoration: none !important;font-size: 30px;font-weight: 700;" href="javascript:window.history.go(-2);">Seguir Comprando</a>
            <form id="formdin" action="Ventas" align="right">
                <input value="${id}" Style="display:none;" name="cliente">
                <input value="${dinero}" Style="display:none;" name="dineromomento">
                <input value="<%= total%>" name="dint" style="display:none;">
                <input style="display:none;" id="salon1" name="salon1" value="CAFETERIA">
                <button style="font-size: 30px;
                        font-weight: 700;" type="submit" class="btn btn-dark">Comprar</button>
            </form>
            <br><br>
            <h2 align="right" id="nohay" class="errordin"></h2>
            <br><br>
        </section>

        <section class="container mapa" >
            <div class="row">
                <div class="col">
                    <p id="geo"></p>
                    <div id="map" class="map"></div>
                </div>
                
            </div>
        </section><br><br>

       <section class="section_money">
                <h2 style="font-weight: 600;">Dinero disponible</h2>
                <h3 style="font-weight: 600;" align="center">$ ${dinero}</h3>
        </section>

        


        <script src="js/detalles2.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/carrito.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script type="text/javascript">

                                var geo = document.getElementById("geo");
                                var latitud = 0;
                                var longitud = 0;

                                function getLocation() {
                                    if (navigator.geolocation) {
                                        navigator.geolocation.getCurrentPosition(showPosition);

                                    } else {

                                        geo = geo.innerHTML = "No es compatible tu navegador";
                                    }

                                }

                                function showPosition(position) {
                                    //geo.innerHTML=" Latitud: "+position.coords.latitude+"<br> Longuitud: "+position.coords.longitude;
                                    latitud = position.coords.latitude;
                                    longitud = position.coords.longitude;
                                    console.log("Latitud: " + latitud + " Longuitud: " + longitud);
                                    if (latitud != 0 && longitud != 0)
                                    {
                                        verUbi();
                                    }


                                }


                                function verUbi() {
                                    var map = new ol.Map({
                                        target: 'map',
                                        layers: [
                                            new ol.layer.Tile({
                                                source: new ol.source.OSM()
                                            })
                                        ],
                                        view: new ol.View({
                                            center: ol.proj.fromLonLat([longitud, latitud]),
                                            zoom: 19
                                        })

                                    });

                                    /*
                                     Impresición 
                                     Longuitud:-99.0239552
                                     Latitud: 19.6157791
                                     
                                     
                                     Ajustando las coordenas
                                     Latitud: 	19.6157791-0.0019291		= 19.61385
                                     Longuitud: -99.0239552-0.01108480		= -99.03504
                                     
                                     */

                                    var Style = new ol.style.Style({
                                        image: new ol.style.Icon({
                                            anchor: [0.5, 10],
                                            anchorXUnits: 'fraction',
                                            anchorYUnits: 'pixels',
                                            src: 'marker.png'
                                        }),

                                    });

                                    var layer = new ol.layer.Vector({
                                        source: new ol.source.Vector({
                                            features: [
                                                new ol.Feature({
                                                    geometry: new ol.geom.Point(ol.proj.fromLonLat([longitud, latitud]))
                                                })
                                            ]
                                        }),
                                        style: Style
                                    });
                                    map.addLayer(layer);
                                }

        </script>
        
    </body>

        <%-- CHATBOT --%>
    <script defer>
            function loadChatWidget() {
                  chatteron.init({
                  clientId: "_4NYe8aMIG3RVowwVusd4",
                  height:450,
                  //openInTab: true,
                  bubbleUrl: "https://download.seaicons.com/icons/rafiqul-hassan/blogger/128/Chat-4-icon.png"
                  
            });
          }
        </script>
    <script defer src="https://web.leena.ai/scripts/sdk.js" onload="loadChatWidget();">
    </script>  

</html>
