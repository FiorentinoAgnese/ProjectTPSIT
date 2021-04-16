<%@page import="projectFAMA.DBManager"%>
<%@ page language="java" import="java.util.ArrayList"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%!ArrayList luoghi;
	int i;
	String provincia;
	DBManager db;
	ArrayList p;
	String imm;
	String regione;%>
<%
regione = (String) session.getAttribute("REGIONE");
luoghi = (ArrayList) session.getAttribute("SESSION_PROVINCE");
db = new DBManager();
%>
<!doctype html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FAMA TRAVEL AGENCY</title>
<!-- Font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i%7CRajdhani:400,600,700"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/loader/loaders.css">
<link rel="stylesheet" href="assets/css/font-awesome/font-awesome.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/aos/aos.css">
<link rel="stylesheet" href="assets/css/swiper/swiper.css">
<link rel="stylesheet" href="assets/css/lightgallery.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">

</head>

<body>
	<div class="css-loader">
		<div
			class="loader-inner line-scale d-flex align-items-center justify-content-center"></div>
	</div>
	<header class="position-absolute w-100">
		<div class="container">
			<div
				class="top-header d-none d-sm-flex justify-content-between align-items-center">
				<div class="contact">
					<img src=>
				</div>
				<nav class="d-flex aic">
					<ul class="nav social d-none d-md-flex">
						<li><a href="https://www.facebook.com/francesco.minerba.94"
							target="_blank"><i class="fa fa-facebook"></i></a></li>
						<li><a href="https://twitter.com/frances05288570"
							target="_blank"><i class="fa fa-twitter"></i></a></li>
					</ul>
				</nav>
			</div>
			<nav class="navbar navbar-expand-md navbar-light">

				<div class="collapse navbar-collapse justify-content-end"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="#servizi">Servizi</a></li>
                        <li class="nav-item"><a class="nav-link" href="#chisiamo?">Chi Siamo?</a></li>
                        <li class="nav-item"><a class="nav-link" href="#mete">Mete</a></li>
                        <li class="nav-item"><a class="nav-link" href="#people">Personale</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Prenotazione</a></li>-->
						<li class="nav-item"><a class="nav-link" href="#contact">Contatti</a></li>
					</ul>
					<form class="bg-white search-form" method="get" id="searchform">
						<div class="input-group">
							<input class="field form-control" id="s" name="s" type="text"
								placeholder="Search"> <span class="input-group-btn">
								<input class="submit btn btn-primary" id="searchsubmit"
								name="submit" type="submit" value="Search">
							</span>
						</div>
					</form>
				</div>
			</nav>
		</div>
	</header>
	<!-- Header End -->
	<!-- Hero Start -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-12 offset-md-1 col-md-11">
					<!--<div class="swiper-container hero-slider">-->
					<!-- <div class="swiper-wrapper">-->
					<div class="swiper-slide slide-content d-flex align-items-center">
						<div class="single-slide">
							<h1 data-aos="fade-right" data-aos-delay="200">
								Prenota il tuo viaggio <br>
							</h1>
							<p data-aos="fade-right" data-aos-delay="600">Qui puoi
								scegliere le tue mete e prenotarle in pochi minuti Prenotazione
								semplice e veloce con risposta instantanea alle vostre richieste
							</p>
							<a href="#servizi" data-aos="fade-right" data-aos-delay="900"
								href="#" class="btn btn-primary"> Inizia</a>

						</div>
					</div>

				</div>
			</div>

		</div>
		<div class="texture"></div>
		<div class="diag-bg"></div>
	</section>


	<!-- Call To Action End -->
	<!-- Services Start -->
	<section class="services" id="servizi">
		<div class="container">
			<div class="title text-center">
				<h6 class="title-primary">Agenzia FAMA</h6>
				<h1 class="title-blue">Scegli la tua meta</h1>
			</div>
			<form action="GestioneHotelServlet" method="get">
				<div class="container">
					<table style="width: 100%" height="500%"
						class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="0" data-aos-duration="6000">

						<tr>
							<th>Province</th>

							<%
							p = db.getProvincia(regione);
							for (i = 0; i < p.size(); i++) {

								provincia = (String) p.get(i);
								imm = db.getImmagini(db.getIdProvincia(provincia));
							%>

							<h2>
								<input type="checkbox" value="<%=provincia%>" name="province"><%=provincia%></h2>


							<img src="Province/<%=imm%>" width="35%">
							<br>
							<br>

							<%
							}
							%>

						</tr>


					</table>
					<table style="width: 100%" style="height: 80%"
						class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="0" data-aos-duration="600">

					</table>

					<br>
					<button type="submit" data-aos="fade-right" data-aos-delay="900"
						class="btn btn-primary">Cerca</button>

				</div>

			</form>
		</div>
	</section>

	<!-- Call To Action 2 End -->
	<!-- Footer Start -->
	<footer>
		<!-- Widgets Start -->
		<section id="contact">
			<div class="footer-widgets">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-xl-3">
							<div class="single-widget contact-widget" data-aos="fade-up"
								data-aos-delay="0">
								<h6 class="widget-tiltle">&nbsp;</h6>
								<p>Potete trovare la lista dei nostri contatti, dove
									possiamo rispondere a qualsiasi vostra richiesta</p>

								<div class="media">
									<i class="fa fa-map-marker"></i>
									<div class="media-body ml-3">
										<h6>Indirizzo</h6>
										Via Alto Adige 37<br> Casarano, Lecce, 73042 Italia
									</div>
								</div>
								<div class="media">
									<i class="fa fa-envelope-o"></i>
									<div class="media-body ml-3">
										<h6>Hai una domanda? Invia una emal a</h6>
										<a href="mailto:support@steelthemes.com">info@fama.com</a>
									</div>
								</div>
								<div class="media">
									<i class="fa fa-phone"></i>
									<div class="media-body ml-3">
										<h6>
											Puoi chiamarci al <a href="tel:+610791803458">
												0833/524787</a>
										</h6>

									</div>
								</div>
							</div>
						</div>
		</section>
		<!-- Foot Note Start -->
		<div class="foot-note">
			<div class="container">
				<div
					class="footer-content text-center text-lg-left d-lg-flex justify-content-between align-items-center">
					<p class="mb-0" data-aos="fade-right" data-aos-offset="0">
						&copy; 2021 All Rights Reserved. Design by <a
							href="https://freehtml5.co/multipurpose" target="_blank"
							class="fh5-link"> Fama Development Agency</a>.
					</p>
					<p class="mb-0" data-aos="fade-left" data-aos-offset="0">
						<a href="#">Terms Of Use</a><a href="#">Privacy & Security
							Statement</a>
					</p>
				</div>
			</div>
		</div>
		<!-- Foot Note End -->
	</footer>
	<!-- Footer Endt -->
	<!--jQuery-->
	<script src="assets/js/jquery-3.3.1.js"></script>
	<!--Plugins-->
	<script src="assets/js/bootstrap.bundle.js"></script>
	<script src="assets/js/loaders.css.js"></script>
	<script src="assets/js/aos.js"></script>
	<script src="assets/js/swiper.min.js"></script>
	<script src="assets/js/lightgallery-all.min.js"></script>
	<!--Template Script-->
	<script src="assets/js/main.js"></script>
</body>

</html>