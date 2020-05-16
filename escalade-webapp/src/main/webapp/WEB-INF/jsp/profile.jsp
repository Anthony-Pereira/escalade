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

<%@ include file="fragment/header.jsp"%>

<%@include file="fragment/mySpaceNav.jsp"%>

<div class="container">

    <div class="d-flex justify-content-end">
        <a href="editProfile" class="btn btn-dark">Modifier</a>
    </div>

    <div class="jumbotron myform form bg-light">

        <div>
            <!-- recuperer la photo -->
            <c:out value="${compte.pseudo}"/>
        </div>
        <div>
            <h4>À propos de moi</h4>
            <br/>
            <p>Prénom : </p><c:out value="${compte.prenom}"/>
            <p>Nom : </p><c:out value="${compte.nom}"/>
            <p>Adresse : </p><c:out value="${compte.adresse}"/>
            <p>Téléphone : </p><c:out value="${compte.numTelephone}"/>
            <br/>
        </div>
        <div>
            <h4>Information sur le compte</h4>
            <br/>
            <p>Date d'inscription : </p>
            <p>Dernière connexion : </p>
        </div>

    </div>
</div>

<%@include file="fragment/footer.jsp"%>

</body>