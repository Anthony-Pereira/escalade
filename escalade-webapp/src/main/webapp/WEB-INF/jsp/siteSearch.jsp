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
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	<link rel="stylesheet" href="static/css/style.css">

	<title>Les amis de l'escalade</title>
</head>

<body>

	<%@ include file="fragment/header.jsp"%>

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

	<%@ include file="fragment/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>