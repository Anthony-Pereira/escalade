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

<%@ include file="../../static/fragment/header.jsp" %>

<div class="container">
    <c:choose>
        <c:when test="${!empty site}">
            <div class="jumbotron bg-transparent">
                <h1 class="text-center"><c:out value="${site.nom}"/></h1>
                <br/>
                <c:if test="${site.officielEscalade == true}">
                    <h3 class="text-center">Officiel Les amis de l’escalade</h3>
                </c:if>
                <br/>
                <p><c:out value="${site.description}"/></p>
            </div>
            <div>
                <form action="voie" method="get">
                    <label for="secteur" class="h4">Liste des secteurs du site :</label>
                    <select name="secteur" id="secteur" class="custom-select">
                        <c:forEach items="${listSecteurs}" var="secteur">
                            <option value="${secteur.id}">
                                <c:out value="${secteur.nom}"/> - <c:out value="${secteur.description}"/>
                            </option>
                        </c:forEach>
                    </select>
                    <div class="col-sm-12 d-flex justify-content-center mt-3">
                        <button type="submit" class="btn btn-primary my-1">Rechercher</button>
                    </div>
                </form>
            </div>
            <br/>
            <c:if test="${!empty compte}">
                <c:choose>
                    <c:when test="${empty editerCommentaire}">
                        <div class="form-group">
                            <h3>Commentaire</h3>
                            <br/>
                            <form method="post" action="site">
                                <textarea class="form-control" name="nouveauCommentaire" rows="10" cols="100" required></textarea>
                                <br/>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-primary tx-tfm" name="site" value="${site.id}">Envoyer</button>
                                </div>
                            </form>
                            <br/>
                        </div>   
                    </c:when>
                    <c:when test="${!empty editerCommentaire}">
                        <div class="form-group">
                            <h3>Menu modification de commentaire</h3>
                            <br/>
                            <h4>Membre : <c:out value="${editerCommentaire.compte.pseudo}"/></h4>
                            <br/>
                            <form method="post" action="site">
                                <h6>Dernier message modifié : <c:out value="${editerCommentaire.commentaire}"/></h6>
                                <textarea class="form-control" name="commentaireAEditer" rows="10" cols="100" required></textarea>
                                <br/>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-primary tx-tfm" name="modifierCommentaire" value="${editerCommentaire.id}">Envoyer</button>
                                </div>
                            </form>
                            <br/>
                        </div>
                    </c:when>
                </c:choose>
            </c:if>
            <div>
                <table class="table">
                    <caption class="text-center text-dark mb-3" id="caption">Retrouvez ici les commentaires des utilisateurs
                    </caption>
                    <thead class="thead-light">
                    <tr>
                        <th>Utilisateur</th>
                        <th>Commentaire</th>
                        <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listCommentaires}" var="commentaire">
                        <tr>
                            <td><c:out value="${commentaire.compte.pseudo}"/></td>
                            <td><c:out value="${commentaire.commentaire}"/></td>
                            <td><c:out value="${commentaire.date}"/></td>

                            <c:if test="${compte.role.id == 1 || compte.role.id == 2}">
                                <form method="post" action="site">
                                    <td>
                                        <button type="submit" value="${commentaire.id}" name="modifierCommentaire" id="modifierCommentaire" class="btn btn-outline-secondary my-1">modifier</button>
                                        <button type="submit" value="${commentaire.id}" name="supprimerCommentaire" id="supprimerCommentaire" class="btn btn-outline-secondary my-1">supprimer</button>
                                    </td>
                                </form>
                            </c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:when>
        <c:when test="${!empty listSites}">
            <div class="jumbotron">
                <table class="table">
                    <h3 class="text-center text-dark mb-3">Liste des sites</h3>
                    <br/>
                    <tr>
                        <th>Nom</th>
                        <th>Adresse</th>
                        <th>Officiel</th>
                    </tr>
                        <c:forEach items="${listSites}" var="site">
                            <tr>
                                <td>${site.nom}</td>
                                <td>${site.adresse.numero}, rue ${site.adresse.rue} ${site.adresse.codePostal} ${site.adresse.ville}</td>
                                <c:choose>
                                    <c:when test="${site.officielEscalade == true}"><td>Oui</td></c:when>
                                    <c:when test="${site.officielEscalade == false}"><td>Non</td></c:when>
                                </c:choose>
                            </tr>
                        </c:forEach>
                </table>
            </div>
        </c:when>
    </c:choose>
</div>

<%@ include file="../../static/fragment/footer.jsp" %>

<%@ include file="../../static/fragment/bootstrap.jsp" %>

</body>
</html>