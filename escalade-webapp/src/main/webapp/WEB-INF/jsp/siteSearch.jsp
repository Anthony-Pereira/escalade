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

	<div class="container">
		<div class="jumbotron bg-transparent">
			<h1 class="text-center"><c:out value="${sessionScope.siteTitle}"/></h1>
			<br/>
			<c:if test="${sessionScope.siteOfficielLesAmisDeLescalade == true}">
				<h3 class="text-center">Officiel Les amis de l’escalade</h3>
			</c:if>
			<br/>
			<p><c:out value="${sessionScope.siteDescription}"/></p>
		</div>
		<c:if test="${!empty compte}">
			<div class="form-group">
				<h3>Commentaire</h3>
				<br/>
				<form method="post" action="siteSearch">
					<textarea class="form-control" name="commentaire" id="commentaire" rows="10" cols="100" required></textarea>
					<br/>
					<div class="d-flex justify-content-center">
						<button type="submit" class="btn btn-primary tx-tfm">Envoyer</button>
					</div>
				</form>
				<br/>
				<div>
					<table class="table">
						<caption class="text-center text-dark mb-3" id="caption">Retrouvez ici les commentaires des utilisateurs.
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

								<c:if test="${commentaire.compte.role == 1 || commentaire.compte.role == 2}">
									<td>
										<form action="commentary" method="get">
											<div>
												<button type="submit"
														class="btn btn-secondary" name="commentary" value="0">Modifier</button>
												<button type="submit"
														class="btn btn-secondary" name="commentary" value="1">Supprimer</button>
											</div>
										</form>
									</td>
								</c:if>
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
				<br/>
			</div>
		</c:if>
	</div>

	<%@ include file="../../static/fragment/footer.jsp"%>

	<%@ include file="../../static/fragment/bootstrap.jsp"%>

</body>
</html>