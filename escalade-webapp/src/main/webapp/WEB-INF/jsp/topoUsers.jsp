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

    <div>
        <table class="table">
            <caption class="text-center text-dark mb-3" id="caption">Consulter la liste des topos
                disponibles par d’autres utilisateurs
            </caption>
            <thead class="thead-light">
            <tr>
                <th>Nom</th>
                <th>Description</th>
                <th>Lieu</th>
                <th>Parution</th>
                <th>Réservation</th>
                <th>Prêteur</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listAllTopos}" var="topo">
                <tr>
                    <td><c:out value="${topo.nom}"/></td>
                    <td><c:out value="${topo.description}"/></td>
                    <td><c:out value="${topo.lieu}"/></td>
                    <td><c:out value="${topo.parution}"/></td>
                    <c:choose>
                        <c:when test="${topo.reservation == false}"><td>Non</td></c:when>
                        <c:when test="${topo.reservation == true}"><td>Oui</td></c:when>
                    </c:choose>
                    <td><c:out value="${topo.compte.pseudo}"/></td>
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