<%@ page language="java" import="java.util.*,projectFAMA.*" import="java.util.Locale"
	import="org.apache.tomcat.jni.Local"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%!ArrayList<Hotel> elenco;
	int i;

	Hotel h;
	String imm;
	DBManager db;
	String locale;%>

<%
db = new DBManager();
elenco = (ArrayList<Hotel>) session.getAttribute("HOTEL_SESSIONE");
locale = request.getParameter("locale");
application.setAttribute("LOCALE_KEY", locale);
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
<style>
.dropbtn {
	background-color: rgb(0, 0, 0);
	opacity: 0.5;
	color: white;
	padding: 12px;
	font-size: 12px;
	border: none;
	cursor: pointer;
}

/*.dropdown {
  position: relative;
  display: inline-block;
}*/
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #ee1515
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #000;
}
</style>
<body>
	<fmt:setLocale value="<%=locale%>" />
	<fmt:setBundle basename="it.meucci.bundle.messages"
		var="resourceBundle" />
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
						<li class="nav-item"><a class="nav-link" href="destinazione.jsp"><fmt:message key="indietro" bundle="${resourceBundle}" /></a></li>

						<li class="nav-item"><a class="nav-link" href="#contact"><fmt:message key="contatti" bundle="${resourceBundle}" /></a></li>
						<div class="dropdown">
							<a class="dropbtn">Lingue</a>
							<div class="dropdown-content">
								<a href="hotel.jsp?locale=it_IT"><img src="images/italia.png"
									width="50"></a> <a href="hotel.jsp?locale=en_US"><img
									src="images/inglese.jpg" width="50"></a> <a
									href="hotel.jsp?locale=fr_FR"><img src="images/francia.png"
									width="50"></a> <a href="hotel.jsp?locale=es_US"><img
									src="images/spagna.png" width="50"></a>
							</div>
						</div>
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
	<!-- Hero Start 
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-12 offset-md-1 col-md-11">
					<!--<div class="swiper-container hero-slider">
					<!-- <div class="swiper-wrapper">
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
	</section>-->


	<!-- Call To Action End -->
	<!-- Services Start -->
	<section class="services" id="servizi">
		<div class="container">
			<div class="title text-center">
			<br><br>
			<br><br>
				<h6 class="title-primary">Agenzia FAMA</h6>
				<h1 class="title-blue"><fmt:message key="sceltaH" bundle="${resourceBundle}" /></h1>
			</div>
			<form action="Prenota" method="post">
				<div class="container">
					<table style="width: 100%" height="500%"
						class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="0" data-aos-duration="6000">
						<%
						for (i = 0; i < elenco.size(); i++) {
							imm = db.getImmaginiHotel(elenco.get(i).getIdHotel());
							h = (Hotel) elenco.get(i);
						%>


						<tr>

							<td><h2>
									<input type="radio" value="<%=h.getNome()%>" name="nomeH"><%=h.getNome()%></h2></td>
						</tr>
						<tr>

							<td><h4><%=db.getCittaHotel(h.getIdHotel())%></h4></td>
						</tr>
						<tr>

							<td><h4><%=h.getIndirizzi()%></h4></td>
						</tr>
						<tr>

							<td><h4><%=h.getEmail()%></h4></td>
						</tr>
						<tr>

							<td><h4><%=h.getTelefono()%></h4></td>
						</tr>
						<tr>

							<td><h4>
									<%=h.getNumStelle()%>
									&nbsp Stelle
								</h4></td>
						</tr>
						<tr>

							<td><img src="Hotel/<%=imm%>" width="35%"> <br> <br>
								<br></td>
						</tr>

						<%
						}
						%>


					</table>
					<table style="width: 100%" style="height: 80%"
						class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="0" data-aos-duration="600">
					</table>

					<br>
					<button type="submit" data-aos="fade-right" data-aos-delay="900"
						class="btn btn-primary"><h3><fmt:message key="pre" bundle="${resourceBundle}" /></button>

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
								<p><fmt:message key="nomeContatti" bundle="${resourceBundle}" /></p>

								<div class="media">
									<i class="fa fa-map-marker"></i>
									<div class="media-body ml-3">
										<h6><fmt:message key="indirizzo" bundle="${resourceBundle}" /></h6>
										Via Alto Adige 37<br> Casarano, Lecce, 73042 Italia
									</div>
								</div>
								<div class="media">
									<i class="fa fa-envelope-o"></i>
									<div class="media-body ml-3">
										<h6><fmt:message key="email" bundle="${resourceBundle}" /></h6>
										<a href="mailto:support@steelthemes.com">agencyfama54@gmail.com</a>
									</div>
								</div>
								<div class="media">
									<i class="fa fa-phone"></i>
									<div class="media-body ml-3">
										<h6>
											<fmt:message key="numero" bundle="${resourceBundle}" /> <a href="tel:+610791803458">
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