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

	<%@ include file="static/fragment/header.jsp"%>

	<div>
		<table class="table">
			<caption class="text-center text-dark" id="caption">Resultat
				de la recherche</caption>
			<thead class="thead-light">
				<tr>
					<th>n°</th>
					<th>Titre</th>
					<th>Departement</th>
					<th>Type</th>
					<th>Hauteur</th>
					<th>Voie</th>
					<th>Cotation</th>
					<th>Orientation</th>
					<th>Description</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<!-- <tr th:each="s:${searchResult}">
						<td th:text="${s.id}">id</td>
						<td th:text="${s.titleSite}">Titre du site</td>
						<td th:text="${s.department}">Departement</td>
						<td th:text="${s.type}">Type</td>
						<td th:text="${s.height}">Hauteur</td>
						<td th:text="${s.numberOfWay}">Nombre de voie</td>
						<td th:text="${s.quotation}">Cotation</td>
						<td th:text="${s.orientation}">Orientation</td>
						<td th:text="${s.description}">Description</td>
						<td class=" d-flex justify-content-center"><a
							onclick="return confirm('Êtes-vous sûre de vouloir supprimer le site enregistré ?')"
							class="btn btn-secondary"
							th:href="@{/siteDelete(id=${s.id},currentPage=${currentPage})}">Supprimer</a></td>
					</tr> -->
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

	<%@ include file="static/fragment/footer.jsp"%>

</body>
</html>