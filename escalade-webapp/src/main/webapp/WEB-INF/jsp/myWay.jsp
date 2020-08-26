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
        <h1 class="text-center mb-5">Voie</h1>
        <form action="myWay" method="post">

            <div class="mb-5">
                <div class="col-sm-12 d-flex justify-content-center">
                    <label for="secteur">Choisissez un secteur : </label>
                    <select class="custom-select custom-select-lg" name="secteur" id="secteur">
                        <option selected>Sélectionner</option>
                        <c:forEach items="${listSecteurs}" var="secteur">
                            <option value="${secteur.id}">
                                    <c:out value="${secteur.nom}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <br/>
                <div>
                    <label for="numero">Numéro</label> <input type="number" size="50"
                                                                  name="numero" class="form-control" id="numero"
                                                                  aria-describedby="numero" required>
                    <span class="text-info"></span>
                </div>
                <br/>
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
                <br/>
                <div>
                    <label for="longueur">Longueur</label> <input type="number" size="50"
                                                                      name="longueur" class="form-control" id="longueur"
                                                                      aria-describedby="longueur" required>
                    <span class="text-info"></span>
                </div>
                <br/>
                <div>
                    <label for="difficulte">Choisir une difficulté:</label>
                    <select name="difficulte" id="difficulte">
                        <option selected>Sélectionner</option>
                        <c:forEach items="${listCotations}" var="cotation">
                            <option value="${listCotations.id}">
                                <c:out value="${listCotations.difficulte}"/>
                            </option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="d-flex justify-content-center mt-5">
                <button type="submit" class="btn btn-dark" required>Envoyer</button>
            </div>
        </form>
    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>
