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

        <form action="editProfile" method="post">

            <div class ="row m-3">
                <div class="col-md-4 mb-5">
                    <div class="col-sm-12">
                        <label for="avatar">Photo avatar</label> <input type="file" size="50"
                                                                        name="avatar" class="form-control  col-sm-2" id="avatar"
                                                                        aria-describedby="photo">
                        <span class="text-info"></span>
                    </div>
                    <div class="col-sm-12">
                        <label for="pseudo">Pseudo</label> <input type="text" size="50" value="<c:out value="${compte.pseudo}"/>"
                                                                  name="pseudo" class="form-control  col-sm-4" id="pseudo"
                                                                  aria-describedby="pseudo" placeholder="nouveau pseudo">
                        <span class="text-info"></span>
                    </div>
                </div>

                <div class="col-md-4 mb-5 bg-light">
                    <h4 class="my-2 mr-2 pt-2">À propos de moi</h4>
                    <div>
                        <label for="prenom">Prénom</label> <input type="text" size="50" value="<c:out value="${compte.prenom}"/>"
                                                                  name="prenom" class="form-control" id="prenom"
                                                                  aria-describedby="prenom">
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="nom">Nom</label> <input type="text" size="50" value="<c:out value="${compte.nom}"/>"
                                                            name="nom" class="form-control" id="nom"
                                                            aria-describedby="nom">
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="numTelephone">Numéro de téléphone</label> <input type="tel" size="50" value="<c:out value="${compte.numTelephone}"/>"
                                                                                     name="numTelephone" class="form-control" id="numTelephone"
                                                                                     aria-describedby="numTelephone">
                        <span class="text-info"></span>
                    </div>
                    <br/>
                    <h4 class="my-2 mr-2">Adresse</h4>

                    <div>
                        <label for="rue">Numéro</label> <input type="number" size="50"
                                                               name="numero" class="form-control" id="numero"
                                                               aria-describedby="numero">
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="rue">Rue</label> <input type="text" size="50"
                                                            name="rue" class="form-control" id="rue"
                                                            aria-describedby="rue">
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="codePostal">Code postal</label> <input type="number" size="50"
                                                                           name="codePostal" class="form-control" id="codePostal"
                                                                           aria-describedby="codePostal">
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="ville">Ville</label> <input type="text" size="50"
                                                                name="ville" class="form-control" id="ville"
                                                                aria-describedby="ville">
                        <span class="text-info"></span>
                    </div>
                    <div class="d-flex justify-content-center m-3">
                        <button type="submit" class="btn btn-dark" href="editProfile">Envoyer</button>
                    </div>
                </div>
                <div class="col-md-6 mb-5">

                </div>
            </div>
        </form>
    </div>

    <%@include file="../../static/fragment/footer.jsp"%>

    <%@ include file="../../static/fragment/javascript.jsp"%>

</body>
</html>