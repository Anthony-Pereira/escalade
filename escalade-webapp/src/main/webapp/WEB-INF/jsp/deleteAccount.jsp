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

<%@include file="../../static/fragment/header.jsp"%>

<div class="container-fluid">
    <div class="jumbotron">
        <h2 class="text-center">Votre compte a bien été supprimé</h2>
        <div class="d-flex justify-content-end mt-5">
            <button class="btn btn-dark">
                <a class="text-decoration-none text-white" href="index.jsp">retour à la page d'accueil</a>
            </button>
        </div>
    </div>
</div>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>