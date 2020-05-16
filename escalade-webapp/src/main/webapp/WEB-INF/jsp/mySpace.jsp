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
	<link rel="stylesheet" href="../../static/css/bootstrap.css">
	<link rel="stylesheet" href="../../static/css/style.css">

	<title>Les amis de l'escalade</title>
</head>

<body>

	<%@ include file="fragment/header.jsp"%>

	<%@include file="fragment/mySpaceNav.jsp"%>

	<h1 class="text-center text-dark">Bienvenue dans votre espace</h1>
	<br/>
	<div class="container">
		<div class="row d-flex justify-content-center mt-3 mb-5">
			<div class="card-deck">
				<div class="card">
					<img class="card-img-top" src="static/img/topo.jpg" alt="Topo">
					<div class="card-body">
						<h5 class="card-title">Topo</h5>
						<p class="card-text">Ajouter et voir vos topos</p>
						<a href="topoForm" class="btn btn-primary">allez
							vers</a>  <!-- th:href="@{/topoForm}" --> 
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="static/img/site.jpg" alt="Site">
					<div class="card-body">
						<h5 class="card-title">Site</h5>
						<p class="card-text">Ajouter et voir vos sites</p>
						<a href="siteForm" class="btn btn-primary">allez
							vers</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="fragment/footer.jsp"%>

</body>
</html>