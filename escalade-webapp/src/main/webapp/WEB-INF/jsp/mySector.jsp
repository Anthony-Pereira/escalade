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
        <h1 class="text-center mb-5">Site</h1>
        <form action="sendSite" method="post">

            <div class="mb-5">
                <h3>Secteur</h3>
                <div>
                    <label for="nomSecteur">nom</label> <input type="text" size="50" value="<c:out value="${secteur.nom}"/>"
                                                               name="nomSecteur" class="form-control" id="nomSecteur"
                                                               aria-describedby="nomSecteur" required>
                    <span class="text-info"></span>
                </div>
                <div class="form-group">
                    <label for="descriptionSecteur">Description</label>
                    <textarea class="form-control" name="descriptionSecteur" id="descriptionSecteur" required></textarea>
                </div>
            </div>

            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-dark" required>Envoyer</button>
            </div>

        </form>
    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>