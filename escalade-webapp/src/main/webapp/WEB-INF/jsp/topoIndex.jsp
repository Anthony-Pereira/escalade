<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width = device-width, initial-scale = 1, shrink-to-fit = no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/style.css">

    <title>Les amis de l'escalade</title>
</head>

<body>

<%@ include file="../../static/fragment/header.jsp"%>

<div class ="container">

    <div class=" jumbotron">
        <h1 class="d-flex justify-content-center">Mes Topos</h1>
        <ul class="row m-3 list-unstyled d-flex justify-content-center">
            <li class="m-3 h3"><a class="text-decoration-none" href="myTopo">Ajouter</a></li>
            <li class="m-3 h3"><a class="text-decoration-none" href="topoUsers">Consulter</a></li>
        </ul>

    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>