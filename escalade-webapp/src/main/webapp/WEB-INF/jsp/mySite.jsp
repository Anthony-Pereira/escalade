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

    <div class="mb-5">
        <h1 class="text-center mb-5">Site</h1>
        <form action="site" method="post">

            <div class="mb-5">
                <h3>Adresse</h3>
                <div>
                    <label for="numeroAdresse">Numéro</label> <input type="number" size="50" value="<c:out value="${adresse.numero}"/>"
                                                                     name="numeroAdresse" class="form-control" id="numeroAdresse"
                                                                     aria-describedby="numeroAdresse">
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="rueAdresse">Rue</label> <input type="text" size="50" value="<c:out value="${adresse.rue}"/>"
                                                               name="rueAdresse" class="form-control" id="rueAdresse"
                                                               aria-describedby="rueAdresse">
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="codePostalAdresse">Code postal</label> <input type="number" size="50" value="<c:out value="${adresse.codePostal}"/>"
                                                                              name="codePostalAdresse" class="form-control" id="codePostalAdresse"
                                                                              aria-describedby="codePostalAdresse">
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="villeAdresse">Ville</label> <input type="text" size="50" value="<c:out value="${adresse.ville}"/>"
                                                                   name="villeAdresse" class="form-control" id="villeAdresse"
                                                                   aria-describedby="villeAdresse">
                    <span class="text-info"></span>
                </div>
            </div>

            <div class="mb-5">
                <h3>Site</h3>
                <div class="form-group">
                    <label for="descriptionSite">Description</label>
                    <textarea class="form-control" name="descriptionSite" id="descriptionSite" ></textarea>
                </div>

            </div>

            <div class="mb-5">
                <h3>Secteur</h3>
                <div>
                    <label for="rueSecteur">nom</label> <input type="text" size="50" value="<c:out value="${secteur.nom}"/>"
                                                               name="rueSecteur" class="form-control" id="rueSecteur"
                                                               aria-describedby="rueSecteur">
                    <span class="text-info"></span>
                </div>
                <div class="form-group">
                    <label for="descriptionSecteur">Description</label>
                    <textarea class="form-control" name="descriptionSecteur" id="descriptionSecteur" ></textarea>
                </div>
            </div>

            <div class="mb-5">
                <h3>Voie</h3>
                <div>
                    <label for="numeroVoie">Numéro</label> <input type="number" size="50" value="<c:out value="${voie.numero}"/>"
                                                                  name="numeroVoie" class="form-control" id="numeroVoie"
                                                                  aria-describedby="numeroVoie">
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="nomVoie">Nom</label> <input type="text" size="50" value="<c:out value="${voie.nom}"/>"
                                                            name="nomVoie" class="form-control" id="nomVoie"
                                                            aria-describedby="nomVoie">
                    <span class="text-info"></span>
                </div>
                <div class="form-group">
                    <label for="descriptionVoie">Description</label>
                    <textarea class="form-control" name="descriptionVoie" id="descriptionVoie" ></textarea>
                </div>
                <div>
                    <label for="longueurVoie">Longueur</label> <input type="number" size="50" value="<c:out value="${voie.longueur}"/>"
                                                                      name="longueurVoie" class="form-control" id="longueurVoie"
                                                                      aria-describedby="longueurVoie">
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="difficulteVoie">Difficulté</label> <input type="number" size="50" value="<c:out value="${voie.difficulte}"/>"
                                                                          name="difficulteVoie" class="form-control" id="difficulteVoie"
                                                                          aria-describedby="difficulteVoie">
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="urlPhoto">Photo</label> <input type="file" size="50" value="<c:out value="${voie.difficulte}"/>"
                                                                    name="urlPhoto" class="form-control" id="urlPhoto"
                                                                    aria-describedby="urlPhoto">
                    <span class="text-info"></span>
                </div>
            </div>

            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-dark">Envoyer</button>
            </div>

        </form>
    </div>
</div>

<%@ include file="../../static/fragment/footer.jsp"%>

<%@ include file="../../static/fragment/javascript.jsp"%>

</body>
</html>