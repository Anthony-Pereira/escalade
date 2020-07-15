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

<%@ include file="static/fragment/header.jsp"%>

<div>
    <div class="jumbotron">
        <h1 class="col-sm-12 d-flex justify-content-center">Sites</h1>
        <br/>
        <form action="siteSearch.jsp" method="post">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center mb-3">
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Lieux</option>
                            <option value="courchon">Courchon (Verdon)</option>
                            <option value="falkenfels">Le Falkenfels</option>
                            <option value="restonica">La Restonica</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Cotations</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Secteurs</option>
                            <option value="secteur 1">secteur 1</option>
                            <option value="secteur 2 ">secteur 2</option>
                            <option value="secteur 3">secteur 3</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Voies</option>
                            <option value="voie 1">voie 1</option>
                            <option value="voie 2">voie 2</option>
                            <option value="voie 3">voie 3</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 d-flex justify-content-center">
                <button type="submit" class="btn btn-primary my-1">Envoyer</button>
            </div>
        </form>
    </div>

</div>


<%@ include file="static/fragment/footer.jsp"%>

<%@ include file="static/fragment/bootstrap.jsp"%>

</body>
</html>

