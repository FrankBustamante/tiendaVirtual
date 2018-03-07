<%--
  Created by IntelliJ IDEA.
  User: lasdoradas
  Date: 27/04/2017
  Time: 04:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        @import url(http://fonts.googleapis.com/css?family=Roboto);

        /****** LOGIN MODAL ******/
        .loginmodal-container {
            padding: 30px;
            max-width: 350px;
            width: 100% !important;
            background-color: #F7F7F7;
            margin: 0 auto;
            border-radius: 2px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            font-family: roboto;
        }

        .loginmodal-container h1 {
            text-align: center;
            font-size: 1.8em;
            font-family: roboto;
        }

        .loginmodal-container input[type=submit] {
            width: 100%;
            display: block;
            margin-bottom: 10px;
            position: relative;
        }

        .loginmodal-container input[type=text], input[type=password] {
            height: 44px;
            font-size: 16px;
            width: 100%;
            margin-bottom: 10px;
            -webkit-appearance: none;
            background: #fff;
            border: 1px solid #d9d9d9;
            border-top: 1px solid #c0c0c0;
            /* border-radius: 2px; */
            padding: 0 8px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
        }

        .loginmodal-container input[type=text]:hover, input[type=password]:hover {
            border: 1px solid #b9b9b9;
            border-top: 1px solid #a0a0a0;
        }

        .secionOn{
            color: #ffffff;
        }
    </style>

</head>
<body>
<!-- jQuery -->
<script src="static/frontend/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="static/frontend/js/bootstrap.min.js"></script>

<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
</script>

</body>
            <h1>Inicie Sesión</h1><br>
            <form role="form"  action="/login" method="post" >
                <input type="text" name="user" placeholder="Usuario">
                <input type="password" name="pass" placeholder="Contrasjjjeña">
                <input type="submit" class="login loginmodal-submit" value="Iniciar Sesión">
            </form>

            <div class="login-help">
                <a href="/usuarios">Registrar</a> - <a href="">¿Olvidó su contraseña?</a>
            </div>
</body>


</html>
