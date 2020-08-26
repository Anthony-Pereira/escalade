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
        <form action="siteSearch.jsp" method="post">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center mb-3">
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Sites</option>
                            <c:forEach items="${listSites}" var="site">
                                <option value="${site.id}">
                                    <c:out value="${site.nom}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Cotations</option>
                            <c:forEach items="${listCotations}" var="cotation">
                                <option value="${cotation.id}">
                                    <c:out value="${cotation.difficulte}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Secteurs</option>
                            <c:forEach items="${listSecteurs}" var="secteur">
                                <option value="${secteur.id}">
                                    <c:out value="${secteur.nom}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg">
                            <option selected>Voies</option>
                            <c:forEach items="${listVoies}" var="voie">
                                <option value="${voie.voie_id}">
                                    <c:out value="${voie.nom}"/>
                                </option>
                            </c:forEach>
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


<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>

