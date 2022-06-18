<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/face-api.min.js" defer></script>    <!-- RECONOCIMIENTO FACIAL-->
    <script src="js/script.js" defer></script>          <!-- RECONOCIMIENTO FACIAL-->
    <link rel="stylesheet" href="css/style.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
    <link rel="icon" href="img/logo.png">
        
    <title>Reconocimiento Facial</title>

</head>

<body class="container">

    <h1>Reconocimiento facial</h1>

    <div class="m-3">
        <video id="video" autoplay muted width="520" height="340"></video>
    </div>

    <div class="m-3">
        <a class="btn btn-warning" id="pausa">Pausar y Calcular</a>
    </div>



    <h2 id="genero">Usted es: </h2>
    <h2 id="edad">Tiene: </h2>


</body>

</html>
