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
        <form action="mySite" method="post">
            <h1 class="text-center mb-5">Site</h1>
            <div class="row">
                <div class="col-md-6 bg-light">
                    <div class="col-md-12 bg-light">
                        <h4 class="my-2 mr-2 pt-2">Adresse</h4>

                        <div>
                            <label for="numero">Numéro</label> <input type="number" size="50"
                                                                      name="numero" class="form-control" id="numero"
                                                                      aria-describedby="numero" required>
                            <span class="text-info"></span>
                        </div>
                        <div>
                            <label for="rue">Rue</label> <input type="text" size="50"
                                                                name="rue" class="form-control" id="rue"
                                                                aria-describedby="rue" required>
                            <span class="text-info"></span>
                        </div>
                        <div>
                            <label for="codePostal">Code postal</label> <input type="number" size="50"
                                                                               name="codePostal" class="form-control" id="codePostal"
                                                                               aria-describedby="codePostal" required>
                            <span class="text-info"></span>
                        </div>
                        <div>
                            <label for="ville">Ville</label> <input type="text" size="50"
                                                                    name="ville" class="form-control" id="ville"
                                                                    aria-describedby="ville" required>
                            <span class="text-info"></span>
                        </div>
                        <br/>
                    </div>

                </div>
            </div>
            <br/>
            <div>
                <div>
                    <label for="nom">Nom</label> <input type="text" size="50"
                                                            name="nom" class="form-control" id="nom"
                                                            aria-describedby="nom" required>
                    <span class="text-info"></span>
                </div>
                <br/>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" name="description" id="description" required></textarea>
                </div>
            </div>
            <c:choose>
                <c:when test="${modificationSiteValid == true}"><p class="text-success">Les modifications ont bien été pris en compte.</p></c:when>
                <c:when test="${modificationSiteValid == false}"><p class="text-danger">les modifications ont mal été saisie. Veuillez réessayer.</p></c:when>
            </c:choose>
            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-dark" required>Envoyer</button>
            </div>
        </form>
    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>