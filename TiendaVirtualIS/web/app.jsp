<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!-- Bootstrap Core CSS -->
<link href="static/frontend/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="static/frontend/css/business-casual.css" rel="stylesheet">

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
      rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
      rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<!-- jQuery -->
<script src="static/frontend/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="static/frontend/js/bootstrap.min.js"></script>


<!-- Navigation-->
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
            <form action="CatalogoAll" method="get" >
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
                        <a href="/RegistrodeProductos.jsp">Registro</a>
                    </li>
                    <li>
                        <a href="/CatalogoAll" >Catalogo</a>
                    </li>
                    <li>
                        <button type="submit" name="catalogo" id="catalogoH" value="catalogoHombres" class="enlace"> CATALOGO HOMBRES</button>
                    </li>
                    <li>
                        <button type="submit" name="catalogo" id="catalogoM" value="catalogoMujeres" class="enlace"> CATALOGO MUJERES</button>
                    </li>
                </ul>
            </form>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
