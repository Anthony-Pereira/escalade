<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div class="container-fluid bg-dark">
		<nav class="navbar navbar-expand-lg navbar-dark" id="header">
			<a class="navbar-brand" href="index"
				title="accéder à la page d'accueil" alt="logo accueil"><img
				alt="logo du site" src="static/img/logo_escalade.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarHeader" aria-controls="navbarHeader"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarHeader">
				<div class="form-inline">
					<div class="mr-2">
						<form action="siteSearch" method="get">
							<label for="keyWord"></label> <input type="search"
								name="keyWord" id="keyword" class="form-control"
								placeholder="Rechercher" size=50 required>
							<!-- EL th:value="${keyWord}" -->
							<button class="btn btn-secondary my-1" type="submit">
								<img alt="rechercher" src="static/img/magnifying_glass.png">
							</button>
						</form>
					</div>
				</div>
				<div>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="site">Sites</a></li>
						<li class="nav-item"><a class="nav-link" href="association">Association</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="event">Evènements</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact">Contact</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="signIn">Identifiez-vous</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<nav class="navbar navbar-expand-lg" id="logo">
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="https://www.facebook.com/"><img alt="facebook"
						src="static/img/logo_facebook.png"><span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="https://www.pinterest.fr/"><img alt="pinterest"
						src="static/img/logo_pinterest.png"></a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://twitter.com/?lang=fr"><img alt="twitter"
						src="static/img/logo_twitter.png"></a></li>
			</ul>
		</div>
	</nav>
</header>
