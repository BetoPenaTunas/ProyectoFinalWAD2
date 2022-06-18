<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Estilos -->
    <link rel="stylesheet" href="css/princAdmin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Íconos -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="icon" href="img/logo.png">
    <title>Inicio Administrador</title>
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

    <main>
        <ul class="admin_list">
            <li><a href="EditAdmin.jsp">Administradores</a></li>
            <li><a href="EditCliente.jsp">Clientes</a></li>
            <li><a href="VentasTotales.jsp">Ventas</a></li>
            <li><a href="Pendientes.jsp">Pendientes</a></li>
            <li><a href="EditPreparados.jsp">Productos</a></li>
        </ul>
    </main>

</body>
</html>