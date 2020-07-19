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

<div>
    <div class="jumbotron">
        <h1 class="col-sm-12 d-flex justify-content-center">Sites</h1>
        <br/>
        <form class="form-inline" action="siteSearch.jsp" method="post">
            <div class="col-sm-12 d-flex justify-content-center">
                <select class="custom-select custom-select-lg">
                    <option selected>Sélectionner</option>
                    <option value="courchon">Courchon (Verdon)</option>
                    <option value="falkenfels">Le Falkenfels</option>
                    <option value="restonica">La Restonica</option>
                </select>
            </div>
            <div class="col-sm-12 d-flex justify-content-center">
                <a href="moreCriteria">plus de critères</a>
            </div>
            <div class="col-sm-12 d-flex justify-content-center">
                <button type="submit" class="btn btn-primary my-1">Envoyer</button>
            </div>
        </form>
    </div>

</div>


<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>
