<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<div class="container-fluid bg-dark">
		<div class="row">

			<nav class="col-lg-10 navbar navbar-expand-lg navbar-dark" id="header">
				<a class="navbar-brand" href="index.jsp"
				   title="accéder à la page d'accueil" alt="logo accueil"><img
						alt="logo du site" src="static/img/logo_escalade.png"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarHeader" aria-controls="navbarHeader"
						aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarHeader">
					<div>
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link" href="search">Sites</a></li>
							<li class="nav-item"><a class="nav-link" href="association.jsp">Association</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="event.jsp">Evènements</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="d-flex align-content-center">
				<nav class="col-lg-2 navbar navbar-expand-lg navbar-dark" id="authentification">
					<ul class="navbar-nav mr-auto">
						<c:choose>
							<c:when test="${empty sessionScope.menu}"><li class="nav-item"><a class="nav-link" href="signUp">Inscription</a></li></c:when>
							<c:when test="${!empty sessionScope.menu}"><li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="mySpace" id="navbarDropdownMenuLink"
								   role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Menu
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="mySpace">Mon espace</a>
									<a class="dropdown-item" href="profile">Mon profil</a>
									<a class="dropdown-item" href="parameter">Mes paramètres</a>
								</div>
							</li>
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${empty sessionScope.authentification}"><li class="nav-item"><a class="nav-link" href="signIn">Connexion</a></li></c:when>
							<c:when test="${!empty sessionScope.authentification}"><li class="nav-item"><a class="nav-link" href="logOut">Déconnexion</a></li></c:when>
						</c:choose>
					</ul>
				</nav>
			</div>
		</div>
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
