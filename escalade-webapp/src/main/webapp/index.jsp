<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
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

	<div class="container-fluid" id="main_title">
		<h1 class="d-flex justify-content-center">Bienvenue sur le site
			des amis de l'escalade !</h1>
		<br />
		<h5 class="d-flex justify-content-center">Ce site est dedié aux
			amoureux de cette discipline qui souhaitent trouver leur prochain
			spot.</h5>
	</div>

	<!-- carousel -->
	<div class="container" id="main_img">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="static/img/slide_1.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="static/img/slide_2.jpg" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="static/img/slide_3.jpg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<!-- carousel -->

	<!-- vocabulary button -->
	<div class="container">
		<section>
			<article>
				<br />
				<div class="bg-transparent d-flex justify-content-center">
					<ul class="list-unstyled list-inline text-center my-3">
						<li class="list-inline-item"><h4>Pour les non-initiés,
								voici quelques éléments du vocabulaire du grimpeur</h4></li>
						<li class="list-inline-item"><a
							class="btn btn-secondary btn-rounded" href="vocabulary.jsp">En
								savoir plus</a></li>
					</ul>
				</div>
				<hr class="my-4">
			</article>
		</section>
	</div>
	<!-- vocabulary button -->

	<article>
		<!-- EL <span th:text="${name}"></span> <span th:text="${surname}"></span> -->
	</article>

	<%@ include file="static/fragment/footer.jsp"%>

	<%@ include file="static/fragment/javascript.jsp"%>

</body>
</html>