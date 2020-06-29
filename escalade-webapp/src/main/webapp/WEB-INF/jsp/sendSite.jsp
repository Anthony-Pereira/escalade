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

    <%@include file="../../static/fragment/header.jsp"%>

    <div class="container">
        <div class="jumbotron">
            <h2>Transmission des données</h2>
            <p>Transmission terminée</p>
            <p>Un mail a été transmis à l'équipe de modération qui vous tiendra informé dès validation du site</p>
            <p class="font-weight-bold"></p>
            <p>L'ensemble des utilisateurs de l'association des amis de l'escalade vous remercient de votre participation :) A bientôt et bonne grimpe !</p>
        </div>
    </div>

    <%@include file="../../static/fragment/footer.jsp"%>

    <%@include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>
