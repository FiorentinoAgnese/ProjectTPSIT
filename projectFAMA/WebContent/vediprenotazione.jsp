<%@ page language="java" import="java.util.*,projectFAMA.*"
	import="org.apache.tomcat.jni.Local"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%!ArrayList<Prenota> elenco;
	String username;
	int i;
	Prenota p;
	String locale;%>
<%
elenco = (ArrayList<Prenota>) session.getAttribute("ELENCO_VIAGGI");
username = (String)application.getAttribute("SESSION_UTENTE");
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
<script>
	function reload() {
		window.location.reload();
	}
</script>
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
					<!--<a href="home.html" class="login"><i class="fa fa-user" aria-hidden="true"></i>Home</a>-->
					<!--  <a href="login.jsp" class="login"><i class="fa fa-user" aria-hidden="true"></i>Login</a>-->
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
						<li class="nav-item"><a class="nav-link" href="home.jsp"><fmt:message key="indietro" bundle="${resourceBundle}" /></a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="#servizi">Servizi</a></li>
                        <li class="nav-item"><a class="nav-link" href="#chisiamo?">Chi Siamo?</a></li>
                        <li class="nav-item"><a class="nav-link" href="#mete">Mete</a></li>
                        <li class="nav-item"><a class="nav-link" href="#people">Personale</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">Prenotazione</a></li>-->
						<li class="nav-item"><a class="nav-link" href="#contact"><fmt:message key="contatti" bundle="${resourceBundle}" /></a></li>
						<div class="dropdown">
							<a class="dropbtn">Lingue</a>
							<div class="dropdown-content">
								<a href="vediprenotazione.jsp?locale=it_IT"><img src="images/italia.png"
									width="50"></a> <a href="vediprenotazione.jsp?locale=en_US"><img
									src="images/inglese.jpg" width="50"></a> <a
									href="vediprenotazione.jsp?locale=fr_FR"><img src="images/francia.png"
									width="50"></a> <a href="vediprenotazione.jsp?locale=es_US"><img
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
	<!-- Hero Start -->
	<!--<section class="hero">
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
							<!--<a href="login/index.html" data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">Travel
                                        Now</a>
						</div>
					</div>

				</div>
			</div>

		</div>
		<div class="texture"></div>
		<div class="diag-bg"></div>
	</section>-->
	<!-- Hero End -->
	<!-- Call To Action Start -->

	<!-- Call To Action End -->
	<!-- Services Start -->
	<section class="services" id="servizi">
		<div class="container">
			<div class="title text-center">
				<br><br>
				<br><br>
				<h6 class="title-primary">Agenzia FAMA</h6>
				<h1 class="title-blue"><fmt:message key="lista" bundle="${resourceBundle}" /></h1>
			
			<div class="container">
				<center><table border= 5px>

					<tr>
						<th></th>
						<th><fmt:message key="dataP" bundle="${resourceBundle}" /></th>
						<th><fmt:message key="cittaa" bundle="${resourceBundle}" /></th>
					</tr>

					<%
					for (i = 0; i < elenco.size(); i++) {
						p = (Prenota) elenco.get(i);
					%>

					<tr>
						<td></td>
						<td><%=p.getDataPrenotazione()%></td>
						<td><%=p.getViaggio()%></td>
					</tr>

					<%
					}
					%>
				</table></center>
			</div>
			</div>
		</div>
	</section>

	<!-- Recent Posts End -->
	<!-- Trust Start -->

	<!-- Trust End -->
	<!-- Pricing Start -->
	<section class="pricing-table" id="mete">
		<div class="container">
			<div class="title text-center">
				<h6 class="title-primary">I nostri posti</h6>
				<h1 class="title-blue">Le offerte da non perdersi</h1>
			</div>
			<div class="row no-gutters">
				<div class="col-md-4">
					<div class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="0" data-aos-duration="600">
						<h2>Firenze</h2>
						<p>
							<img src="images/firenze.jpg" width=350px><br> <br>
							Se sei un appassionato di arte e cultura, Firenze è la città
							perfetta per te
						</p>
						<a href="https://it.wikipedia.org/wiki/Firenze"
							class="btn btn-primary">Vedi pacchetto</a>
						<svg viewBox="0 0 170 193">
                            <path fill-rule="evenodd"
								fill="rgb(238, 21, 21)"
								d="M39.000,31.999 C39.000,31.999 -21.000,86.500 9.000,121.999 C39.000,157.500 91.000,128.500 104.000,160.999 C117.000,193.500 141.000,201.000 150.000,183.000 C159.000,165.000 172.000,99.000 167.000,87.000 C162.000,75.000 170.000,63.000 152.000,45.000 C134.000,27.000 128.000,15.999 116.000,11.000 C104.000,6.000 89.000,-0.001 89.000,-0.001 L39.000,31.999 Z" />
                        </svg>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="300" data-aos-duration="600">
						<h2>Roma</h2>
						<p>
							<img src="images/roma.jpg" width=350px><br> <br>
							Quale miglior città se non Roma per scoprire la storia della
							nostra Italia
						</p>
						<a href="https://it.wikipedia.org/wiki/Roma"
							class="btn btn-primary">Vedi Pacchetto</a>
						<svg viewBox="0 0 170 193">
                            <path fill-rule="evenodd"
								fill="rgb(238, 21, 21)"
								d="M39.000,31.999 C39.000,31.999 -21.000,86.500 9.000,121.999 C39.000,157.500 91.000,128.500 104.000,160.999 C117.000,193.500 141.000,201.000 150.000,183.000 C159.000,165.000 172.000,99.000 167.000,87.000 C162.000,75.000 170.000,63.000 152.000,45.000 C134.000,27.000 128.000,15.999 116.000,11.000 C104.000,6.000 89.000,-0.001 89.000,-0.001 L39.000,31.999 Z" />
                        </svg>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-pricing text-center" data-aos="fade-up"
						data-aos-delay="600" data-aos-duration="600">
						<h2>Venezia</h2>
						<p>
							<img src="images/venecia.jpg" width=350px> <br> <br>
							Spostarsi con la gondola è il modo migliore per rilassarsi e
							godersi il panorama
						</p>
						<a href="https://it.wikipedia.org/wiki/Venezia"
							class="btn btn-primary">Vedi Pacchetto</a>
						<svg viewBox="0 0 170 193">
                            <path fill-rule="evenodd"
								fill="rgb(238, 21, 21)"
								d="M39.000,31.999 C39.000,31.999 -21.000,86.500 9.000,121.999 C39.000,157.500 91.000,128.500 104.000,160.999 C117.000,193.500 141.000,201.000 150.000,183.000 C159.000,165.000 172.000,99.000 167.000,87.000 C162.000,75.000 170.000,63.000 152.000,45.000 C134.000,27.000 128.000,15.999 116.000,11.000 C104.000,6.000 89.000,-0.001 89.000,-0.001 L39.000,31.999 Z" />
                        </svg>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="trust" id="chisiamo?">
		<div class="container">
			<div class="row">
				<div class="offset-xl-1 col-xl-6" data-aos="fade-right"
					data-aos-delay="200" data-aos-duration="800">
					<div class="title">
						<h1>Lascia un commento</h1>
						<input type="text" name="name" id="name" placeholder="Nome" /> <input
							type="text" name="message" id="message" placeholder="Messaggio" /><br>
						<input type="submit" class="primary" value="Invia Messaggio" /> <input
							type="reset" value="Resetta commento" />

					</div>
				</div>
				<div class="col-xl-5 gallery">
					<div class="row no-gutters h-100" id="lightgallery">
						<a href="https://lorempixel.com/600/400/"
							class="w-50 h-100 gal-img" data-aos="fade-up"
							data-aos-delay="200" data-aos-duration="400"> <img
							class="img-fluid" src="images/agenzia.jpg" alt="Gallery Image">
							<i class="fa fa-caret-right"></i>
						</a> <a href="https://lorempixel.com/600/400/"
							class="w-50 h-50 gal-img" data-aos="fade-up" data-aos-delay="400"
							data-aos-duration="600"> <img class="img-fluid"
							src="images/agenzia2.jpg" alt="Gallery Image"> <i
							class="fa fa-caret-right"></i>
						</a> <a href="https://lorempixel.com/600/400/"
							class="w-50 h-50 gal-img gal-img3" data-aos="fade-up"
							data-aos-delay="0" data-aos-duration="600"> <img
							class="img-fluid" src="images/agenzia3.jpg" alt="Gallery Image">
							<i class="fa fa-caret-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Pricing End -->
	<!-- Testimonial and Clients Start -->
	<div class="title text-center">
		<h6 class="title-primary">feedback</h6>
		<h1 class="title-blue">Ciò che pensano di noi</h1>
	</div>
	<section class="testimonial-and-clients" id="people">
		<div class="container">
			<div class="testimonials">

				<div class="swiper-container test-slider">
					<div class="swiper-wrapper">
						<div class="swiper-slide text-center">
							<div class="row">
								<div class="offset-lg-1 col-lg-10">
									<div class="test-img" data-aos="fade-up" data-aos-delay="0"
										data-aos-offset="0">
										<img src="images/utente.png" alt="Testimonial 1">
									</div>
									<h5 data-aos="fade-up" data-aos-delay="200"
										data-aos-duration="600" data-aos-offset="0">Fiorentino
										Agnese</h5>
									<span data-aos="fade-up" data-aos-delay="400"
										data-aos-duration="600" data-aos-offset="0">Addetta al
										marketing/ Socia</span>
									<p data-aos="fade-up" data-aos-delay="600"
										data-aos-duration="600" data-aos-offset="0">Lei ha la
										tecnica giusta per vendere qualsiasi cosa, riesce a promuovere
										ogni località d'Italia dando vita alle loro caratteristiche
										riuscendo ad esaltarle</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide text-center">
							<div class="row">
								<div class="offset-lg-1 col-lg-10">
									<div class="test-img" data-aos="fade-up" data-aos-delay="0"
										data-aos-offset="0">
										<img src="images/utente.png" alt="Testimonial 1">
									</div>
									<h5 data-aos="fade-up" data-aos-delay="200"
										data-aos-duration="600" data-aos-offset="0">Corsano
										Matteo</h5>
									<span data-aos="fade-up" data-aos-delay="400"
										data-aos-duration="600" data-aos-offset="0">
										Sviluppatore sito web/ Socio</span>
									<p data-aos="fade-up" data-aos-delay="600"
										data-aos-duration="600" data-aos-offset="0">Il mago del
										computer, si occupa della gestione del sito web. Lui l'ha
										creato, lui lo gestisce ed è lui che lo aggiorna, tutto questo
										in grandissima velocità ma soprattutto professionalità</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide text-center">
							<div class="row">
								<div class="offset-lg-1 col-lg-10">
									<div class="test-img" data-aos="fade-up" data-aos-delay="0"
										data-aos-offset="0">
										<img src="images/utente.png" alt="Testimonial 1">
									</div>
									<h5 data-aos="fade-up" data-aos-delay="200"
										data-aos-duration="600" data-aos-offset="0">De
										Mastrangelo Antonio</h5>
									<span data-aos="fade-up" data-aos-delay="400"
										data-aos-duration="600" data-aos-offset="0">Consulente
										finanziario/ Socio</span>
									<p data-aos="fade-up" data-aos-delay="600"
										data-aos-duration="600" data-aos-offset="0">Gestissce le
										finanze dell'azienda, le sue entrate e le uscite ma ha anche
										voce in capitolo sui prezzi dei viaggi, infatti trova i modi
										migliori per far risparmiare al cliente senza che l'azienda ci
										rimetta</p>
								</div>
							</div>
						</div>
						<div class="swiper-slide text-center">
							<div class="row">
								<div class="offset-lg-1 col-lg-10">
									<div class="test-img" data-aos="fade-up" data-aos-delay="0"
										data-aos-offset="0">
										<img src="images/utente.png alt="Testimonial 1">
									</div>
									<h5 data-aos="fade-up" data-aos-delay="200"
										data-aos-duration="600" data-aos-offset="0">Minerba
										Francesco</h5>
									<span data-aos="fade-up" data-aos-delay="400"
										data-aos-duration="600" data-aos-offset="0">Consulente
										viaggi/ Socio</span>
									<p data-aos="fade-up" data-aos-delay="600"
										data-aos-duration="600" data-aos-offset="0">Sa consigliare
										il posto giusto per la giusta occasione, se non sapete come
										passare le vacanze o dove festeggiare la luna di miele,
										chiedete a lui e vi consiglierà il miglior posto in base alle
										vostre esigenze</p>
								</div>
							</div>
						</div>
					</div>
					<div class="test-pagination"></div>
				</div>
			</div>
	</section>
	<!-- Testimonial and Clients End -->
	<!-- Call To Action 2 Start -->
	<section class="cta cta2" data-aos="fade-up" data-aos-delay="0">
		<div class="container">
			<div
				class="cta-content d-xl-flex align-items-center justify-content-around text-center text-xl-left">
				<div class="content" data-aos="fade-right" data-aos-delay="200">
					<h2>ENTRA NELLA NOSTRA NEWSLETTER</h2>
					<p>Iscriviti per rimanere aggiornato su tutte le novità della
						nostra agenzia.</p>
				</div>
				<div class="subscribe-btn" data-aos="fade-left" data-aos-delay="400"
					data-aos-offset="0">
					<a href="#" class="btn btn-primary">Join Newsletter</a>
				</div>
			</div>
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
		-->
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