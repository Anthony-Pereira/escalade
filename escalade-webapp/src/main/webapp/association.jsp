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
			<h1 class="text-center mb-5">Association</h1>
			<p>Créée en 1991 par quatre mordus (dont un que vous pouvez encore croiser régulièrement au pied et en haut du mur),
				l'Association Les amis de l'escalade (AAE) est une association loi 1901 et donc, fonctionne comme telle.</p>
			<p>Elle est affiliée à la Fédération Française de Montagne et d'Escalade (FFME).</p>
			<p>Le club est composé d'un Bureau (Président, Vice-président, Trésorier et Secrétaire) et d'un Conseil d'Administration,
				organisé en commissions pour gérer les sorties, les ouvertures, le matériel, la communication, les évènements, ... bref,
				pour gérer toutes les facettes de la vie d'un club !</p>
			<p>L'AVE accueille quatre types de public: les adultes autonomes, les adultes en école d'escalade,
				les jeunes en école d'escalade, et les jeunes du groupe compétition.</p>
			<p>Au total, ce sont près de 350 adhérents que compte le club, dont environ 120 jeunes de 10 à 17 ans.</p>
			<p>Tout au long de l'année, les membres du Conseil d'Administration convient les adhérents à une multitude d'évènements :
				des sorties allant de la journée à la semaine, en salle ou en extérieur, des moments de partage autour d'une galette des rois,
				d'un repas de Noël, la fête du Club, les ouvertures, ...</p>
			<p>Autant de raisons pour tout le monde de participer à entretenir l'esprit du club, tourné vers une pratique non élitiste,
				accessible et ouverte à tous, dans le respect des envies de grimpe de chacun.</p>
		</div>
	</div>

	<%@ include file="static/fragment/footer.jsp"%>

	<%@ include file="static/fragment/bootstrap.jsp"%>

</body>
</html>