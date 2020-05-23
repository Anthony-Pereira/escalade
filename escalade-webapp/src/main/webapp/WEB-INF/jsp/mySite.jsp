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

<%@ include file="fragment/header.jsp"%>

<div class ="container">

    <div class="mb-5">
        <h1 class="text-center mb-5">Site</h1>
        <form action="site" method="post">

            <div class="row">
                <div class ="col-lg-6">
                    <div class="form-group">
                        <label for="nom">Nom</label>
                        <input type="text" class="form-control" name="nom" id="nom"/>
                    </div>

                    <div class="form-group">
                        <label for="adresse">Adresse</label>
                        <input type="text" class="form-control" name="adresse" id="adresse"/>
                    </div>
                </div>
                <div class ="col-lg-6">
                    <div class="form-group">
                        <label for="photo">Photo</label>
                        <input type="file" class="form-control" name="photo" id="photo"/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control" name="description" id="description" ></textarea>
            </div>
            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-dark">Envoyer</button>
            </div>

        </form>
    </div>
</div>

<%@ include file="fragment/footer.jsp"%>

</body>
</html>