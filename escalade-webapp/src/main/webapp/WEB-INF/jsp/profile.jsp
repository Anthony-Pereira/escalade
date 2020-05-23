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

<div class="container mb-5">

    <div class="d-flex justify-content-end">
        <a href="editProfile" class="btn btn-dark">Modifier</a>
    </div>
    <div>
        <h1 class="text-center">Profil</h1>

        <div class="mb-5">
            <!-- recuperer la photo -->
            <h2><c:out value="${empty compte.pseudo ? '' : compte.pseudo}"/></h2>
        </div>
        <div>
            <h4>À propos de moi</h4>
            <br/>
            <ul class="list-unstyled">
                <li>Prénom : <c:out value="${compte.prenom}"/></li>
                <li>Nom : <c:out value="${compte.nom}"/></li>
                <li>Adresse : <c:out value="${compte.adresse}"/></li>
                <li>Téléphone : <c:out value="${compte.numTelephone}"/></li>
            </ul>
        </div>
        <div>
            <h4>Information sur le compte</h4>
            <br/>
            <ul class="list-unstyled"   >
                <li>Date d'inscription : </li>
                <li>Dernière connexion : </li>
            </ul>
        </div>
    </div>
</div>

<%@include file="fragment/footer.jsp"%>

</body>