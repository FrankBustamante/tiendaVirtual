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
  <link href="static/frontend/css/bootstrap.css" rel="stylesheet">

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

</head>

<body>
<header>

  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Top Menu Items -->
    <%
      String user = (String) request.getAttribute("userName");
     String prod =  (String) request.getAttribute("registro");
      String profile = "";
      String logIO = "Log In";
      String refLog = "/login";
      String clase ="" ;
      if ((prod == null)){
          prod="";
          profile = "";
      }else {profile ="registrar";clase = "fa fa-fw fa-user";}
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
            <a href="<%=prod%>"><i class="<%=clase%>"></i><%=profile%></a>
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
<div class="brand">Andrea's shoes</div>
<div class="address-bar">CRA 84# 33AA-1 La castellana | Medellin,Antioquia 90210 | 123.456.7890</div>
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
          <a href="/inicio">Inicio</a>
        </li>
        <li>
          <a href="/usuarios">Registro</a>
        </li>
        <li>
          <a href="/CatalogoAll">Catalogo</a>
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


      <img id="relax-banner" src="static/frontend/img/relax_banner.jpg">
      </div>
    </div>
   </div>
  </div>

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
          <small>Bienvenido a</small>
        </h2>
        <h1 class="brand-name">Andrea's shoes</h1>
        <hr class="tagline-divider">
      </div>
    </div>
  </div>
</div>

  <div class="row">
    <div class="box">
      <div class="col-lg-12">
        <hr>
        <h2 class="intro-text text-center">
          <strong>Nuestros productos</strong>
        </h2>
        <hr>
        <img class="img-responsive img-border img-left" src="static/frontend/img/intro-pic.jpg" alt="">

        <img class="img-responsive img-border img-left" src="static/frontend/img/intro-pic.jpg" alt="">
        </div>
    </div>
  </div>

  <div class="row">
    <div class="box">
      <div class="col-lg-12">
        <hr>
        <h2 class="intro-text text-center">
          <strong>Que es Andrea's shoes</strong>
        </h2>
        <hr>
        <p>Somos una tienda de zapatos online con las últimas tendencias de la temporada. En Andrea's shoes encontrarás gran variedad de zapatos de las mejores marcas

        <a href="InfoEmpresa.jsp"> Ver más </a></p>
      </div>
    </div>
  </div>

</div>
<!-- /.container -->

<footer>
  <div class="container">
    <div class="row" >
      <div class="col-lg-20 centro text-center"> 
        <h5 > Copyright 2017- Ingenieria de software</h5>
        <ul id="list-footer"> 
          <li> <a href="#" title="inicie Sesión" data-toggle="modal" data-target="#login-modal">Administrador</a></li>
        <li> <a href="/Nosotros"  target="_blank" title="Informacion">Acerca de nosotros</a> </li>
        <li> <a href="/Nosotros" target="_blank" title="contacto">Contáctenos</a> </li>
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
      <form action="/login">
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


</body>
</html>
