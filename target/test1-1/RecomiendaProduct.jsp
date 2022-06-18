<%-- 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emociones</title>
    </head>
    <body>
        <h1>
            Usted está <c:out value="${estado}" />
        </h1>
        <h1>
            Usted tiene: <c:out value="${edad}" /> años
        </h1>
        
        <h1>
            Usted es:<c:out value="${genero}" />
        </h1>
        
    </body>
</html>
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="carrito.controllers.ControladorProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ControladorProducto cp = new ControladorProducto();
%>
<!DOCTYPE html> 
<html>
    <head>
        <title>Tienda Sportvoeding</title>
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
                        <li><a href="index.jsp">Cliente</a></li>
                        <li><a href="http://127.0.0.1:5500/index.html">Recomendaciones</a></li>
                    </ul>

                </div>
            </nav>
        </header>                            

        

        <section class="container-fluid" id="centraMargin2" style="margin-left: 40px; margin-top: 100px;">
        
        <h1 style="font-weight:600; font-size: 45px;">
            Recomendaciones 
        </h1>
            
        <h1 style="font-weight:400; font-size: 30px;">
            Debido a que
        </h1>
        
        <h1 style="font-weight:400; font-size: 30px;">
            Usted está: <c:out value="${estado}" />
        </h1>
        <h1 style="font-weight:400; font-size: 30px;">
            Tiene: <c:out value="${edad}" /> años
        </h1>
        
        <h1 style="font-weight:400; font-size: 30px;">
            Es: <c:out value="${genero}" />
        </h1>
        
        <h1 style="font-weight:400; font-size: 30px;">
            Le recomendamos los siguientes productos:
        </h1>
        
            
            <%--
                SE MUESTRAN LOS PRODUCTOS QUE ESTÁN ALMACENADOS EN LA BASE DE DATOS 
            --%>

            <c:forEach items="${lisProductRecome}" var="producto">

                <div class="tarj ventli" style="border: 5px solid #000000; box-shadow: 10px 5px 15px #646464;">
                    <!-- RUTA DE LA IMAGEN -->                 
                    <div align="center"><img align="center" src=<%="img/"%>${producto.getFoto()} alt="" class="imaven" width=350></div>
                    <h4 class="hven agdi">
                        <c:out value="${producto.getAlimento()}"/>
                    </h4>
                    
                    <h5 class="hven">
                        Costo: $<c:out value="${producto.getCosto()}"> </c:out> MX
                    </h5>
                    <a href="Detalles.jsp?id=${producto.getId()}" class="btn btn-dark agdi bm">DETALLES</a>
                </div>

            </c:forEach>




        </section>


        

        <script src="js/principal.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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