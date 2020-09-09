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
        <form action="myTopo" method="post">
            <h1 class="text-center mb-5">Topo</h1>
            <br/>
            <div class="mb-5">
                <div>
                    <label for="nom">Nom</label> <input type="text" size="50"
                                                        name="nom" class="form-control" id="nom"
                                                        aria-describedby="nom" required>
                    <span class="text-info"></span>
                </div>
                <br/>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" name="description" id="description" required></textarea>
                </div>
                <div>
                    <label for="lieu">Lieu</label> <input type="text" size="50"
                                                        name="lieu" class="form-control" id="lieu"
                                                        aria-describedby="lieu" required>
                    <span class="text-info"></span>
                </div>
                <br/>
                <div>
                    <label for="parution">Date de parution</label> <input type="number" size="50"
                                                        name="parution" class="form-control" id="parution"
                                                        aria-describedby="parution" required>
                    <span class="text-info"></span>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-dark" required>Envoyer</button>
            </div>
        </form>
    </div>
    <div>
        <table class="table">
            <caption class="text-center text-dark mb-3" id="caption">Mes topos.
            </caption>
            <thead class="thead-light">
            <tr>
                <th>Nom</th>
                <th>Description</th>
                <th>Lieu</th>
                <th>Parution</th>
                <th>Réservation</th>
                <th>Emprunteur</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listTopos}" var="topo">
                <tr>
                    <td><c:out value="${topo.nom}"/></td>
                    <td><c:out value="${topo.description}"/></td>
                    <td><c:out value="${topo.lieu}"/></td>
                    <td><c:out value="${topo.parution}"/></td>
                    <td><c:out value="${topo.reservation}"/></td>
                    <td><c:out value="${topo.emprunteur}"/></td>
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