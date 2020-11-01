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

<%@ include file="../../static/fragment/header.jsp" %>

<div class="container">
    <div class="jumbotron bg-transparent">
        <h1 class="text-center"><c:out value="${secteur.nom}"/></h1>
        <br/>
        <p><c:out value="${secteur.description}"/></p>
    </div>
    <c:choose>
        <c:when test="${listVoies != null}">
            <div>
                <table class="table">
                    <thead class="thead-light">
                    <tr>
                        <th>Numéro</th>
                        <th>Nom</th>
                        <th>Description</th>
                        <th>Longueur</th>
                        <th>Difficulté</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listVoies}" var="voie">
                        <tr>
                            <td><c:out value="${voie.numero}"/></td>
                            <td><c:out value="${voie.nom}"/></td>
                            <td><c:out value="${voie.description}"/></td>
                            <td><c:out value="${voie.longueur}"/></td>
                            <td><c:out value="${voie.difficulte}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:when>
        <c:when test="${listVoies == null}">
            <div class="text-center h3">
                <p>Aucune voie n'a été trouvé pour ce secteur</p>
                <br/>
            </div>
        </c:when>
    </c:choose>
</div>

<%@ include file="../../static/fragment/footer.jsp" %>

<%@ include file="../../static/fragment/bootstrap.jsp" %>

</body>
</html>