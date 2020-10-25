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
		<div class="jumbotron">
		<h1 class="text-center mb-5">Contact</h1>
			<h3>Adresse</h3>
				<p>AAE 1, rue de la Ronde 49240 Avrillé</p>
			<h3>Facebook</h3>
				<a href="https://www.facebook.com/">https://www.facebook.com/</a>
			<h3 class="mt-3">Téléphones</h3>
				<p>Secrétariat (Claire) : 06 11 25 53 77</p>
		</div>
	</div>

	<%@ include file="static/fragment/footer.jsp"%>

	<%@ include file="static/fragment/bootstrap.jsp"%>

</body>
</html>