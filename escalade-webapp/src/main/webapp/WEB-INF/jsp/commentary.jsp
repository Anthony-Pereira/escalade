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
    <c:choose>
        <c:when test="${commentaryModified != null}">
            <div class="jumbotron">
                <h1 class="col-sm-12 d-flex justify-content-center">Modifier le commentaire</h1>
                <form action="commentary" method="post">
                    <input type="text" name="commentary">
                    <button type="submit">Modifier</button>
                </form>
                <br/>
            </div>
        </c:when>
        <c:when test="${commentaryDeleted != null}">
            <div class="jumbotron">
                <h1 class="col-sm-12 d-flex justify-content-center">Le commentaire a bien été supprimé</h1>
                <a href="site"><p>Retour à la page site</p></a>
                <br/>
            </div>
        </c:when>
    </c:choose>

</div>


<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>
