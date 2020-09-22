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
                <th>Prêteur</th>
                <th>Statut</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listAllTopos}" var="topo">
                <tr>
                    <td><c:out value="${topo.nom}"/></td>
                    <td><c:out value="${topo.description}"/></td>
                    <td><c:out value="${topo.lieu}"/></td>
                    <td><c:out value="${topo.parution}"/></td>
                    <td><c:out value="${topo.compte.pseudo}"/></td>
                    <c:choose>
                        <c:when test="${topo.reservation == 0}"><td class="bg-light text-center">disponible</td></c:when>
                        <c:when test="${topo.reservation == 1}"><td class="bg-light text-center">indisponible</td></c:when>
                        <c:when test="${topo.reservation == 2}"><td class="bg-light text-center">en attente</td></c:when>
                    </c:choose>
                    <c:choose>
                        <c:when test="${topo.reservation == 0}">
                            <form method="post" action="topoUsers">
                                <td>
                                    <button type="submit" value="${topo.id}" name="reservation" class="btn btn-outline-secondary my-1">Réserver</button>
                                </td>
                            </form>
                        </c:when>
                        <c:when test="${sessionScope.topo.reservation == 1} || ${topo.reservation == 2}"></c:when>
                    </c:choose>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <ul class="nav nav-pills">
        </ul>
    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>