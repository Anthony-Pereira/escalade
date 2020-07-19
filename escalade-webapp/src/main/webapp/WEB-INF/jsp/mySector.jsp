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
                    <select class="custom-select custom-select-lg">
                        <option selected>Sélectionner</option>
                        <option value="courchon">Courchon (Verdon)</option>
                        <option value="falkenfels">Le Falkenfels</option>
                        <option value="restonica">La Restonica</option>
                    </select>
                </div>
                <br/>
                <div>
                    <label for="nom">nom</label> <input type="text" size="50" value="<c:out value="${secteur.nom}"/>"
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