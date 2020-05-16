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

    <div class="container mb-5 bg-light col-lg-12 d-flex justify-content-center">

        <form action="profile" method="post">

            <div class="row">

            <div class="col-md-6 mb-5">
                <label for="pseudo">Pseudo</label> <input type="text" size="50"
                                                                     name="pseudo" class="form-control" id="pseudo"
                                                                     aria-describedby="pseudo" placeholder="nouveau pseudo">
                <span class="text-info"></span>
            </div>

            <div class="col-md-6 mb-5">
                <label for="avatar">Photo avatar</label> <input type="file" size="50"
                                                              name="avatar" class="form-control" id="avatar"
                                                              aria-describedby="photo">
                <span class="text-info"></span>
            </div>

            </div>

            <h4>À propos de moi</h4>

            <div>
                <label for="prenom">Prénom</label> <input type="text" size="50"
                                                                     name="prenom" class="form-control" id="prenom"
                                                                     aria-describedby="prenom">
                                                                     <span class="text-info"></span>
            </div>

            <div>
                <label for="nom">Nom</label> <input type="text" size="50"
                                                              name="nom" class="form-control" id="nom"
                                                              aria-describedby="nom">
                                                              <span class="text-info"></span>
            </div>

            <div>
                <label for="adresse">Adresse</label> <input type="text" size="50"
                                                        name="adresse" class="form-control" id="adresse"
                                                        aria-describedby="adresse">
                                                        <span class="text-info"></span>
            </div>

            <div>
                <label for="numTelephone">Numéro de téléphone</label> <input type="tel" size="50"
                                                                name="numTelephone" class="form-control" id="numTelephone"
                                                                aria-describedby="numTelephone">
                                                                <span class="text-info"></span>
            </div>

            <div class="d-flex justify-content-center">
                <button class="btn btn-dark mt-5" type="submit">Enregistrer</button>
            </div>

        </form>
    </div>

    <%@include file="fragment/footer.jsp"%>

</body>
</html>