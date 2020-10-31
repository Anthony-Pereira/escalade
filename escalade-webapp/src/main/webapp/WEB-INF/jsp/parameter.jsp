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

    <div class="mb-5 px-3 pt-2 pb-3 bg-light">

            <h1 class="text-center p-3">Paramètres</h1>

        <div class="mb-3">
            <h4>Votre email</h4>
            <form action="emailParameter" method="post">

                <label for="oldEmail">Adresse e-mail actuelle</label> <input type="email"
                                                                name="oldEmail" class="form-control col-sm-6 mb-2" id="oldEmail" value="<c:out value="${compte.email}"/>"
                                                                aria-describedby="oldEmail" placeholder="<c:out value="${compte.email}"/>" readonly>
                                                                <span class="text-danger"></span>

                <label for="email">Nouvel e-mail</label> <input type="email"
                                                                name="email" class="form-control col-sm-6" id="email"
                                                                aria-describedby="email" placeholder="Entrez votre nouvelle email" required>
                                                                <span class="text-danger"></span>

                <div class="mt-4">
                    <button type="submit"
                            class="btn btn-secondary">Envoyer</button>
                </div>
            </form>
        </div>

        <div class="mb-3">

            <h4>Changer votre mot de passe</h4>

            <form action="passwordParameter" method="post">

                <label for="motDePasse">Nouveau mot de passe</label> <input type="password"
                                                                            name="motDePasse" class="form-control col-sm-6 mb-2" id="motDePasse"
                                                                            aria-describedby="motDePasse" placeholder="Entrez votre nouveau mot de passe" required/>
                <span class="text-danger"></span>

                <label for="rewriteMotDePasse">Réécrire le nouveau mot de passe</label> <input type="password"
                                                                                            name="rewriteMotDePasse" class="form-control col-sm-6 mb-2" id="rewriteMotDePasse"
                                                                                            aria-describedby="rewriteMotDePasse" placeholder="Entrez votre nouveau mot de passe" required/>
                <span class="text-danger"></span>

                <c:choose>
                    <c:when test="${!empty passwordMessageTrue}"><p class="text-success">La modification à bien été pris en compte</p></c:when>
                    <c:when test="${!empty passwordMessageFalse}"><p class="text-danger">Les mots ne passe ne correspondent pas</p></c:when>
                    <c:otherwise><p></p></c:otherwise>
                </c:choose>
                <c:if test="${!empty validPassword}"><p class="text-danger">Utilisez 8 ou plus de caractères, avec un mélange de lettres majuscules, minuscules et de nombres</p></c:if>

                <button type="submit"
                        class="btn btn-secondary mt-4">Modifier le mot de passe</button>
            </form>
        </div>

        <div class="mt-5">
            <form action="deleteAccount" method="post" >
                <div>
                    <h4>Supprimer votre compte</h4>
                    <br/>
                    <p>Une fois que vous supprimez un compte, il n’y a pas de retour en arrière. S’il vous plaît, soyez-en certain.</p>

                    <label for="delete">Veuillez taper <c:out value="${compte.email}"/> pour confirmer.</label> <input type="email"
                                                                                                                       name="delete" class="form-control col-sm-6" id="delete"
                                                                                                                       aria-describedby="delete" required/>
                    <span class="text-danger"></span>
                </div>

                <c:choose>
                    <c:when test="${!empty deleteEmailTrue}"></c:when>
                    <c:when test="${!empty deleteEmailFalse}"><p class="text-danger">Les mot de passe ne correspondent pas</p></c:when>
                </c:choose>

                <div class="mt-4">
                    <button type="submit" class=" btn btn-outline-danger">Supprimer</button>
                    <a onclick="return confirm('Êtes-vous sûre de vouloir supprimer le topo enregistré ?')"></a>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>