<%@ page language="java"  import="projectFAMA.Utente" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
  String user;
%>
<%
	user = (String) session.getAttribute("SESSION_UTENTE");
%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>FAMA TRAVEL AGENCY</title>
    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i%7CRajdhani:400,600,700"
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
        <div class="loader-inner line-scale d-flex align-items-center justify-content-center"></div>
    </div>
    <header class="position-absolute w-100">
        <div class="container">
            <div  class="top-header d-none d-sm-flex justify-content-between align-items-center">
                 <div class="contact">
                    <!-- <a href="mailto:FAMA@gmail.com"><i class="fa fa-envelope"
                            aria-hidden="true"></i></a>--><img src=>
                </div>
                <nav class="d-flex aic">
                    <a href="LogOutServlet" class="login"><i class="fa fa-user" aria-hidden="true"></i>Log Out</a>
                    <ul class="nav social d-none d-md-flex">
                        <li><a href="https://www.facebook.com/francesco.minerba.94" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://twitter.com/frances05288570" target="_blank"><i class="fa fa-twitter"></i></a></li>
                    </ul>
                </nav>
            </div>
            <nav class="navbar navbar-expand-md navbar-light">
               <!-- <a class="navbar-brand" href="index.html"><img src="" alt="Multipurpose"></a>-->
                 <div class="group d-flex align-items-center">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation"><span
                            class="navbar-toggler-icon"></span></button>
                    <a class="login-icon d-sm-none" href="login/index.html"><i class="fa fa-user"></i></a>
                    <a class="login-icon d-sm-none" href="login/index.htm"><i class="fa fa-user"></i></a>
                    <a class="cart" href="#"><i class="fa fa-shopping-cart"></i></a>
                </div>
                <a class="search-icon d-none d-md-block" href="#"><i class="fa fa-search"></i></a>
                 <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="#">Home </a></li>
                        <!-- <li class="nav-item"><a class="nav-link" href="#servizi">Servizi</a></li>-->
                        <li class="nav-item"><a class="nav-link" href="#offerte">Offerte</a></li>
                        <li class="nav-item"><a class="nav-link" href="#mete">Mete</a></li>
                        <li class="nav-item"><a class="nav-link" href="prenotazione.html">Prenotazione</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contatti</a></li>
                    </ul>
                    <form class="bg-white search-form" method="get" id="searchform">
                        <div class="input-group">
                            <input class="field form-control" id="s" name="s" type="text" placeholder="Search">
                            <span class="input-group-btn">
                                <input class="submit btn btn-primary" id="searchsubmit" name="submit" type="submit"
                                    value="Search">
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
                                    <h1 data-aos="fade-right" data-aos-delay="200">Benvenuto/a <%=user%>
                                    <br>
                                    </h1>
                                    <p data-aos="fade-right" data-aos-delay="600">Qui puoi scegliere le tue mete e prenotarle 
                                    in pochi minuti
                                      Prenotazione semplice e veloce con risposta instantanea alle vostre richieste
                                    </p>
                                    <a href="login/index.html" data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">See
                                        More</a>
                                    <a href="login/index.html" data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">Travel
                                        Now</a>
                                </div>
                            </div>
                            <!--  <div class="swiper-slide slide-content d-flex align-items-center">
                                <div class="single-slide">
                                    <h1 data-aos="fade-right" data-aos-delay="200">Viaggia<br> Con noi
                                    </h1>
                                    <p data-aos="fade-right" data-aos-delay="600">Nel nostro roster abbiamo le migliori
                                        location.
                                        <br> 
                                        Cosa aspetti?
                                    </p>
                                    <a href="login/index.html" data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">See
                                        More</a>
                                    <a href="login/index.html" data-aos="fade-right" data-aos-delay="900" href="#" class="btn btn-primary">Travel
                                        Now</a>
                                </div>
                            </div>-->
                        <!-- </div> -->

                     <!-- </div> -->
                </div>
            </div>
            <!-- Add Control 
            <span class="arr-left"><i class="fa fa-angle-left"></i></span>
            <span class="arr-right"><i class="fa fa-angle-right"></i></span>-->
        </div>
        <div class="texture"></div>
        <div class="diag-bg"></div>
    </section>
    <!-- Hero End -->
    <!-- Call To Action Start -->
    <section class="cta" data-aos="fade-up" data-aos-delay="0">
        <div class="container">
            <div class="cta-content d-xl-flex align-items-center justify-content-around text-center text-xl-left">
                <div class="content" data-aos="fade-right" data-aos-delay="200">
                    <h2>ENTRA NELLA NOSTRA NEWSLETTER</h2>
                    <p>Iscriviti per rimanere aggiornato su tutte le novità della nostra agenzia.</p>
                </div>
                <div class="subscribe-btn" data-aos="fade-left" data-aos-delay="400" data-aos-offset="0">
                    <a href="#" class="btn btn-primary">Join Newsletter</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Call To Action End -->
    <!-- Services Start -->
    <!--  <section class="services" id="servizi">
        <div class="container">
            <div class="title text-center">
                <h6 class="title-primary">Il nostro team</h6>
                <h1 class="title-blue">Perchè scegliere noi</h1>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-4">
                        <div class="media" data-aos="fade-up" data-aos-delay="200" data-aos-duration="400">
                            <img class="mr-4" src="assets/images/service1.png" alt="Web Development">
                            <div class="media-body">
                                <h5>Ricerca Intuitiva</h5>
                                Il nostro sito è sviluppato per dar modo al cliente di trovare subito
                                ciò di cui ha bisogno.
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="media" data-aos="fade-up" data-aos-delay="400" data-aos-duration="600">
                            <img class="mr-4" src="assets/images/service2.png" alt="Web Development">
                            <div class="media-body">
                                <h5>Con noi siete al sicuro</h5>
                                I vostri dati personali verranno trattati attraverso l' Informativa sulla privacy (art. 13 GDPR).
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="media" data-aos="fade-up" data-aos-delay="600" data-aos-duration="800">
                            <img class="mr-4" src="assets/images/service3.png" alt="Web Development">
                            <div class="media-body">
                                <h5>Nuove idee nuove destinazioni</h5>
                                Cerchiamo giorno per giorno località trend per dare ai nostri clienti
                                più possibilità di scelta.
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="media" data-aos="fade-up" data-aos-delay="200" data-aos-duration="400">
                            <img class="mr-4" src="assets/images/service4.png" alt="Web Development">
                            <div class="media-body">
                                <h5>Viaggiare senza limiti</h5>
                                Per la nostra agenzia non ci sono località irraggiungibili.
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="media" data-aos="fade-up" data-aos-delay="400" data-aos-duration="600">
                            <img class="mr-4" src="assets/images/service1.png" alt="Web Development">
                            <div class="media-body">
                                <h5>Assistenza Veloce </h5>
                                Grazie alla professionalità del nostro team, garantiamo assistenza 24/7.
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                        <div class="media" data-aos="fade-up" data-aos-delay="600" data-aos-duration="800">
                            <img class="mr-4" src="assets/images/service5.png" alt="Web Development">
                            <div class="media-body">
                                <h5>Monitoraggio dei feedback</h5>
                                Il nostro team monitora l'esperienze dei clienti,
                                per fornire un servizio sempre più accattivante.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
     <section class="recent-posts" id="offerte">
        <div class="container">
         <div class="title text-center">
               <h6 class="title-primary">Il nostro team</h6>
                <h1 class="title-blue">Le migliori offerte</h1>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-right"
                        data-aos-duration="800">
                        <div class="post-content text-sm-right">
                             <!--<time datetime="2019-04-06T13:53">15 Oct, 2019</time>   -->
                            <h3><a href="#">I migliori musei italiani</a></h3>
                            <p>Torino, Firenze, Roma</p>
                           <!--  <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>-->
                        </div>
                        <div class="post-thumb">
                            <img class="img-fluid" src="images/musei.jpg" alt="Post 1">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-left" data-aos-duration="800">
                        <div class="post-thumb">
                            <img class="img-fluid" src="images/parchiNazionali.jpg" alt="Post 1">
                        </div>
                        <div class="post-content">
                            <!--<time datetime="2019-04-06T13:53">15 Oct, 2019</time>   -->
                            <h3><a href="#">Tutti i parchi nazionali a disposizione</a></h3>
                            <p>Aosta, Trento, L'Aquila</p>
                            <!--  <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>-->
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-right" data-aos-delay="200"
                        data-aos-duration="800">
                        <div class="post-content text-sm-right">
                             <!--<time datetime="2019-04-06T13:53">15 Oct, 2019</time>   -->
                            <h3><a href="#">Le spiagge più belle solo da noi</a></h3>
                            <p>Lecce, Genova, Palermo</p>
                            <!--  <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>-->
                        </div>
                        <div class="post-thumb">
                            <img class="img-fluid" src="images/spiagge.jpg" alt="Post 1">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="single-rpost d-sm-flex align-items-center" data-aos="fade-left" data-aos-delay="200"
                        data-aos-duration="800">
                        <div class="post-thumb">
                            <img class="img-fluid" src="images/chiese.jpg" alt="Post 1">
                        </div>
                        <div class="post-content">
                             <!--<time datetime="2019-04-06T13:53">15 Oct, 2019</time>   -->
                            <h3><a href="#">Le grandi chiese che hanno fatto la storia</a></h3>
                            <p>Perugia, Firenze, Roma</p>
                         <!--  <a class="post-btn" href="#"><i class="fa fa-arrow-right"></i></a>-->
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <a href="#" class="btn btn-primary">Prenota</a>
            </div>
        </div>
    </section>
    <!-- Recent Posts End -->
    <!-- Trust Start -->
    <!--  <section class="trust" id="chisiamo?">
        <div class="container">
            <div class="row">
                <div class="offset-xl-1 col-xl-6" data-aos="fade-right" data-aos-delay="200" data-aos-duration="800">
                    <div class="title">
                        <h6 class="title-primary">chi siamo?</h6>
                        <h1>La miglior agenzia viaggi esistente</h1>
                    </div>
                    <p>Spendi i tuoi soldi da noi, non te ne pentirai, ti faremo andare nei migliori posti d'italia  accontentando
                    ogni tua esigenza</p>
                    <h5>Agenzia Fama</h5>
                    <ul class="list-unstyled">
                        <li>Fedeltà</li>
                        <li>Sicurezza</li>
                        <li>Divertimento</li>
                        <li>Gratis</li>
                    </ul>
                </div>
                <div class="col-xl-5 gallery">
                    <div class="row no-gutters h-100" id="lightgallery">
                        <a href="https://lorempixel.com/600/400/" class="w-50 h-100 gal-img" data-aos="fade-up"
                            data-aos-delay="200" data-aos-duration="400">
                            <img class="img-fluid" src="assets/images/gallery1.jpg" alt="Gallery Image">
                            <i class="fa fa-caret-right"></i>
                        </a>
                        <a href="https://lorempixel.com/600/400/" class="w-50 h-50 gal-img" data-aos="fade-up"
                            data-aos-delay="400" data-aos-duration="600">
                            <img class="img-fluid" src="assets/images/gallery2.jpg" alt="Gallery Image">
                            <i class="fa fa-caret-right"></i>
                        </a>
                         <a href="https://lorempixel.com/600/400/" class="w-50 h-50 gal-img gal-img3" data-aos="fade-up"
                            data-aos-delay="0" data-aos-duration="600">
                            <img class="img-fluid" src="assets/images/gallery3.jpg" alt="Gallery Image">
                            <i class="fa fa-caret-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- Trust End -->
    <!-- Pricing Start -->
    <section class="pricing-table" id="mete">
        <div class="container">
            <div class="title text-center">
                <h6 class="title-primary">I nostri posti</h6>
                <h1 class="title-blue">Le mete più gettonate</h1>
            </div>
            <div class="row no-gutters">
                <div class="col-md-4">
                    <div class="single-pricing text-center" data-aos="fade-up" data-aos-delay="0"
                        data-aos-duration="600">
                        <h2>Firenze</h2>
                        <p><img src="images/firenze.jpg" width=350px></p>
                        <a href="#" class="btn btn-primary">Prenota</a>
                        <svg viewBox="0 0 170 193">
                            <path fill-rule="evenodd" fill="rgb(238, 21, 21)"
                                d="M39.000,31.999 C39.000,31.999 -21.000,86.500 9.000,121.999 C39.000,157.500 91.000,128.500 104.000,160.999 C117.000,193.500 141.000,201.000 150.000,183.000 C159.000,165.000 172.000,99.000 167.000,87.000 C162.000,75.000 170.000,63.000 152.000,45.000 C134.000,27.000 128.000,15.999 116.000,11.000 C104.000,6.000 89.000,-0.001 89.000,-0.001 L39.000,31.999 Z" />
                        </svg>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-pricing text-center" data-aos="fade-up" data-aos-delay="300"
                        data-aos-duration="600">
                        <h2>Roma</h2>
                        <p><img src="images/roma.jpg" width=350px></p>
                        <a href="#" class="btn btn-primary">Prenota</a>
                        <svg viewBox="0 0 170 193">
                            <path fill-rule="evenodd" fill="rgb(238, 21, 21)"
                                d="M39.000,31.999 C39.000,31.999 -21.000,86.500 9.000,121.999 C39.000,157.500 91.000,128.500 104.000,160.999 C117.000,193.500 141.000,201.000 150.000,183.000 C159.000,165.000 172.000,99.000 167.000,87.000 C162.000,75.000 170.000,63.000 152.000,45.000 C134.000,27.000 128.000,15.999 116.000,11.000 C104.000,6.000 89.000,-0.001 89.000,-0.001 L39.000,31.999 Z" />
                        </svg>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-pricing text-center" data-aos="fade-up" data-aos-delay="600"
                        data-aos-duration="600">
                        <h2>Venezia</h2>
                        <p><img src="images/venecia.jpg" width=350px></p>
                        <a href="#" class="btn btn-primary">Prenota</a>
                        <svg viewBox="0 0 170 193">
                            <path fill-rule="evenodd" fill="rgb(238, 21, 21)"
                                d="M39.000,31.999 C39.000,31.999 -21.000,86.500 9.000,121.999 C39.000,157.500 91.000,128.500 104.000,160.999 C117.000,193.500 141.000,201.000 150.000,183.000 C159.000,165.000 172.000,99.000 167.000,87.000 C162.000,75.000 170.000,63.000 152.000,45.000 C134.000,27.000 128.000,15.999 116.000,11.000 C104.000,6.000 89.000,-0.001 89.000,-0.001 L39.000,31.999 Z" />
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Pricing End -->
    <!-- Testimonial and Clients Start -->
    <!--  <section class="testimonial-and-clients">
        <div class="container">
            <div class="testimonials">
                <div class="swiper-container test-slider">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide text-center">
                            <div class="row">
                                <div class="offset-lg-1 col-lg-10">
                                    <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                            src="images/agnese.jpg" alt="Testimonial 1"></div>
                                    <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                        data-aos-offset="0">Fiorentino Agnese</h5>
                                    <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                        data-aos-offset="0">Addetta al marketing/
                                        Socia</span>
                                    <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                        data-aos-offset="0">Lei ha la tecnica giusta per vendere
                                        qualsiasi cosa, riesce a promuovere ogni località d'Italia dando
                                        vita alle loro caratteristiche riuscendo ad esaltarle</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide text-center">
                            <div class="row">
                                <div class="offset-lg-1 col-lg-10">
                                    <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                            src="images/matteo.jpg" alt="Testimonial 1"></div>
                                    <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                        data-aos-offset="0">Corsano Matteo</h5>
                                    <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                        data-aos-offset="0"> Sviluppatore sito web/
                                        Socio</span>
                                    <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                        data-aos-offset="0">Il mago del computer, si occupa della gestione del sito
                                        web. Lui l'ha creato, lui lo gestisce ed è lui che lo aggiorna, tutto questo
                                        in grandissima velocità ma soprattutto professionalità</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide text-center">
                            <div class="row">
                                <div class="offset-lg-1 col-lg-10">
                                    <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                            src="images/dema.jpg" alt="Testimonial 1"></div>
                                    <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                        data-aos-offset="0">De Mastrangelo Antonio</h5>
                                    <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                        data-aos-offset="0">Consulente finanziario/
                                        Socio</span>
                                    <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                        data-aos-offset="0">Gestissce le finanze dell'azienda, le sue entrate e le uscite
                                       	ma ha anche voce in capitolo sui prezzi dei viaggi, infatti trova i modi migliori per
                                       	far risparmiare al cliente senza che l'azienda ci rimetta</p>
                                </div>
                            </div>
                        </div>
                          <div class="swiper-slide text-center">
                            <div class="row">
                                <div class="offset-lg-1 col-lg-10">
                                    <div class="test-img" data-aos="fade-up" data-aos-delay="0" data-aos-offset="0"><img
                                            src="images/minerba.jpg alt="Testimonial 1"></div>
                                    <h5 data-aos="fade-up" data-aos-delay="200" data-aos-duration="600"
                                        data-aos-offset="0">Minerba Francesco</h5>
                                    <span data-aos="fade-up" data-aos-delay="400" data-aos-duration="600"
                                        data-aos-offset="0">Consulente viaggi/
                                        Socio</span>
                                    <p data-aos="fade-up" data-aos-delay="600" data-aos-duration="600"
                                        data-aos-offset="0">Sa consigliare il posto giusto per la giusta occasione,
                                        se non sapete come passare le vacanze o dove festeggiare la luna di miele,
                                        chiedete a lui e vi consiglierà il miglior posto in base alle vostre esigenze </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="test-pagination"></div>
                </div>
            </div>
           <!--   <div class="clients" data-aos="fade-up" data-aos-delay="200" data-aos-duration="600">
                <div class="swiper-container clients-slider">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="assets/images/client1.png" alt="Client 1">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/images/client2.png" alt="Client 2">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/images/client3.png" alt="Client 3">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/images/client4.png" alt="Client 4">
                        </div>
                        <div class="swiper-slide">
                            <img src="assets/images/client5.png" alt="Client 5">
                        </div>
                    </div>
                    <div class="test-pagination"></div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- Testimonial and Clients End -->
    <!-- Call To Action 2 Start -->
    <section class="cta cta2" data-aos="fade-up" data-aos-delay="0">
        <div class="container">
            <div class="cta-content d-xl-flex align-items-center justify-content-around text-center text-xl-left">
                <div class="content" data-aos="fade-right" data-aos-delay="200">
                   <h2>ENTRA NELLA NOSTRA NEWSLETTER</h2>
                    <p>Iscriviti per rimanere aggiornato su tutte le novità della nostra agenzia.</p>
                </div>
                <div class="subscribe-btn" data-aos="fade-left" data-aos-delay="400" data-aos-offset="0">
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
                        <div class="single-widget contact-widget" data-aos="fade-up" data-aos-delay="0">
                            <h6 class="widget-tiltle">&nbsp;</h6>
                            <p>Potete trovare la lista dei nostri contatti, dove possiamo rispondere a qualsiasi vostra richiesta
                            </p>
                             
                            <div class="media">
                                <i class="fa fa-map-marker"></i>
                                <div class="media-body ml-3">
                                    <h6>Indirizzo</h6>
                                    Via Alto Adige 37<br>
                                    Casarano, Lecce, 73042 Italia
                                </div>
                             </div>
                             <div class="media">
                                <i class="fa fa-envelope-o"></i>
                                <div class="media-body ml-3">
                                    <h6>Hai una domanda? Invia una emal a </h6>
                                    <a href="mailto:support@steelthemes.com">info@fama.com</a>
                                </div>
                             </div>
                            <div class="media">
                                <i class="fa fa-phone"></i>
                                <div class="media-body ml-3">
                                    <h6>Puoi chiamarci al <a href="tel:+610791803458"> 0833/524787</a></h6>
                                    
                                </div>
                             </div>
                        </div>
                   </div>
                    </section>
                   <!--   <div class="col-md-6 col-xl-3">
                        <div class="single-widget twitter-widget" data-aos="fade-up" data-aos-delay="200">
                            <h6 class="widget-tiltle">Fresh Tweets</h6>
                            <div class="media">
                                <i class="fa fa-twitter"></i>
                                <div class="media-body ml-3">
                                    <h6><a href="#">@Themes,</a> Html Version Out Now</h6>
                                    <span>10 Mins Ago</span>
                                </div>
                            </div>
                            <div class="media">
                                <i class="fa fa-twitter"></i>
                                <div class="media-body ml-3">
                                    <h6><a href="#">@Envato,</a> the best selling item of the day!</h6>
                                    <span>20 Mins Ago</span>
                                </div>
                            </div>
                            <div class="media">
                                <i class="fa fa-twitter"></i>
                                <div class="media-body ml-3">
                                    <h6><a href="#">@Collis,</a> We Planned to Update the Enavto Author Payment Method
                                        Soon!</h6>
                                    <span>10 Mins Ago</span>
                                </div>
                            </div>
                            <div class="media">
                                <i class="fa fa-twitter"></i>
                                <div class="media-body ml-3">
                                    <h6><a href="#">@SteelThemes,</a> Html Version Out Now</h6>
                                    <span>15 Mins Ago</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="single-widget recent-post-widget" data-aos="fade-up" data-aos-delay="400">
                            <h6 class="widget-tiltle">Latest Updates</h6>
                            <div class="media">
                                <a class="rcnt-img" href="#"><img src="assets/images/rcnt-post1.png"
                                        alt="Recent Post"></a>
                                <div class="media-body ml-3">
                                    <h6><a href="#">An engaging</a></h6>
                                    <p><i class="fa fa-user"></i>Mano <i class="fa fa-eye"></i> 202 Views</p>
                                </div>
                            </div>
                            <div class="media">
                                <a class="rcnt-img" href="#"><img src="assets/images/rcnt-post2.png"
                                        alt="Recent Post"></a>
                                <div class="media-body ml-3">
                                    <h6><a href="#">Statistics and analysis. The key to succes.</a></h6>
                                    <p><i class="fa fa-user"></i>Rosias <i class="fa fa-eye"></i> 20 Views</p>
                                </div>
                            </div>
                            <div class="media">
                                <a class="rcnt-img" href="#"><img src="assets/images/rcnt-post3.png"
                                        alt="Recent Post"></a>
                                <div class="media-body ml-3">
                                    <h6><a href="#">Envato Meeting turns into a photoshooting.</a></h6>
                                    <p><i class="fa fa-user"></i>Kien <i class="fa fa-eye"></i> 74 Views</p>
                                </div>
                            </div>
                            <div class="media">
                                <a class="rcnt-img" href="#"><img src="assets/images/rcnt-post4.png"
                                        alt="Recent Post"></a>
                                <div class="media-body ml-3">
                                    <h6><a href="#">An engaging embedded the video posts</a></h6>
                                    <p><i class="fa fa-user"></i>Robert <i class="fa fa-eye"></i> 48 Views</p>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!-- <div class="col-md-6 col-xl-3">
                        <div class="single-widget tags-widget" data-aos="fade-up" data-aos-delay="800" text-align=right>
                            <h6 class="widget-tiltle">Popular Tags</h6>
                            <a href="#">Amazing</a>
                            <a href="#">Design</a>
                            <a href="#">Photoshop</a>
                            <a href="#">Art</a>
                            <a href="#">Wordpress</a>
                            <a href="#">jQuery</a>
                        </div>
                        <div class="single-widget subscribe-widget" data-aos="fade-up" data-aos-delay="800">
                            <h6 class="widget-tiltle">Subscribe us</h6>
                            <p>Sign up for our mailing list to get latest updates and offers</p>
                            <form class="" method="get">
                                <div class="input-group">
                                    <input class="field form-control" name="subscribe" type="email"
                                        placeholder="Email Address">
                                    <span class="input-group-btn">
                                        <button type="submit" name="submit-mail"><i class="fa fa-check"></i></button>
                                    </span>
                                </div>
                            </form>
                            <p>We respect your privacy</p>
                            <ul class="nav social-nav">
                                <li><a href="https://www.facebook.com/fh5co" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Widgets End -->
        <!-- Foot Note Start -->
        <div class="foot-note">
            <div class="container">
                <div
                    class="footer-content text-center text-lg-left d-lg-flex justify-content-between align-items-center">
                    <p class="mb-0" data-aos="fade-right" data-aos-offset="0">&copy; 2021 All Rights Reserved. Design by <a href="https://freehtml5.co/multipurpose" target="_blank" class="fh5-link"> Fama Development Agency</a>.</p>
                    <p class="mb-0" data-aos="fade-left" data-aos-offset="0"><a href="#">Terms Of Use</a><a
                            href="#">Privacy & Security
                            Statement</a></p>
                </div>
            </div>
        </div>-->
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