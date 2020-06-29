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
                <h3>Adresse</h3>
                <div>
                    <label for="numeroAdresse">Numéro</label> <input type="number" size="50" value="<c:out value="${adresse.numero}"/>"
                                                                     name="numeroAdresse" class="form-control" id="numeroAdresse"
                                                                     aria-describedby="numeroAdresse" required>
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="rueAdresse">Rue</label> <input type="text" size="50" value="<c:out value="${adresse.rue}"/>"
                                                               name="rueAdresse" class="form-control" id="rueAdresse"
                                                               aria-describedby="rueAdresse" required>
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="codePostalAdresse">Code postal</label> <input type="number" size="50" value="<c:out value="${adresse.codePostal}"/>"
                                                                              name="codePostalAdresse" class="form-control" id="codePostalAdresse"
                                                                              aria-describedby="codePostalAdresse" required>
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="villeAdresse">Ville</label> <input type="text" size="50" value="<c:out value="${adresse.ville}"/>"
                                                                   name="villeAdresse" class="form-control" id="villeAdresse"
                                                                   aria-describedby="villeAdresse" required>
                    <span class="text-info"></span>
                </div>
            </div>

            <div class="mb-5">
                <h3>Site</h3>
                <div class="form-group">
                    <div>
                        <label for="nomSite">nom</label> <input type="text" size="50" value="<c:out value="${secteur.nom}"/>"
                                                                   name="nomSite" class="form-control" id="nomSite"
                                                                   aria-describedby="nomSite" required>
                        <span class="text-info"></span>
                    </div>
                    <label for="descriptionSite">Description</label>
                    <textarea class="form-control" name="descriptionSite" id="descriptionSite" required></textarea>
                </div>

            </div>

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

            <div class="mb-5">
                <h3>Voie</h3>
                <div>
                    <label for="numeroVoie">Numéro</label> <input type="number" size="50" value="<c:out value="${voie.numero}"/>"
                                                                  name="numeroVoie" class="form-control" id="numeroVoie"
                                                                  aria-describedby="numeroVoie" required>
                    <span class="text-info"></span>
                </div>
                <div>
                    <label for="nomVoie">Nom</label> <input type="text" size="50" value="<c:out value="${voie.nom}"/>"
                                                            name="nomVoie" class="form-control" id="nomVoie"
                                                            aria-describedby="nomVoie" required>
                    <span class="text-info"></span>
                </div>
                <div class="form-group">
                    <label for="descriptionVoie">Description</label>
                    <textarea class="form-control" name="descriptionVoie" id="descriptionVoie" required></textarea>
                </div>
                <div>
                    <label for="longueurVoie">Longueur</label> <input type="number" size="50" value="<c:out value="${voie.longueur}"/>"
                                                                      name="longueurVoie" class="form-control" id="longueurVoie"
                                                                      aria-describedby="longueurVoie" required>
                    <span class="text-info"></span>
                </div>

                <div>
                    <select>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                        <option value="1">test</option>
                    </select>
                </div>

                <!--<div>
                    <label for="difficulteVoie">Difficulté</label> <input type="number" size="50" value="<c:out value="${voie.difficulte}"/>"
                                                                          name="difficulteVoie" class="form-control" id="difficulteVoie"
                                                                          aria-describedby="difficulteVoie">
                    <span class="text-info"></span>
                </div>-->

                <div>

                </div>

            </div>

            <div class="mb-5">
                <h3>Photo</h3>
                <div>
                    <label for="url">Photo</label> <input type="file" size="50" value="<c:out value="${voie.difficulte}"/>"
                                                          name="url" class="form-control" id="url"
                                                          aria-describedby="url" required>
                    <span class="text-info"></span>
                    <div class="form-group">
                        <label for="descriptionUrl">Description</label>
                        <textarea class="form-control" name="descriptionUrl" id="descriptionUrl" required></textarea>
                    </div>
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