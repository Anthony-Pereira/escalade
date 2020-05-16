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

	<div class="row m-3">
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<h3 class="text-center text-dark mb-4">Ajouter un topo</h3>
			<form action="topoForm" method="post">
				<div class="form-row">
					<div class="mr-3 my-2">
						<label for="titleTopo">Titre</label> <input type="text"
							name="titleTopo" class="form-control" id="titleTopo"
							aria-describedby="titleTopo" placeholder="Insérer le titre"
							required>
					</div>
					<div class="mr-3 my-2">
						<label for="location">Lieu</label> <input type="text"
							name="location" class="form-control" id="location"
							aria-describedby="location" placeholder="insérer le lieu"
							required>
					</div>
					<div class="mr-3 my-2">
						<label for="releaseDate">Date de parution</label> <input
							type="date" name="releaseDate" id="releaseDate"
							class="form-control" aria-describedby="releaseDate"
							placeholder="ex: 01/01/2000" required>
					</div>
				</div>
				<div class="form-row my-2">
					<label for="description">Description</label>
					<textarea rows="5" name="description" class="form-control"
						id="description" aria-describedby="description"
						placeholder="Inserez votre description" required>
							</textarea>
				</div>
				<div class="xs-12 sm-12 md-12 lg-12 text-center my-3">
					<button type="submit" class=" btn my btn btn-primary tx-tfm">Validez</button>
				</div>
			</form>
		</div>
		<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
			<table class="table">
				<caption class="text-center text-dark mb-4" id="caption">Liste
					de mes topos</caption>
				<thead class="thead-light">
					<tr>
						<th>n°</th>
						<th>Titre</th>
						<th>lieu</th>
						<th>Date de parution</th>
						<th>Description</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<!-- <tr th:each="t:${listTopo}">
						<td th:text="${t.id}">id</td>
						<td th:text="${t.titleTopo}">Titre du topo</td>
						<td th:text="${t.location}">Location</td>
						<td th:text="${t.releaseDate}">Date de parution</td>
						<td th:text="${t.description}">Description</td>
						<td class=" d-flex justify-content-center"><a
							onclick="return confirm('Êtes-vous sûre de vouloir supprimer le topo enregistré ?')"
							class="btn btn-primary"
							th:href="@{/topoDelete(id=${t.id},currentPage=${currentPage})}">Supprimer</a></td>
					</tr> -->
				</tbody>
			</table>
			<ul class="nav nav-pills">
				<!-- <li class="nav-item"
					th:class="${currentPage==status.index}?'active':''"
					th:each="page,status:${pageNumber}"><a class="nav-link"
					th:href="@{/topoForm(page=${status.index})}"
					th:text="${status.index}"></a></li> -->
			</ul>
		</div>
	</div>
	<div class="img_myspace_return">
		<a href="mySpace" href="mySpace"><img alt="retour sur mon espace"
                                              src="static/img/exit.png" title="retour sur mon espace"></a>
	</div>

	<%@ include file="fragment/footer.jsp"%>

</body>
</html>