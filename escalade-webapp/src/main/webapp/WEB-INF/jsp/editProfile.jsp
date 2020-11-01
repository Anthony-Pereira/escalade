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

    <%@include file="fragment/topBar.jsp"%>

    <div class="bg-light">

        <form action="editProfileAccount" method="post">

            <div class ="row m-3">
                <div class="col-md-4 mb-5 m-0 p-0">
                    <div class="col-sm-12">
                        <br/>
                        <label for="pseudo" class="h4">Pseudo</label> <input type="text" size="50" value="<c:out value="${compte.pseudo}"/>"
                                                                  name="pseudo" class="form-control  col-sm-4" id="pseudo"
                                                                  aria-describedby="pseudo" placeholder="nouveau pseudo">
                        <span class="text-info"></span>
                    </div>
                </div>

                <div class="col-md-4 bg-light">
                    <br/>
                    <h4 class="my-2 mr-2 pt-2">À propos de moi</h4>
                        <div>
                            <label for="prenom">Prénom</label> <input type="text" size="50" value="<c:out value="${compte.prenom}"/>"
                                                                      name="prenom" class="form-control" id="prenom"
                                                                      aria-describedby="prenom">
                            <span class="text-info"></span>
                        </div>
                        <div>
                            <label for="nom">Nom</label> <input type="text" size="50" value="<c:out value="${compte.nom}"/>"
                                                                name="nom" class="form-control" id="nom"
                                                                aria-describedby="nom">
                            <span class="text-info"></span>
                        </div>
                        <div>
                            <label for="numTelephone">Numéro de téléphone</label> <input type="tel" size="50" value="<c:out value="${compte.numTelephone}"/>"
                                                                                         name="numTelephone" class="form-control" id="numTelephone"
                                                                                         aria-describedby="numTelephone">
                            <span class="text-info"></span>
                        </div>
                        <c:choose>
                            <c:when test="${isValidPhoneNumber == true}"><p class="text-success">Le numéro de téléphone a bien été modifié</p></c:when>
                            <c:when test="${isValidPhoneNumber == false}"><p class="text-danger">Le numéro de téléphone a mal été saisie. Veuillez réessayer.</p></c:when>
                            <c:otherwise></c:otherwise>
                        </c:choose>
                        <div class="d-flex justify-content-center m-3">
                            <button type="submit" class="btn btn-dark">Envoyer</button>
                        </div>
                </div>
            </div>
        </form>

        <div class="col-md-4 bg-light">
            <form  action="editProfileAddress" method="post">
                <div class="col-md-12 bg-light">
                    <h4 class="my-2 mr-2 pt-2">Adresse</h4>

                    <div>
                        <label for="numero">Numéro</label> <input type="number" size="50" value="<c:out value="${adresse.numero}"/>"
                                                                  name="numero" class="form-control" id="numero"
                                                                  aria-describedby="numero" required>
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="rue">Rue</label> <input type="text" size="50" value="<c:out value="${adresse.rue}"/>"
                                                            name="rue" class="form-control" id="rue"
                                                            aria-describedby="rue" required>
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="codePostal">Code postal</label> <input type="number" size="50" value="<c:out value="${adresse.codePostal}"/>"
                                                                           name="codePostal" class="form-control" id="codePostal"
                                                                           aria-describedby="codePostal" required>
                        <span class="text-info"></span>
                    </div>
                    <div>
                        <label for="ville">Ville</label> <input type="text" size="50" value="<c:out value="${adresse.ville}"/>"
                                                                name="ville" class="form-control" id="ville"
                                                                aria-describedby="ville" required>
                        <span class="text-info"></span>
                    </div>
                    <br/>
                    <c:choose>
                        <c:when test="${modificationAddressValid == true}"><p class="text-success">Les modifications ont bien été pris en compte.</p></c:when>
                        <c:when test="${modificationAddressValid == false}"><p class="text-danger">les modifications ont mal été saisie. Veuillez réessayer.</p></c:when>
                    </c:choose>
                    <div class="d-flex justify-content-center m-3">
                        <button type="submit" class="btn btn-dark">Envoyer</button>
                    </div>
                </div>
            </form>
        </div>
        <br/>
    </div>

    <%@include file="../../static/fragment/footer.jsp"%>

    <%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>