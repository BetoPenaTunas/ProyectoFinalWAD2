<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <link rel="icon" href="img/logo.png">
                <link rel="stylesheet" href="css/princAdmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        
        <link rel="icon" href="img/logo.png">
        
        <title>Gráfica de ventas </title>
    </head>
    <body class="container-fluid">
        
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
                            
    <center style="margin-top:100px;">
        <h1 class="txt-center m-3">Grafica de Ventas Totales por Categoría</h1>
        <img class="" src="grafica.png" alt="Gráfica de elementos por categoría"/>
    </center>
    </body>
</html>
