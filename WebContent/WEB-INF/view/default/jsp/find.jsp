<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


  <!-- META DATA -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">
    <meta name="author" content="http://www.365bootstrap.com">

	<title>OpenHouse - Houses for Rent</title>
  
	<!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"  type="text/css">
	
	<!-- Owl Carousel Assets -->
    <link href="${pageContext.request.contextPath}/resources/owl-carousel/owl.carousel.css" rel="stylesheet">
    <!-- <link href="${pageContext.request.contextPath}/resources/owl-carousel/owl.theme.css" rel="stylesheet"> -->
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/scss/style2.css">

	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
    <![endif]-->
	
</head>

 <body>
<header>

	<!-- /////////////////////////////////////////Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand page-scroll">
					<a href="#page-top">OpenHouse</a>
				</h1>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="index.html">Home</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="about.html">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="gallery.html">Gallery</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="service.html">Service</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="contact.html">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	<!-- Navigation -->
	<div class="box-shadow">
		<!-- Carousel -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="${pageContext.request.contextPath}/resources/images/banner1.jpg" alt="First slide">
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<div class="col-md-12">
							<h1>WELCOME TO US!</h1>
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quo. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span><br><br>
							<a href="#" class="btn btn-primary">Learn More</a>
						</div>
					</div><!-- /header-text -->
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath}/resources/images/banner2.jpg" alt="Third slide"> 
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<div class="col-md-12">
							<h1>SPEND YOUR DREAM HOLIDAY!</h1>
							<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quo. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span><br><br>
							<a href="#" class="btn btn-primary">Learn More</a>
						</div>
					</div><!-- /header-text -->
				</div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /carousel -->
	</div>
</header>

<!-- ============================================================================================================== 
==================================================================================================================
======================================================================================================-->
<section id = "search">
	<div class="container">
<form method="POST" action="${pageContext.request.contextPath}/find" enctype="multipart/form-data">		
	<div class="col-lg-12">	
                <h2>AXTAR</h2>
                <hr>
	         </div>
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-6">
					<div class="search-left">
						<select class="selectpicker"  name="marka" id="marka" style="width: 100%;" >
					      <option value="">Bütün markalar</option>
<option value='ACGCars'><spring:message code='marka.ACGCars' text='default text' />
<option value='ATV'><spring:message code='marka.ATV' text='default text' />
<option value='Acura'><spring:message code='marka.Acura' text='default text' />
<option value='AlfaRomeo'><spring:message code='marka.AlfaRomeo' text='default text' />
<option value='Aprilia'><spring:message code='marka.Aprilia' text='default text' />
<option value='ArcticCat'><spring:message code='marka.ArcticCat' text='default text' />
<option value='Asia'><spring:message code='marka.Asia' text='default text' />
<option value='AstonMartin'><spring:message code='marka.AstonMartin' text='default text' />
<option value='Audi'><spring:message code='marka.Audi' text='default text' />
<option value='BMC'><spring:message code='marka.BMC' text='default text' />
<option value='BMW'><spring:message code='marka.BMW' text='default text' />
<option value='BMWAlpina'><spring:message code='marka.BMWAlpina' text='default text' />
<option value='BYD'><spring:message code='marka.BYD' text='default text' />
<option value='Baic'><spring:message code='marka.Baic' text='default text' />
<option value='Bentley'><spring:message code='marka.Bentley' text='default text' />
<option value='Brilliance'><spring:message code='marka.Brilliance' text='default text' />
<option value='Buick'><spring:message code='marka.Buick' text='default text' />
<option value='CF'><spring:message code='marka.CF' text='default text' />
<option value='CZ'><spring:message code='marka.CZ' text='default text' />
<option value='Cadillac'><spring:message code='marka.Cadillac' text='default text' />
<option value='Can-Am'><spring:message code='marka.Can-Am' text='default text' />
<option value='Changan'><spring:message code='marka.Changan' text='default text' />
<option value='Chery'><spring:message code='marka.Chery' text='default text' />
<option value='Chevrolet'><spring:message code='marka.Chevrolet' text='default text' />
<option value='Chrysler'><spring:message code='marka.Chrysler' text='default text' />
<option value='Citroen'><spring:message code='marka.Citroen' text='default text' />
<option value='DAF'><spring:message code='marka.DAF' text='default text' />
<option value='Dacia'><spring:message code='marka.Dacia' text='default text' />
<option value='Dadi'><spring:message code='marka.Dadi' text='default text' />
<option value='Daewoo'><spring:message code='marka.Daewoo' text='default text' />
<option value='Daihatsu'><spring:message code='marka.Daihatsu' text='default text' />
<option value='Dayun'><spring:message code='marka.Dayun' text='default text' />
<option value='Dnepr'><spring:message code='marka.Dnepr' text='default text' />
<option value='Dodge'><spring:message code='marka.Dodge' text='default text' />
<option value='DongFeng'><spring:message code='marka.DongFeng' text='default text' />
<option value='Ducati'><spring:message code='marka.Ducati' text='default text' />
<option value='FAW'><spring:message code='marka.FAW' text='default text' />
<option value='Fiat'><spring:message code='marka.Fiat' text='default text' />
<option value='Ford'><spring:message code='marka.Ford' text='default text' />
<option value='Foton'><spring:message code='marka.Foton' text='default text' />
<option value='GAC'><spring:message code='marka.GAC' text='default text' />
<option value='GEMCars'><spring:message code='marka.GEMCars' text='default text' />
<option value='GIBBS'><spring:message code='marka.GIBBS' text='default text' />
<option value='GMC'><spring:message code='marka.GMC' text='default text' />
<option value='Gabro'><spring:message code='marka.Gabro' text='default text' />
<option value='Gaz'><spring:message code='marka.Gaz' text='default text' />
<option value='Geely'><spring:message code='marka.Geely' text='default text' />
<option value='GreatWall'><spring:message code='marka.GreatWall' text='default text' />
<option value='HOWO'><spring:message code='marka.HOWO' text='default text' />
<option value='Haojue'><spring:message code='marka.Haojue' text='default text' />
<option value='Harley-Davidson'><spring:message code='marka.Harley-Davidson' text='default text' />
<option value='Haval'><spring:message code='marka.Haval' text='default text' />
<option value='Hisun'><spring:message code='marka.Hisun' text='default text' />
<option value='Honda'><spring:message code='marka.Honda' text='default text' />
<option value='Hummer'><spring:message code='marka.Hummer' text='default text' />
<option value='Hyundai'><spring:message code='marka.Hyundai' text='default text' />
<option value='IJ'><spring:message code='marka.IJ' text='default text' />
<option value='Infiniti'><spring:message code='marka.Infiniti' text='default text' />
<option value='IranKhodro'><spring:message code='marka.IranKhodro' text='default text' />
<option value='Isuzu'><spring:message code='marka.Isuzu' text='default text' />
<option value='ItalCar'><spring:message code='marka.ItalCar' text='default text' />
<option value='Iveco'><spring:message code='marka.Iveco' text='default text' />
<option value='JAC'><spring:message code='marka.JAC' text='default text' />
<option value='Jaguar'><spring:message code='marka.Jaguar' text='default text' />
<option value='Jeep'><spring:message code='marka.Jeep' text='default text' />
<option value='Jonway'><spring:message code='marka.Jonway' text='default text' />
<option value='KAvZ'><spring:message code='marka.KAvZ' text='default text' />
<option value='KamAz'><spring:message code='marka.KamAz' text='default text' />
<option value='Kawasaki'><spring:message code='marka.Kawasaki' text='default text' />
<option value='Kia'><spring:message code='marka.Kia' text='default text' />
<option value='Kinroad'><spring:message code='marka.Kinroad' text='default text' />
<option value='KrAZ'><spring:message code='marka.KrAZ' text='default text' />
<option value='LADA(VAZ)'><spring:message code='marka.LADA(VAZ)' text='default text' />
<option value='LandRover'><spring:message code='marka.LandRover' text='default text' />
<option value='Lexus'><spring:message code='marka.Lexus' text='default text' />
<option value='Lifan'><spring:message code='marka.Lifan' text='default text' />
<option value='Lincoln'><spring:message code='marka.Lincoln' text='default text' />
<option value='LuAz'><spring:message code='marka.LuAz' text='default text' />
<option value='MAN'><spring:message code='marka.MAN' text='default text' />
<option value='MAZ'><spring:message code='marka.MAZ' text='default text' />
<option value='MG'><spring:message code='marka.MG' text='default text' />
<option value='Marshell'><spring:message code='marka.Marshell' text='default text' />
<option value='Maserati'><spring:message code='marka.Maserati' text='default text' />
<option value='Mazda'><spring:message code='marka.Mazda' text='default text' />
<option value='Megelli'><spring:message code='marka.Megelli' text='default text' />
<option value='Mercedes'><spring:message code='marka.Mercedes' text='default text' />
<option value='Mercedes-Maybach'><spring:message code='marka.Mercedes-Maybach' text='default text' />
<option value='Mini'><spring:message code='marka.Mini' text='default text' />
<option value='Minsk'><spring:message code='marka.Minsk' text='default text' />
<option value='Mitsubishi'><spring:message code='marka.Mitsubishi' text='default text' />
<option value='Moskvich'><spring:message code='marka.Moskvich' text='default text' />
<option value='Muravey'><spring:message code='marka.Muravey' text='default text' />
<option value='Nissan'><spring:message code='marka.Nissan' text='default text' />
<option value='Oldsmobile'><spring:message code='marka.Oldsmobile' text='default text' />
<option value='Opel'><spring:message code='marka.Opel' text='default text' />
<option value='PAZ'><spring:message code='marka.PAZ' text='default text' />
<option value='Parvaz'><spring:message code='marka.Parvaz' text='default text' />
<option value='Peugeot'><spring:message code='marka.Peugeot' text='default text' />
<option value='Piaggio'><spring:message code='marka.Piaggio' text='default text' />
<option value='Polaris'><spring:message code='marka.Polaris' text='default text' />
<option value='Porsche'><spring:message code='marka.Porsche' text='default text' />
<option value='RAF'><spring:message code='marka.RAF' text='default text' />
<option value='Ravon'><spring:message code='marka.Ravon' text='default text' />
<option value='Renault'><spring:message code='marka.Renault' text='default text' />
<option value='Rolls-Royce'><spring:message code='marka.Rolls-Royce' text='default text' />
<option value='Rover'><spring:message code='marka.Rover' text='default text' />
<option value='SEAT'><spring:message code='marka.SEAT' text='default text' />
<option value='Saab'><spring:message code='marka.Saab' text='default text' />
<option value='Saipa'><spring:message code='marka.Saipa' text='default text' />
<option value='Saturn'><spring:message code='marka.Saturn' text='default text' />
<option value='Scania'><spring:message code='marka.Scania' text='default text' />
<option value='Shacman'><spring:message code='marka.Shacman' text='default text' />
<option value='Shineray'><spring:message code='marka.Shineray' text='default text' />
<option value='Skoda'><spring:message code='marka.Skoda' text='default text' />
<option value='Skyline'><spring:message code='marka.Skyline' text='default text' />
<option value='Smart'><spring:message code='marka.Smart' text='default text' />
<option value='SsangYong'><spring:message code='marka.SsangYong' text='default text' />
<option value='Subaru'><spring:message code='marka.Subaru' text='default text' />
<option value='Suzuki'><spring:message code='marka.Suzuki' text='default text' />
<option value='Tazzari'><spring:message code='marka.Tazzari' text='default text' />
<option value='Tesla'><spring:message code='marka.Tesla' text='default text' />
<option value='Tofas'><spring:message code='marka.Tofas' text='default text' />
<option value='Toyota'><spring:message code='marka.Toyota' text='default text' />
<option value='UAZ'><spring:message code='marka.UAZ' text='default text' />
<option value='Ural'><spring:message code='marka.Ural' text='default text' />
<option value='Vespa'><spring:message code='marka.Vespa' text='default text' />
<option value='Volkswagen'><spring:message code='marka.Volkswagen' text='default text' />
<option value='Volvo'><spring:message code='marka.Volvo' text='default text' />
<option value='Vosxod'><spring:message code='marka.Vosxod' text='default text' />
<option value='XCMG'><spring:message code='marka.XCMG' text='default text' />
<option value='XinKai'><spring:message code='marka.XinKai' text='default text' />
<option value='Yamaha'><spring:message code='marka.Yamaha' text='default text' />
<option value='ZAZ'><spring:message code='marka.ZAZ' text='default text' />
<option value='ZIL'><spring:message code='marka.ZIL' text='default text' />
<option value='ZXAuto'><spring:message code='marka.ZXAuto' text='default text' />
<option value='Zontes'><spring:message code='marka.Zontes' text='default text' />

					    </select>

					    <div class="multiselect">
						    <div class="selectBox" >
						      <select name="seher">
						        <option value="">Bütün Şəhərlər</option>
						      </select>
						      <div class="overSelect"></div>
						    </div> <!-- select box-->
						    <div class="checkboxes">
<label for='one'><input type='checkbox' value='Abşeron'/><span><spring:message code='seher.Abşeron' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Kürdəmir'/><span><spring:message code='seher.Kürdəmir' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ağdam'/><span><spring:message code='seher.Ağdam' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qəbələ'/><span><spring:message code='seher.Qəbələ' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ağdaş'/><span><spring:message code='seher.Ağdaş' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qax'/><span><spring:message code='seher.Qax' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ağcabədi'/><span><spring:message code='seher.Ağcabədi' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qazax'/><span><spring:message code='seher.Qazax' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ağstafa'/><span><spring:message code='seher.Ağstafa' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qobustan'/><span><spring:message code='seher.Qobustan' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ağsu'/><span><spring:message code='seher.Ağsu' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qubadlı'/><span><spring:message code='seher.Qubadlı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Astara'/><span><spring:message code='seher.Astara' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qusar'/><span><spring:message code='seher.Qusar' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Babək'/><span><spring:message code='seher.Babək' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Laçın'/><span><spring:message code='seher.Laçın' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Balakən'/><span><spring:message code='seher.Balakən' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Lerik'/><span><spring:message code='seher.Lerik' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Bərdə'/><span><spring:message code='seher.Bərdə' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Masallı'/><span><spring:message code='seher.Masallı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Beyləqan'/><span><spring:message code='seher.Beyləqan' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Neftçala'/><span><spring:message code='seher.Neftçala' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Biləsuvar'/><span><spring:message code='seher.Biləsuvar' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Oğuz'/><span><spring:message code='seher.Oğuz' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Cəbrayıl'/><span><spring:message code='seher.Cəbrayıl' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ordubad'/><span><spring:message code='seher.Ordubad' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Cəlilabad'/><span><spring:message code='seher.Cəlilabad' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Saatlı'/><span><spring:message code='seher.Saatlı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Culfa'/><span><spring:message code='seher.Culfa' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Sabirabad'/><span><spring:message code='seher.Sabirabad' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Daşkəsən'/><span><spring:message code='seher.Daşkəsən' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Sədərək'/><span><spring:message code='seher.Sədərək' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Füzuli'/><span><spring:message code='seher.Füzuli' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Salyan'/><span><spring:message code='seher.Salyan' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Gədəbəy'/><span><spring:message code='seher.Gədəbəy' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Samux'/><span><spring:message code='seher.Samux' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Goranboy'/><span><spring:message code='seher.Goranboy' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Şabran'/><span><spring:message code='seher.Şabran' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Göyçay'/><span><spring:message code='seher.Göyçay' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Şahbuz'/><span><spring:message code='seher.Şahbuz' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Göygöl'/><span><spring:message code='seher.Göygöl' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Şamaxı'/><span><spring:message code='seher.Şamaxı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Hacıqabul'/><span><spring:message code='seher.Hacıqabul' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Şəmkir'/><span><spring:message code='seher.Şəmkir' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Xaçmaz'/><span><spring:message code='seher.Xaçmaz' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Siyəzən'/><span><spring:message code='seher.Siyəzən' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Xızı'/><span><spring:message code='seher.Xızı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Tərtər'/><span><spring:message code='seher.Tərtər' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Xocalı'/><span><spring:message code='seher.Xocalı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Tovuz'/><span><spring:message code='seher.Tovuz' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Xocavənd'/><span><spring:message code='seher.Xocavənd' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Ucar'/><span><spring:message code='seher.Ucar' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='İmişli'/><span><spring:message code='seher.İmişli' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Yardımlı'/><span><spring:message code='seher.Yardımlı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='İsmayıllı'/><span><spring:message code='seher.İsmayıllı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Zəngilan'/><span><spring:message code='seher.Zəngilan' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Kəlbəcər'/><span><spring:message code='seher.Kəlbəcər' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Zaqatala'/><span><spring:message code='seher.Zaqatala' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Kəngərli'/><span><spring:message code='seher.Kəngərli' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Zərdab'/><span><spring:message code='seher.Zərdab' text='default text' /></span></label>


						    </div><!-- checkboxes -->
						</div> <!-- butun seherler multi select -->

						<div class="multiselect">
						    <div class="selectBox" >
						      <select name="yanacaq">
						        <option value="">Yanacaq növü</option>
						      </select>
						      <div class="overSelect"></div>
						    </div> <!-- select box-->
						    <div class="checkboxes">
<label for='one'><input type='checkbox' value='Benzin'/><span><spring:message code='yanacaq.Benzin' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Dizel'/><span><spring:message code='yanacaq.Dizel' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qaz'/><span><spring:message code='yanacaq.Qaz' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Elektro'/><span><spring:message code='yanacaq.Elektro' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Hibrid'/><span><spring:message code='yanacaq.Hibrid' text='default text' /></span></label>

						    </div><!-- checkboxes -->
						</div> <!-- Yanacaq nÃ¶vÃ¼ multi select -->

					</div>  <!-- search left -->
				</div> <!-- col-md-4 col-sm-6 col-xs-6 -->

				<div class="col-md-4 col-sm-6 col-xs-6">
					<div class="search-left">
						<div class="multiselect">
						    <div class="selectBox">
						      <select name="model"  id="model">
						        <option value="">Bütün modellər </option>
						      </select>
						      <div class="overSelect"></div>
							</div>  <!-- select box-->
							<div class="checkboxes">
							  <label for="one">
						        <input  value ="BMW"type="checkbox" /><span>First checkbox</span>
						       </label>
						      <label for="two">
						        <input  value ="Mercedes" type="checkbox" /><span>Second checkbox</span>
						       </label>
						      <label for="three">
						        <input type="checkbox" /><span>Third checkbox</span>
						      </label>
							</div>
						</div> <!-- BÃ¼tÃ¼n modellÉr multi select -->


						<div class="multiselect">
						    <div class="selectBox" >
						      <select name="suret_qutusu">
						        <option value="">Sürət qutusu</option>
						      </select>
						      <div class="overSelect"></div>
						    </div> <!-- select box-->
						    <div class="checkboxes">
						     <label for='one'><input type='checkbox' value="Mexaniki"/><span><spring:message code='suret_qutusu.Mexaniki' text='default text' /></span></label>
							 <label for='one'><input type='checkbox' value="Avtomat" /><span><spring:message code='suret_qutusu.Avtomat' text='default text' /></span></label>
							
						    </div><!-- checkboxes -->
						</div> <!-- Yanacaq nÃ¶vÃ¼ multi select -->
						

						<div class="multiselect">
						    <div class="selectBox" >
						      <select name="oturucu">
						        <option value="">Ötürücü tiplər</option>
						      </select>
						      <div class="overSelect"></div>
						    </div> <!-- select box-->
						    <div class="checkboxes">
						     <label for='one'><input type='checkbox' value="Tam"/><span><spring:message code='oturucu.Tam' text='default text' /></span></label>
						     <label for='one'><input type='checkbox' value="Arxa"/><span><spring:message code='oturucu.Arxa' text='default text' /></span></label>
						     <label for='one'><input type='checkbox' value="Ön" /><span><spring:message code='oturucu.On' text='default text' /></span></label>

						    </div><!-- checkboxes -->
						</div> <!-- ÃtÃ¼rÃ¼cÃ¼ tiplÉr multi select -->



					</div>  <!-- search left -->
				</div> <!-- col-md-4 col-sm-6 col-xs-6 -->


				<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="search-left">
						<div class="multiselect multiselect2">
						    <div class="selectBox" >
						      <select name="reng">
						        <option value="">Bütün rənglər</option>
						      </select>
						      <div class="overSelect"></div>
						    </div> <!-- select box-->
						    <div class="checkboxes">
<label for='one'><input type='checkbox' value='Ağ'/><span><spring:message code='reng.Ağ' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Bej'/><span><spring:message code='reng.Bej' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Boz'/><span><spring:message code='reng.Boz' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Bənövsəyi'/><span><spring:message code='reng.Benövsəyi' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Göy'/><span><spring:message code='reng.Göy' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Gümüşü'/><span><spring:message code='reng.Gümüşü' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Mavi'/><span><spring:message code='reng.Mavi' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Narıncı'/><span><spring:message code='reng.Narıncı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qara'/><span><spring:message code='reng.Qara' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qırmızı'/><span><spring:message code='reng.Qırmızı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qızılı'/><span><spring:message code='reng.Qızılı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qəhvəyi'/><span><spring:message code='reng.Qəhvəyi' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Sarı'/><span><spring:message code='reng.Sarı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Tünd qırmızı'/><span><spring:message code='reng.Tündqırmızı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Yaş Asfalt'/><span><spring:message code='reng.YaşAsfalt' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Yaşıl'/><span><spring:message code='reng.Yaşıl' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Çəhrayı'/><span><spring:message code='reng.Çəhrayı' text='default text' /></span></label>


						    </div><!-- checkboxes -->
						</div> <!-- BÃ¼tÃ¼n rÉnglÉr multi select -->
						
						<div class="multiselect multiselect2">
						    <div class="selectBox" >
						      <select  name="ban">
						        <option value="">Ban növü</option>
						      </select>
						      <div class="overSelect"></div>
						    </div> <!-- select box-->
						    <div class="checkboxes">
<label for='one'><input type='checkbox' value='Avtobus'/><span><spring:message code='ban.Avtobus' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Dartqı'/><span><spring:message code='ban.Dartqı' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Furqon'/><span><spring:message code='ban.Furqon' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Hetçbek'/><span><spring:message code='ban.Hetçbek' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Kabrio'/><span><spring:message code='ban.Kabrio' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Kupe'/><span><spring:message code='ban.Kupe' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Mikroavtobus'/><span><spring:message code='ban.Mikroavtobus' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Minivan'/><span><spring:message code='ban.Minivan' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Motosiklet'/><span><spring:message code='ban.Motosiklet' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Offroader/SUV'/><span><spring:message code='ban.Offroader/SUV' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Pikap'/><span><spring:message code='ban.Pikap' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Qolfkar'/><span><spring:message code='ban.Qolfkar' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Rodster'/><span><spring:message code='ban.Rodster' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Sedan'/><span><spring:message code='ban.Sedan' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Universal'/><span><spring:message code='ban.Universal' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Van'/><span><spring:message code='ban.Van' text='default text' /></span></label>
<label for='one'><input type='checkbox' value='Yük maşını'/><span><spring:message code='ban.Yükmaşını' text='default text' /></span></label>

						    </div><!-- checkboxes -->
						</div> <!-- Bank nÃ¶vÃ¼ multi select -->
						
						<div class="bankNovu">
						<label for="">
							<input type="checkbox" value="Kredit" name="kredit" id="">
							<span><spring:message code='kredit' text='default text' /></span>
						</label>
						<br>
						<label for="">
							<input type="checkbox" value="Barter" name="barter" id="">
							<span><spring:message code='barter' text='default text' /></span>
						</label>
											
						</div>	

					</div>  <!-- search left -->
				</div> <!-- col-md-4 col-sm-12 col-xs-12 -->

				
				<div class="col-md-4 col-md-offset-2  col-sm-6 col-xs-6  mainInput">
					<div  id="inputs">
					    <h6><spring:message code='yurus' text='default text' /></h6>

					   <div style="text-align: center;">
						      <label for="one">
						      <span><spring:message code='min' text='default text' /></span>  <input type="text" name="yurus_min"  /></label>
						      <label for="two">
						       <span><spring:message code='max' text='default text' /></span> <input type="text" name="yurus_max"/></label>
						</div>
						
						</div>	

					<div  id="inputs" style="margin-top: 22px;"><!-- 22 -->
					  <h6><spring:message code='muherrik_hecmi' text='default text' /></h6>
					  <div style="text-align: center;margin-top: 10px;"><!-- 15 -->
						      <label for="one">
						      <span><spring:message code='min' text='default text' /></span>  <input type="text"  name="muherrik_hecmi_min"/></label>
						      <label for="two">
						       <span><spring:message code='max' text='default text' /></span> <input type="text"  name="muherrik_hecmi_max"/></label>
					  </div>
						
					</div>
				</div> <!-- col-md-4  col-sm-6 col-xs-6 mainInput-->

				<div class="col-md-4  col-sm-6 col-xs-6 mainInput">
					<div  id="inputs">
					    <h6><spring:message code='buraxilis_ili' text='default text' /></h6>

					   <div style="text-align: center;">
						      <label for="one">
						      <span><spring:message code='min' text='default text' /></span>  <input type="text" name="buraxilis_ili_min" /></label>
						      <label for="two">
						       <span><spring:message code='max' text='default text' /></span> <input type="text" name="buraxilis_ili_max" /></label>
						</div>
						
						</div>	

					<div  id="inputs">
						<div class="inputItem1">
							  <h6 ><spring:message code='qiymet' text='default text' /></h6>
							  <select name="valyuta">
								<option value="">Sec</option>
							  
							      <option value="AZN">AZN</option>
							      <option value="USD">USD</option>
							   </select>
						</div>	   
					  <div  style="text-align: center;">
						      <label for="one">
						      <span><spring:message code='min' text='default text' /></span>  <input type="text" name="qiymet_min" /></label>
						      <label for="two">
						       <span><spring:message code='max' text='default text' /></span> <input type="text" name="qiymet_max"/></label>
					  </div>
						
					</div>
				</div> <!-- col-md-4  col-sm-6 col-xs-6 mainInput-->



				<div class="tehcizat">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-6 tehcizatItem">
<label for='one'><input type='checkbox' value='Yüngül lehimli disklər'/><span><spring:message code='tool.Yüngüllehimlidiskler' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Mərkəzi qapanma'/><span><spring:message code='tool.Mərkəziqapanma' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Kondisioner'/><span><spring:message code='tool.Kondisioner' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Yan pərdələr'/><span><spring:message code='tool.Yanpərdələr' text='default text' /></span></label><br>
					</div>

					<div class="col-md-3 col-sm-3 col-xs-6 tehcizatItem">
<label for='one'><input type='checkbox' value='Dəri salon'/><span><spring:message code='tool.Dərisalon' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Oturacaqların ventilyasiyası'/><span><spring:message code='tool.Oturacaqlarınventilyasiyası' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Arxa görüntü kamerası'/><span><spring:message code='tool.Arxagörüntükamerası' text='default text' /></span></label><br>

					</div>

					<div class="col-md-3 col-sm-3 col-xs-6 tehcizatItem">
<label for='one'><input type='checkbox' value='ABS'/><span><spring:message code='tool.ABS' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Park radarı'/><span><spring:message code='tool.Parkradarı' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Yağış sensoru'/><span><spring:message code='tool.Yağışsensoru' text='default text' /></span></label><br>
					</div>

					<div class="col-md-3 col-sm-3 col-xs-6 tehcizatItem">
						
<label for='one'><input type='checkbox' value='Ksenon lampalar'/><span><spring:message code='tool.Ksenonlampalar' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Lyuk'/><span><spring:message code='tool.Lyuk' text='default text' /></span></label><br>
<label for='one'><input type='checkbox' value='Oturacaqların isidilməsi'/><span><spring:message code='tool.Oturacaqlarınisidilməsi' text='default text' /></span></label><br>

					</div>
				</div>	
				</div><!--  tehcizat -->

				<div class="addForm" style="margin-top: 30px;">
					<button type="submit" class="btn btn-warning btnAdd">Basic</button>
					<input type="text" name="text" id="text">
				</div>
				

			</div> <!-- ROW -->
		</form>
	</div> <!-- CONTAINER -->
</section>

<!-- ============================================================================================================== 
==================================================================================================================
======================================================================================================-->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content">
	
		<!-- ////////////Content Box 01 -->
		<section class="box-content box-1 box-style-1" id="about">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="box-item">
							<div class="wrap-img">
								<img src="${pageContext.request.contextPath}/resources/images/key.png" />
							</div>
							<h3 class="services-heading">Text Heading A</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quo. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. </p>
						</div>
			 		</div>
			 		<div class="col-sm-4">
						<div class="box-item">
							<div class="box-item">
							<div class="wrap-img">
								<img src="${pageContext.request.contextPath}/resources/images/money.png" />
							</div>
							<h3 class="services-heading">Text Heading B</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quo. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. </p>
						</div>
						</div>
			 		</div>
					<div class="col-sm-4">
						<div class="box-item">
							<div class="box-item">
							<div class="wrap-img">
								<img src="${pageContext.request.contextPath}/resources/images/days.png" />
							</div>
							<h3 class="services-heading">Text Heading C</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quo. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. </p>
						</div>
						</div>
			 		</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 02 -->
		<section class="box-content box-2" id="services">
			<div class="container">
				<div class="row heading">
					 <div class="col-lg-12">	
	                    <h2>TOP HOLIDAY DESTINATIONS</h2>
	                    <hr>
                    	<div class="intro">Lorem ipsum dolor sit amet</div>
	                </div>
				</div>
				<div class="categories">
				  <ul class="cat">
					<li>
						<ol class="type list-inline">
							<li><a href="#" data-filter="*" class="active">All</a></li>
							<li><a href="#" data-filter=".lake_wanaka">Lake Wanaka</a></li>
							<li><a href="#" data-filter=".ohama_beach">Ohama Beach</a></li>
							<li><a href="#" data-filter=".taupo_central">Taupo Central</a></li>
						</ol>
					</li>
				  </ul>
				  <div class="clearfix"></div>
				</div>
				
				<div class="row">
					<div class="portfolio-items">
						<div class="col-sm-6 col-md-3 col-lg-3 taupo_central">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/2.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/2-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 taupo_central">
						  <div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/1.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/1-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 taupo_central">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/2.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/2-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>					
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 lake_wanaka">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/3.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/3-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 lake_wanaka">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/4.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/4-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 lake_wanaka">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/1.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/1-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 ohama_beach">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/3.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/3-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-lg-3 ohama_beach">
							<div class="post">
								<div class="item-container wow fadeInUp" data-wow-delay="200ms">
									<div class="item-caption">
										<div class="item-caption-inner">
											<div class="item-caption-inner1">
												<a class="example-image-link" href="${pageContext.request.contextPath}/resources/images/4.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward.">
													<i class="fa fa-search"></i>
												</a>
											</div>
										</div>
									</div>
									<img src="${pageContext.request.contextPath}/resources/images/4-thumb.jpg" />
								</div>
								<span>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 04 -->
		<section class="box-content box-4 box-style-1" id="news">
			<div class="container">
				<div class="row heading">
					 <div class="col-lg-12">	
	                    <h2>TESTIMONIALS</h2>
	                    <hr class="line02">
                    	<div class="intro">Lorem ipsum dolor sit amet</div>
	                </div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="box-item">
							<div class="wrap-img">
								<img src="${pageContext.request.contextPath}/resources/images/people1.jpg" class="img-circle" alt="">
							</div>
							<p>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. </p>
							<div class="info">
								WILL SMITH
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-item">
							<div class="wrap-img">
								<img src="${pageContext.request.contextPath}/resources/images/people2.jpg" class="img-circle" alt="">
							</div>
							<p>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. </p>
							<div class="info">
								WILL SMITH
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-item">
							<div class="wrap-img">
								<img src="${pageContext.request.contextPath}/resources/images/people3.jpg" class="img-circle" alt="">
							</div>
							<p>Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. </p>
							<div class="info">
								WILL SMITH
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
	</div>
	
	<!-- FOOTER -->
	<footer>
		<div class="top-footer">
			<div id="owl-brand" class="owl-carousel">
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/15.jpg" /></a>
				</div>
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/16.jpg" /></a>
				</div>
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/17.jpg" /></a>
				</div>
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/18.jpg" /></a>
				</div>
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/19.jpg" /></a>
				</div>
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/20.jpg" /></a>
				</div>
				<div class="item">
					<a href="single.html"><img src="${pageContext.request.contextPath}/resources/images/21.jpg" /></a>
				</div>
			</div>
		</div>
		<div class="wrap-footer">
			<div class="container">
				<div class="row"> 
					<div class="col-footer col-md-4">
						<h2 class="footer-title">About Us</h2>
						<div class="textwidget">Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan. <br> <br> 
						Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan.</div>
					</div> 
					<div class="col-footer col-md-4 widget_recent_entries">
						<h2 class="footer-title">Recent Posts</h2>
						<ul>
							<li><a href="#">MOST VISITED COUNTRIES</a></li>
							<li><a href="#">5 PLACES THAT MAKE A GREAT HOLIDAY</a></li>
							<li><a href="#">PEBBLE TIME STEEL IS ON TRACK TO SHIP IN JULY</a></li>
							<li><a href="#">STARTUP COMPANY&#8217;S CO-FOUNDER TALKS ON HIS NEW PRODUCT</a></li>
						</ul>
					</div>
					<div class="col-footer col-md-4">
						<h2 class="footer-title">NEWS LETTER</h2>
						If you want to receive our latest news send directly to your email, please leave your email address bellow. Subscription is free and you can cancel anytime.
						<form action="#" method="post">
							<input type="text" name="your-name" value="" size="40" placeholder="Your Email" />
							<input type="submit" value="SUBSCRIBE" class="btn btn-3" />
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<p>Copyright 20xx - <a href="http://www.365bootstrap.com" target="_blank" rel="nofollow">Bootstrap Themes</a> Designed by <a href="http://www.365bootstrap.com" target="_blank" rel="nofollow">365BOOTSTRAP</a></p>
					</div>
					<div class="col-md-4">
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a>
							</li>
							<li><a href="https://www.facebook.com/365bootstrap"><i class="fa fa-facebook"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-pinterest"></i></a>
							</li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul class="list-inline quicklinks">
							<li><a href="#">Privacy Policy</a>
							</li>
							<li><a href="#">Terms of Use</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
  
	<!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/agency.js"></script>

	<!-- Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/cbpAnimatedHeader.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.isotope.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script2.js"></script>
	<script type="text/javascript" src ="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.js"></script>
	
	
	<!-- carousel -->
	<script src="${pageContext.request.contextPath}/resources/owl-carousel/owl.carousel.js"></script>
    <script>
    $(document).ready(function() {
      $("#owl-brand").owlCarousel({
        autoPlay: 3000,
        items : 6,
		itemsDesktop : [1199,4],
        itemsDesktopSmall : [979,2],
		navigation: true,
		navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
		pagination: false
      });
    });
    </script>
    
    
    <script>
    
    $(document).ready(function() {
    $("#marka").change(function(){	
 	

        var search = {}
        marka = $("#marka").val();
	alert(marka);
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/api/search",
            data: {"marka":marka},
            cache: false,
            success: function (data) {
			alert(data);
			

            },
          
        });

        });
    });
    
    </script>
	
</body>
</html>