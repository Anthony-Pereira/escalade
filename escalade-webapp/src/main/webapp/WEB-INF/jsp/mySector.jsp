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
        <h1 class="text-center mb-5">Secteur</h1>
        <form action="mySector" method="post">

            <div class="mb-5">
                <div class="col-sm-12">
                    <label for="site">Choisissez un site : </label>
                    <select class="custom-select custom-select-lg" name="site" id="site">
                        <option selected>Sélectionner</option>
                        <c:forEach items="${listSites}" var="site">
                            <option value="${site.id}">
                                <c:out value="${site.nom}"></c:out>
                            </option>>
                        </c:forEach>
                    </select>
                </div>
                <br/>
                <div>
                    <label for="nom">nom</label> <input type="text" size="50"
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