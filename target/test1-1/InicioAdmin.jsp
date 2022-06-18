<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Estilos -->
        <link rel="stylesheet" href="css/inicioAdmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <title>Sportvoeding</title>
        <link rel="icon" href="img/logo.png">
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
                        <li><a href="index.jsp">Cliente</a></li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- Contenido principal de la página -->
        <main>
            <!-- Formulario para inicio de sesión -->
            <div>
                <form action="InicioAdminS" method="post" id="login_form">
                    <h3>Inicio de sesión</h3>
                    <div class="input_group">
                        <label for="">Usuario administrador</label>
                        <input type="text" name="usuarioad" id="" class="input_data" placeholder="Nombre de usuario">
                    </div>
                    <div class="input_group">
                        <label for="">Contraseña</label>
                        <input type="password" name="clavead" id="" class="input_data" placeholder="Contraseña">
                    </div>
                    <button type="submit" class="btn_form">Ingresar</button>
                </form>
                
                <c:if test="${notFound==true}">
                    <div>
                        Credenciales Incorrectas, intente de nuevo
                    </div>
                </c:if>
            </div>    

            

        </main>



    </body>
</html>