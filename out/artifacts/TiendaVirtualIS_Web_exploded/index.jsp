<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="co.edu.unac.ing.store.controllers.LoginController" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Tienda de zapatos</title>

  <!-- Bootstrap Core CSS -->
  <link href="static/frontend/css/bootstrap.min.css" rel="stylesheet">

  <link href="static/backend/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="static/backend/css/sb-admin.css" rel="stylesheet">

  <!-- Morris Charts CSS -->
  <link href="static/backend/css/plugins/morris.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="static/backend/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom CSS -->
  <link href="static/frontend/css/business-casual.css" rel="stylesheet">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

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
<header>

  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Top Menu Items -->
    <%
      String user = (String) request.getAttribute("userName");
      String profile = "";
      String logIO = "Log In";
      String refLog = "/login";
      String clase ="" ;
      if (user != (null)){
        profile = "profile"; logIO = "Log Out";
        refLog = "/index.jsp"; clase = "fa fa-fw fa-user";
      }else{user = "Ingresar";}
    %>
    <ul class="nav navbar-right top-nav">
      <li class="dropdown">
        <i href="#"   class="dropdown-toggle" data-toggle="dropdown" >
          <i class="fa fa-user"   >
            <%=user%>
        </i> <b class="caret"></b>
        </i>
        <ul class="dropdown-menu">
          <li>
            <a href="#"><i class="<%=clase%>"></i><%=profile%></a>
          </li>
          <li class="divider"></li>
          <li>
            <a href="<%=refLog%>"><i class="fa fa-fw fa-power-off"></i> <%=logIO%> </a>
          </li>
        </ul>
      </li>
    </ul>
  </nav>

</header>
<div class="brand">Tienda de Zapatos</div>
<div class="address-bar">3481 Melrose Place | Beverly Hills, CA 90210 | 123.456.7890</div>

<!-- Navigation -->
<nav class="navbar navbar-default" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
      <a class="navbar-brand" href="static/frontend/index.html">Business Casual</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li>
          <a href="static/frontend/index.html">Inicio</a>
        </li>
        <li>
          <a href="static/frontend/about.html">Acerca de</a>
        </li>
        <li>
          <a href="/Nosotros">Nosotros</a>
        </li>
        <li>
          <a href="static/frontend/contact.html">Contact</a>
        </li>
        <li>
          <a href="/usuarios">Registro</a>
        </li>
        <li>
          <a href="/inicio">Catalogo Hombres</a>
        </li>
        <li>
          <a href="/usuarios">Catalogo Mujeres</a>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container -->
</nav>

<div class="container">

  <div class="row">
    <div class="box">
      <div class="col-lg-12 text-center">
        <div id="carousel-example-generic" class="carousel slide">
          <!-- Indicators -->
          <ol class="carousel-indicators hidden-xs">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img class="img-responsive img-full" src="static/frontend/img/slide-1.jpg" alt="">
            </div>
            <div class="item">
              <img class="img-responsive img-full" src="static/frontend/img/slide-2.jpg" alt="">
            </div>
            <div class="item">
              <img class="img-responsive img-full" src="static/frontend/img/slide-3.jpg" alt="">
            </div>
          </div>

          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="icon-prev"></span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="icon-next"></span>
          </a>
        </div>
        <h2 class="brand-before">
          <small>Welcome to</small>
        </h2>
        <h1 class="brand-name">Antonio</h1>
        <hr class="tagline-divider">
        <h2>
          <small>By
            <strong>Start Bootstrap</strong>
          </small>
        </h2>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="box">
      <div class="col-lg-12">
        <hr>
        <h2 class="intro-text text-center">Build a website
          <strong>worth visiting</strong>
        </h2>
        <hr>
        <img class="img-responsive img-border img-left" src="static/frontend/img/intro-pic.jpg" alt="">
        <hr class="visible-xs">
        <p>The boxes used in this template are nested inbetween a normal Bootstrap row and the start of your column layout. The boxes will be full-width boxes, so if you want to make them smaller then you will need to customize.</p>
        <p>A huge thanks to <a href="http://join.deathtothestockphoto.com/" target="_blank">Death to the Stock Photo</a> for allowing us to use the beautiful photos that make this template really come to life. When using this template, make sure your photos are decent. Also make sure that the file size on your photos is kept to a minumum to keep load times to a minimum.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="box">
      <div class="col-lg-12">
        <hr>
        <h2 class="intro-text text-center">Beautiful boxes
          <strong>to showcase your content</strong>
        </h2>
        <hr>
        <p>Use as many boxes as you like, and put anything you want in them! They are great for just about anything, the sky's the limit!</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat diam quis nisl vestibulum dignissim. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
      </div>
    </div>
  </div>

</div>
<!-- /.container -->

<footer>
  <div class="container">
    <div class="row" >
      <div class="col-lg-20 text-center"> 
        <h5> Copyright 2017- Ingenieria de software</h5>
        <ul id="list-footer"> 
          <li> <a href="#" title="inicie Sesión" data-toggle="modal" data-target="#login-modal">Administrador</a></li>
        <li> <a href="/Nosotros"  target="_blank" title="Informacion">Acerca de nosotros</a> </li>
        <li> <a href="infoEmpresa.html" target="_blank" title="contacto">Contáctenos</a> </li>
        </ul>
      </div>
    </div>
  </div>
</footer>

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

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
    <div class="loginmodal-container">
      <h1>Inicie Sesión</h1><br>
      <form action="admin.jsp">
        <input type="text" name="user" placeholder="Usuario">
        <input type="password" name="pass" placeholder="Contraseña">
        <input type="submit" name="login" class="login loginmodal-submit" value="Iniciar Sesión">
      </form>

      <div class="login-help">
        <a href="#">Registrar</a> - <a href="#">¿Olvidó su contraseña?</a>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="login-modal-log" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
  <div class="modal-dialog">
    <div class="loginmodal-container">
      <h1>Inicie Sesión</h1><br>
      <form role="form"  action="/login" method="post" >
        <input type="text" name="user" placeholder="Usuario">
        <input type="password" name="pass" placeholder="Contraseña">
        <input type="submit" class="login loginmodal-submit" value="Iniciar Sesión">
      </form>

      <div class="login-help">
        <a href="/usuarios">Registrar</a> - <a href="">¿Olvidó su contraseña?</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>
