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

<div class="col-md-6 mb-5 mx-0 px-0">
    <label for="departement">Département</label>
    <select name="departement" class="form-control" id="departement">
        <c:forEach var="d" items="departement">
            <option><c:out value="${d}"/></option>
        </c:forEach>
    </select>
    <label for="region">Région</label>
    <select name="region" class="form-control" id="region">
        <c:forEach var="r" items="region">
            <option><c:out value="${r}"/></option>
        </c:forEach>
    </select>
    <label for="pays">Pays</label>
    <select name="pays" class="form-control" id="pays">
        <c:forEach var="p" items="pays">
            <option><c:out value="${p}"/></option>
        </c:forEach>
    </select>
    <div class="col-md-6 d-flex justify-content-center">
        <button class="btn btn-dark mt-5" type="submit">Enregistrer</button>
    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

</body>
</html>