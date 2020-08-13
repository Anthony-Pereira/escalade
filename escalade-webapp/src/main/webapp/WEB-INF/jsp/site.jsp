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
        <form class="form-inline" action="site" method="post">
            <div class="col-sm-12 d-flex justify-content-center">
                <select name="site" id="site" class="custom-select custom-select-lg">
                    <option selected >Sélectionner</option>
                    <c:forEach items="${listSite}" var="listSite">
                        <option value="${listSite.id}">
                            <c:out value="${listSite.nom}"/>
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
                    <th>Region</th>
                    <th>Département</th>
                    <th>Voie</th>
                    <th>Cotation</th>
                    <th>Hauteur</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listSite}" var="listSite">
                        <tr>
                            <td><c:out value="${listSite.nom}"/></td>
                            <td><c:out value="${listSite.description}"/></td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <ul class="nav nav-pills">
                <!-- <li class="nav-item"
					th:class="${currentPage==status.index}?'active':''"
					th:each="page,status:${pageNumber}"><a class="nav-link"
					th:href="@{/siteForm(page=${status.index})}"
					th:text="${status.index}"></a></li> -->
            </ul>
    </div>

</div>


<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>
