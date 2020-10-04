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
        <form action="moreCriteria" method="post">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center mb-3">
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg" name="departement" id="departement">
                            <option selected>Departements</option>
                            <c:forEach items="${listDepartements}" var="departement">
                                <option value="${departement.id}">
                                    <c:out value="${departement.nom}"/>
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <select class="custom-select custom-select-lg" name="cotation" id="cotation">
                            <option selected>Cotations</option>
                            <c:forEach items="${listCotations}" var="cotation">
                                <option value="${cotation.id}">
                                    <c:out value="${cotation.difficulte}"/>
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
        <br/>
        <c:if test="${!empty departement || !empty difficulte}">
            <c:choose>
                <c:when test="${listSiteByCriteria != null}">
                    <p class="text-center h3">Le résultat de la recherche est : </p><c:out value="${listSiteByCriteria}"/>
                </c:when>
                <c:when test="${listSiteByCriteria == null}">
                    <p class="text-center h3">Aucun résultat trouvé</p>
                </c:when>
            </c:choose>
        </c:if>
    </div>

</div>


<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>

