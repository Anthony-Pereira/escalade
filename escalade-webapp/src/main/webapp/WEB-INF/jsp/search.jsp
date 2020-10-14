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
        <form class="form-inline" action="site" method="get">
            <div class="col-sm-12 d-flex justify-content-center">
                <select name="site" id="site" class="custom-select custom-select-lg">
                    <option selected >Sélectionner</option>
                    <c:forEach items="${listSites}" var="site">
                        <option value="${site.id}">
                            <c:out value="${site.nom}"/>
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-12 d-flex justify-content-center">
                <a href="moreCriteria">plus de critères</a>
            </div>
            <div class="col-sm-12 d-flex justify-content-center">
                <button type="submit" class="btn btn-primary my-1">Rechercher</button>
            </div>
        </form>
    </div>
    <div>
        <table class="table">
                <caption class="text-center text-dark mb-3" id="caption">Retrouvez ici notre sélection des sites d'escalade en France.
                </caption>
                <thead class="thead-light">
                <tr>
                    <th>Nom</th>
                    <th>Département</th>
                    <th>Region</th>
                    <th>Pays</th>
                    <th>Officiel les amis de l’escalade</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listSites}" var="site">
                        <tr>
                            <td><c:out value="${site.nom}"/></td>
                            <td><c:out value="${site.adresse.departement.id}"/></td>
                            <td><c:out value="${site.adresse.departement.region.nom}"/></td>
                            <td><c:out value="${site.adresse.departement.region.pays.nom}"/></td>
                            <c:choose>
                                <c:when test="${site.officielLesAmisDeLescalade == true}"><td>Oui</td></c:when>
                                <c:when test="${site.officielLesAmisDeLescalade == false}"><td>Non</td></c:when>
                            </c:choose>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
    </div>

</div>


<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>
