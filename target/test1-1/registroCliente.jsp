<%--<%@page import="BaseDatos.ConexionDB"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

        <!-- Estilos -->
        <link rel="stylesheet" href="css/index.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- Íconos -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <link rel="icon" href="img/logo.png">



        <title>Sportvoeding</title>
    </head>
    <body>
        <div id="contenedor_carga"><div id="carga"></div></div>
        <!-- Barra de navegación -->
        <header>
            <nav>
                <div class="nav_logo">
                    <img src="img/sportvoeding2.png">
                </div>
                <div class="nav_options">
                    <ul class="options_list">


                        <li><a href="InicioAdmin.jsp">Administración</a></li>
                        <li><a href="registroCliente.jsp">Registrarse</a></li>
                        <!--<li><a href="faceRecognition.jsp">Reconocimiento Facial</a></li>-->
                    </ul>
                </div>
            </nav>
        </header>

        <!-- Contenido principal de la página -->
        <main>
            

            <!-- Formulario para inicio de sesión -->
            <div class="section_login container" >
                <form action="Controlador" method="post" id="login_form" style="width: 100%; height: 100%;">
                    <h3>Formulario de registro de usuario</h3>
                    <div class="input_group">
                        <label for="">Nombre</label>
                        <input type="text" name="nombre" id="" class="input_data" placeholder="Ingrese su nombre">
                    </div>
                    
                    <div class="input_group">
                        <label for="">Apellidos</label>
                        <input type="text" name="apellidos" id="" class="input_data" placeholder="Ingrese sus apellidos">
                    </div>
                    
                    
                    <div class="input_group">
                        <label for="">Correo electrónico</label>
                        <input type="email" name="correo" id="" class="input_data" placeholder="Ingrese su Correo electrónico">
                        <span>Nuestra empresa no comparte tu correo con alguien más.</span>
                    </div>
                    <div class="input_group">
                        <label for="">Contraseña</label>
                        <input type="password" name="contra" id="" class="input_data" placeholder="Contraseña">
                    </div>
                    <button type="submit" name="accion" value="registrar" class="btn_form">Registrar</button>

                </form>

                <c:if test="${notFound==true}">
                    <div class="btn btn-warning">
                        <div>Credenciales incorrectas, intente de nuevo.</div>
                    </div>
                </c:if>
            </div>
        </main>

        <script src="js/principal.js"></script>

        <!-- Script para el funcionamiento del slider -->
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
                        left: +slideWidth
                    }, 200, function () {
                        $('#slider_img ul li:last-child').prependTo('#slider_img ul');
                        $('#slider_img ul').css('left', '');
                    });
                }
                ;

                function moveRight() {
                    $('#slider_img ul').animate({
                        left: -slideWidth
                    }, 200, function () {
                        $('#slider_img ul li:first-child').appendTo('#slider_img ul');
                        $('#slider_img ul').css('left', '');
                    });
                }
                ;

                $('a.control_prev').click(function () {
                    moveLeft();
                });

                $('a.control_next').click(function () {
                    moveRight();
                });

            });
        </script>
    </body>
</html>