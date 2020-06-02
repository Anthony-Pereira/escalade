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

	<div class="container">
		<div class="jumbotron bg-transparent">
			<h2>Vocabulaire du grimpeur</h2>
			<hr class="my-4">
			<ul class="list-group list-group-flush">
				<li class="list-group-item">Un site ou spot, c’est un lieu où
					il est possible de grimper.</li>
				<li class="list-group-item">Les sites peuvent être découpés en
					plusieurs secteurs qui regroupent un ensemble de voies.</li>
				<li class="list-group-item">« Lao Tzeu l'a dit : il faut
					trouver la voie » : c’est le chemin à emprunter par le grimpeur
					pour arriver à destination : le haut de la voie.</li>
				<li class="list-group-item">si la voie est découpée en
					plusieurs « parties » à grimper les unes après les autres, ces
					parties s’appellent des longueurs et on trouve un relai en haut de
					chaque longueur.</li>
				<li class="list-group-item">Quand le grimpeur arrive en haut de
					la longueur, c’est à ce relai qu’il se vache, c’est à dire qu’il
					s’y accroche, à l’aide de sa vache ou longe (corde nouée sur le
					baudrier du grimpeur et équipée d’un mousqueton à verrouillage).</li>
				<li class="list-group-item">Les points ou spits sont des
					ancrages fixes que l’on trouve dans les voies dites « équipées » et
					qui permettent au grimpeur de s’assurer au fur et à mesure de sa
					progression, à l’aide de dégaines</li>
				<li class="list-group-item">La cotation d’une longueur ou d’une
					voie, représente sa difficulté. En France, le système de cotation
					va, en gros, par ordre croissant de difficulté, de 3 à 9c. Le
					chiffre est en quelque sorte, l’unité principale et la lettre une
					sous-unité (de « a » à « c »)</li>
				<li class="list-group-item">Un topo est un recueil contenant
					toutes les informations utiles sur les sites d’escalade d’une
					région (les secteurs, les voies, leur hauteur, leur cotation, le
					nombre de points…).</li>
			</ul>
		</div>
	</div>

</body>
</html>