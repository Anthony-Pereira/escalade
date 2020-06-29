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

<%@include file="fragment/topBar.jsp"%>

<div class="container">

    <div class="mb-5 px-3 py-2 bg-light">

    <h1 class="text-center p-3">Profil</h1>

    <a href="editProfile" class="btn btn-outline-dark mb-5">Modifier</a>
        <div class="mb-5">
            <!-- recuperer la photo -->
            <h2 class="my-2 mr-2"><c:out value="${empty compte.pseudo ? compte.prenom : compte.pseudo}"/></h2>
        </div>
        <div>
            <h4>À propos de moi</h4>
            <br/>
            <ul class="list-unstyled">
                <li>Prénom : <c:out value="${compte.prenom}"/></li>
                <li>Nom : <c:out value="${compte.nom}"/></li>
                <li>Téléphone : <c:out value="${compte.numTelephone}"/></li>
                <li>Adresse : <c:out value="${adresse.numero}"/> rue <c:out value="${adresse.rue}"/></li>
                <li>Code postal : <c:out value="${adresse.codePostal}"/></li>
                <li>Ville : <c:out value="${adresse.ville}"/></li>
            </ul>
            <p><br/>
                <br/>

            </p>
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

<%@include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>