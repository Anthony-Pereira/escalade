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

	<div class="row m-3">
		<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			<h3 class="text-center text-dark mb-4">Ajouter un site</h3>

			<form action="siteForm" method="post">

				<div class="mr-3 my-2">
					<label for="titleSite">Titre</label> <input type="text"
						name="titleSite" class="form-control" id="titleSite"
						aria-describedby="titleSite" placeholder="Insérez le titre"
						required>
				</div>
				<div class="row">

					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<label for="department">Departement</label> <select
							class="form-control" name="department" id="department">
							<!-- <option th:each="i : ${numbers.sequence(1, 101)}"
								th:value="${i}" th:text="${i}"></option> -->
						</select> <label class="mt-2" for="type">type</label> <select
							class="form-control" name="type" id="type">
							<option value="Sites de blocs">Sites de blocs</option>
							<option value="Sites de falaises">Sites de falaises</option>
						</select> <label class="mt-2" for="orientation">Orientation</label> <select
							class="form-control" name="orientation" id="orientation">
							<option value="Toutes">Toutes</option>
							<option value="Nord">Nord</option>
							<option value="Sud">Sud</option>
							<option value="Est">Est</option>
							<option value="Ouest">Ouest</option>
						</select>
					</div>

					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<label for="height">Hauteur</label> <select class="form-control"
							name="height" id="height">
							<!-- <option th:each="i : ${numbers.sequence(1, 1000)}"
								th:value="${i}" th:text="${i}"></option> -->
						</select> <label class="mt-2" for="numberOfWay">Nombre de voie</label> <select
							class="form-control" name="numberOfWay" id="numberOfWay">
							<!-- <option th:each="i : ${numbers.sequence(1, 50)}" th:value="${i}"
								th:text="${i}"></option> -->
						</select> <label class="mt-2" for="quotation">Cotation</label> <select
							class="form-control" name="quotation" id="quotation">
							<option value="0">1</option>
							<option value="1">2</option>
							<option value="2">3</option>
							<option value="3">4</option>
							<option value="5A">5A</option>
							<option value="5B">5B</option>
							<option value="5C">5C</option>
							<option value="6A">6A</option>
							<option value="6A+">6A+</option>
							<option value="6B">6B</option>
							<option value="6B+">6B+</option>
							<option value="6C">6C</option>
							<option value="6C+">6C+</option>
							<option value="7A">7A</option>
							<option value="7A+">7A+</option>
							<option value="7B">7B</option>
							<option value="7B+">7B+</option>
							<option value="7C">7C</option>
							<option value="7C+">7C+</option>
							<option value="8A">8A</option>
							<option value="8A+">8A+</option>
							<option value="8B">8B</option>
							<option value="8B+">8B+</option>
							<option value="8C">8C</option>
							<option value="8C+">8C+</option>
							<option value="9A">9A</option>
							<option value="9A+">9A+</option>
							<option value="9B">9B</option>
							<option value="9B+">9B+</option>
							<option value="9C">9C</option>
						</select>
					</div>
				</div>
				<div>
					<label class="mt-2" for="description">Description</label>
					<textarea rows="5" class="form-control" id="description"
						name="description" aria-describedby="description"
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
					de mes sites</caption>
				<thead class="thead-light">
					<tr>
						<th>n°</th>
						<th>Titre</th>
						<th>Departement</th>
						<th>Type</th>
						<th>Orientation</th>
						<th>Hauteur</th>
						<th>Voie</th>
						<th>Cotation</th>
						<th>Description</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<!-- <tr th:each="s:${listSite}">
						<td th:text="${s.id}">id</td>
						<td th:text="${s.titleSite}">Titre du site</td>
						<td th:text="${s.department}">Departement</td>
						<td th:text="${s.type}">Type</td>
						<td th:text="${s.orientation}">Orientation</td>
						<td th:text="${s.height}">Hauteur</td>
						<td th:text="${s.numberOfWay}">Nombre de voie</td>
						<td th:text="${s.quotation}">Cotation</td>
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
	</div>
	<div class="img_myspace_return">
		<a href="mySpace"><img alt="retour sur mon espace"
							   src="static/img/exit.png" title="retour sur mon espace"></a>
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