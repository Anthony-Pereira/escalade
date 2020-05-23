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

            <h1 class="text-center">Paramètres</h1>

        <div class="mb-3">
            <h4>Votre email</h4>
            <form action="emailParameter" method="post">

                <div>
                    <p>Adresse e-mail actuelle : <c:out value="${compte.email}"/></p>
                </div>


                <label for="email">Nouvel e-mail</label> <input type="email"
                                                                name="email" class="form-control" id="email"
                                                                aria-describedby="email" placeholder="Entrez votre nouvelle email">
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

                <div class = "mb-2">

                    <label for="motDePasse">Nouveau mot de passe</label> <input type="password"
                                                                                name="motDePasse" class="form-control" id="motDePasse"
                                                                                aria-describedby="motDePasse" placeholder="Entrez votre nouveau mot de passe">
                                                                                <span class="text-danger"></span>
                </div>

                <div class = "mb-2">

                    <label for="rewriteMotDePasse">Réécrire nouveau mot de passe</label> <input type="password"
                                                                                         name="rewriteMotDePasse" class="form-control" id="rewriteMotDePasse"
                                                                                         aria-describedby="rewriteMotDePasse" placeholder="Entrez votre nouveau mot de passe"/>
                                                                                         <span class="text-danger"></span>
                </div>

                <div class="mt-4">

                    <button type="submit"
                            class="btn btn-secondary">Modifier le mot de passe</button>
                </div>
            </form>
        </div>

        <div class="mt-5">
            <form action="deleteAccount" method="post" >
                <div>
                    <h4>Supprimer votre compte</h4>

                    <p>Une fois que vous supprimez un compte, il n’y a pas de retour en arrière. S’il vous plaît, soyez certain.</p>

                    <label for="delete">Veuillez taper "DELETE" pour confirmer.</label> <input type="text"
                                                                                         name="delete" class="form-control" id="delete"
                                                                                         aria-describedby="motDePasse" placeholder="Entrez votre nouveau mot de passe" required/>
                                                                                         <span class="text-danger"></span>
                </div>
                <div class="mt-4">
                    <button type="submit" class=" btn btn-outline-danger">Supprimer</button>
                    <a onclick="return confirm('Êtes-vous sûre de vouloir supprimer le topo enregistré ?')"></a>
                </div>
            </form>
        </div>
</div>

<%@include file="fragment/footer.jsp"%>

</body>
</html>