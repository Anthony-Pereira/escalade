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
    <link rel="stylesheet" href="../../static/css/bootstrap.css">
    <link rel="stylesheet" href="../../static/css/style.css">

    <title>Les amis de l'escalade</title>
</head>

<body>

<%@ include file="fragment/header.jsp"%>

<%@include file="fragment/mySpaceNav.jsp"%>

<div class="container mb-5 bg-light">
        <div class="col-md-12 text-center">
            <h1>Paramètres</h1>
        </div>
        <div class="mb-3">
            <h4>Votre email</h4>
            <form action="parameter" method="post">
                <div class="row">
                    <div class="col-lg-6">
                        <label for="email">Nouvel e-mail</label> <input type="email"
                                                                        name="email" class="form-control" id="email"
                                                                        aria-describedby="email" placeholder="Entrez votre nouvelle email"
                                                                        required> <span class="text-danger"></span>
                    </div>
                    <div class="col-lg-6">
                        <p>Adresse e-mail actuelle : </p><c:out value="${compte.email}"/>
                    </div>
                </div>
                    <div class="text-center mt-4">
                        <button type="submit"
                                class="btn btn-secondary">Envoyer</button>
                    </div>
            </form>
        </div>
        <div class="mb-3">
            <h4>Changer votre mot de passe</h4>
            <form action="parameter" method="post">
                <div class = "row">
                    <div class="col-lg-6">
                        <label for="motDePasse">Nouveau mot de passe</label> <input type="password"
                                                                      name="motDePasse" class="form-control" id="motDePasse"
                                                                      aria-describedby="motDePasse" placeholder="Entrez votre nouveau mot de passe"
                                                                      required> <span class="text-danger"></span>
                    </div>
                    <div class="col-lg-6">
                        <label for="motDePasse">Réécrire nouveau mot de passe</label> <input type="password"
                                                                      name="motDePasse" class="form-control" id="rewriteMotDePasse"
                                                                      aria-describedby="motDePasse" placeholder="Entrez votre nouveau mot de passe"
                                                                      required> <span class="text-danger"></span>
                    </div>
                </div>
                <div class="text-center mt-4">
                    <button type="submit"
                            class="btn btn-secondary">Modifier le mot de passe</button>
                </div>
            </form>
        </div>
        <div class="mt-5">
            <div clas ="row">
                <h4>Supprimer votre compte</h4>
                <div class="col-md-12">
                    <div>
                        <p>Une fois que vous supprimez un compte, il n’y a pas de retour en arrière. S’il vous plaît, soyez certain.</p>
                    </div>
                    <div>
                        <button type="submit" class=" btn btn-block my btn btn-outline-danger tx-tfm" href="/delete">Supprimer</button>
                        <a onclick="return confirm('Êtes-vous sûre de vouloir supprimer le topo enregistré ?')"></a>
                    </div>

                </div>
            </div>
        </div>
</div>

<%@include file="fragment/footer.jsp"%>

</body>
</html>