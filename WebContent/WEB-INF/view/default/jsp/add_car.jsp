<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  <!-- META DATA -->
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">
    <meta name="author" content="http://www.365bootstrap.com">

	<title>OpenHouse - Houses for Rent</title>
  
	<!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"  type="text/css">
	
	<!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <!-- <link href="owl-carousel/owl.theme.css" rel="stylesheet"> -->
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Asap:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/scss/style2.css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

	
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

<!-- ========================================================================================================================================================================================================================================================================================================================================================================================= -->
<section id = "elan">
	<div class="container">
		<form action="">
			<div class="col-lg-12">	
                <h2>ELAN</h2>
                <hr>
	         </div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12 elanContentItem">
					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='marka' text='default text' /> <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
<option value=""><spring:message code='sec' text='default text' /></option>
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
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p>Model  <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
								
							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='ban_novu' text='default text' /> <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
								<option value='Avtobus'><spring:message code='ban.Avtobus' text='default text' />
<option value='Dartqı'><spring:message code='ban.Dartqı' text='default text' />
<option value='Furqon'><spring:message code='ban.Furqon' text='default text' />
<option value='Hetçbek'><spring:message code='ban.Hetçbek' text='default text' />
<option value='Kabrio'><spring:message code='ban.Kabrio' text='default text' />
<option value='Kupe'><spring:message code='ban.Kupe' text='default text' />
<option value='Mikroavtobus'><spring:message code='ban.Mikroavtobus' text='default text' />
<option value='Minivan'><spring:message code='ban.Minivan' text='default text' />
<option value='Motosiklet'><spring:message code='ban.Motosiklet' text='default text' />
<option value='Offroader / SUV'><spring:message code='ban.Offroader/SUV' text='default text' />
<option value='Pikap'><spring:message code='ban.Pikap' text='default text' />
<option value='Qolfkar'><spring:message code='ban.Qolfkar' text='default text' />
<option value='Rodster'><spring:message code='ban.Rodster' text='default text' />
<option value='Sedan'><spring:message code='ban.Sedan' text='default text' />
<option value='Universal'><spring:message code='ban.Universal' text='default text' />
<option value='Van'><spring:message code='ban.Van' text='default text' />
<option value='Yük maşını'><spring:message code='ban.Yükmaşını' text='default text' />

							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='yurus' text='default text' />, km <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<input type="number">
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='reng' text='default text' /> <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
<option value=''><spring:message code='sec' text='default text' />
							
<option value='Ağ'><spring:message code='reng.Ağ' text='default text' />
<option value='Bej'><spring:message code='reng.Bej' text='default text' />
<option value='Boz'><spring:message code='reng.Boz' text='default text' />
<option value='Bənövşəyi'><spring:message code='reng.Bənövsəyi' text='default text' />
<option value='Göy'><spring:message code='reng.Göy' text='default text' />
<option value='Gümüşü'><spring:message code='reng.Gümüşü' text='default text' />
<option value='Mavi'><spring:message code='reng.Mavi' text='default text' />
<option value='Narıncı'><spring:message code='reng.Narıncı' text='default text' />
<option value='Qara'><spring:message code='reng.Qara' text='default text' />
<option value='Qırmızı'><spring:message code='reng.Qırmızı' text='default text' />
<option value='Qızılı'><spring:message code='reng.Qızılı' text='default text' />
<option value='Qəhvəyi'><spring:message code='reng.Qəhvəyi' text='default text' />
<option value='Sarı'><spring:message code='reng.Sarı' text='default text' />
<option value='Tünd qırmızı'><spring:message code='reng.Tünd qırmızı' text='default text' />
<option value='Yaş Asfalt'><spring:message code='reng.YaşAsfalt' text='default text' />
<option value='Yaşıl'><spring:message code='reng.Yaşıl' text='default text' />
<option value='Çəhrayı'><spring:message code='reng.Çəhrayı' text='default text' />

							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='qiymet' text='default text' /><span>*</span></p>
						</div>
						<div class="col-md-5 col-sm-5 col-xs-8 elanRowRight">
							<input type="number">
						</div>
						<div class="col-md-3 col-sm-3 col-xs-4 elanRowCheck">
							<label for="">
								<input type="checkbox" value="AZN">
								<span>AZN</span>
							</label><br>
							<label for="">
								<input type="checkbox" value="USD">
								<span>USD</span>
							</label>		
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-8 col-md-offset-4 elanRowKredit">
							<label for="">
								<input type="checkbox">
								<span><spring:message code='kredit' text='default text' /></span>
							</label><br>
							<label for="">
								<input type="checkbox">
								<span><spring:message code='barter' text='default text' /></span>
							</label>
						</div>
					</div>
				</div> <!-- elanContentItem -->


	<!-- =============================================================================================== -->


				<div class="col-md-6 col-sm-6 col-xs-12 elanContentItem">
					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='yanacaq_novu' text='default text' /><span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
								<option value='Benzin'><spring:message code='yanacaq.Benzin' text='default text' />
<option value='Dizel'><spring:message code='yanacaq.Dizel' text='default text' />
<option value='Qaz'><spring:message code='yanacaq.Qaz' text='default text' />
<option value='Elektro'><spring:message code='yanacaq.Elektro' text='default text' />
<option value='Hibrid'><spring:message code='yanacaq.Hibrid' text='default text' />

							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='oturucu' text='default text' />  <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
								<option value="Tam"><spring:message code='oturucu.Tam' text='default text' /></option>
								<option value="Arxa"><spring:message code='oturucu.Arxa' text='default text' /></option>
								<option value="Ön"><spring:message code='oturucu.On' text='default text' /></option>
								
							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='suretler_qutusu' text='default text' /><span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
								<option value="Mexaniki"><spring:message code='suretler_qutusu.Mexanika' text='default text' /></option>
								<option value="Avtomat"><spring:message code='suretler_qutusuşAvtomat' text='default text' /></option>
							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='buraxilis_ili' text='default text' /> <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
<option value='1950'>1950
<option value='1951'>1951
<option value='1952'>1952
<option value='1953'>1953
<option value='1954'>1954
<option value='1955'>1955
<option value='1956'>1956
<option value='1957'>1957
<option value='1958'>1958
<option value='1959'>1959
<option value='1960'>1960
<option value='1961'>1961
<option value='1962'>1962
<option value='1963'>1963
<option value='1964'>1964
<option value='1965'>1965
<option value='1966'>1966
<option value='1967'>1967
<option value='1968'>1968
<option value='1969'>1969
<option value='1970'>1970
<option value='1971'>1971
<option value='1972'>1972
<option value='1973'>1973
<option value='1974'>1974
<option value='1975'>1975
<option value='1976'>1976
<option value='1977'>1977
<option value='1978'>1978
<option value='1979'>1979
<option value='1980'>1980
<option value='1981'>1981
<option value='1982'>1982
<option value='1983'>1983
<option value='1984'>1984
<option value='1985'>1985
<option value='1986'>1986
<option value='1987'>1987
<option value='1988'>1988
<option value='1989'>1989
<option value='1990'>1990
<option value='1991'>1991
<option value='1992'>1992
<option value='1993'>1993
<option value='1994'>1994
<option value='1995'>1995
<option value='1996'>1996
<option value='1997'>1997
<option value='1998'>1998
<option value='1999'>1999
<option value='2000'>2000
<option value='2001'>2001
<option value='2002'>2002
<option value='2003'>2003
<option value='2004'>2004
<option value='2005'>2005
<option value='2006'>2006
<option value='2007'>2007
<option value='2008'>2008
<option value='2009'>2009
<option value='2010'>2010
<option value='2011'>2011
<option value='2012'>2012
<option value='2013'>2013
<option value='2014'>2014
<option value='2015'>2015
<option value='2016'>2016

							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='muherrik_hecmi' text='default text' />, sm<sup>3</sup> <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<select name="" id="">
								<option value=""><spring:message code='sec' text='default text' /></option>
								<option value="50">50</option>
<option value="100">100</option>
<option value="150">150</option>
<option value="200">200</option>
<option value="250">250</option>
<option value="300">300</option>
<option value="350">350</option>
<option value="400">400</option>
<option value="450">450</option>
<option value="500">500</option>
<option value="600">600</option>
<option value="700">700</option>
<option value="800">800</option>
<option value="900">900</option>
<option value="1000">1000</option>
<option value="1100">1100</option>
<option value="1200">1200</option>
<option value="1300">1300</option>
<option value="1400">1400</option>
<option value="1500">1500</option>
<option value="1600">1600</option>
<option value="1700">1700</option>
<option value="1800">1800</option>
<option value="1900">1900</option>
<option value="2000">2000</option>
<option value="2100">2100</option>
<option value="2200">2200</option>
<option value="2300">2300</option>
<option value="2400">2400</option>
<option value="2500">2500</option>
<option value="2600">2600</option>
<option value="2700">2700</option>
<option value="2800">2800</option>
<option value="2900">2900</option>
<option value="3000">3000</option>
<option value="3100">3100</option>
<option value="3200">3200</option>
<option value="3300">3300</option>
<option value="3400">3400</option>
<option value="3500">3500</option>
<option value="3600">3600</option>
<option value="3700">3700</option>
<option value="3800">3800</option>
<option value="3900">3900</option>
<option value="4000">4000</option>
<option value="4100">4100</option>
<option value="4200">4200</option>
<option value="4300">4300</option>
<option value="4400">4400</option>
<option value="4500">4500</option>
<option value="4600">4600</option>
<option value="4700">4700</option>
<option value="4800">4800</option>
<option value="4900">4900</option>
<option value="5000">5000</option>
<option value="5100">5100</option>
<option value="5200">5200</option>
<option value="5300">5300</option>
<option value="5400">5400</option>
<option value="5500">5500</option>
<option value="5600">5600</option>
<option value="5700">5700</option>
<option value="5800">5800</option>
<option value="5900">5900</option>
<option value="6000">6000</option>
<option value="6100">6100</option>
<option value="6200">6200</option>
<option value="6300">6300</option>
<option value="6400">6400</option>
<option value="6500">6500</option>
<option value="7000">7000</option>
<option value="7500">7500</option>
<option value="8000">8000</option>
<option value="8500">8500</option>
<option value="9000">9000</option>
<option value="9500">9500</option>
<option value="10000">10000</option>
<option value="11000">11000</option>
<option value="12000">12000</option>
<option value="13000">13000</option>
<option value="14000">14000</option>
<option value="15000">15000</option>
<option value="16000">16000</option>
							</select>
						</div>	
					</div>

					<div class="row elanRow">
						<div class="col-md-4 col-sm-4 col-xs-12 elanRowLeft">
							<p><spring:message code='muherrik_hecmi' text='default text' />, a.g. <span>*</span></p>
						</div>
						<div class="col-md-8 col-sm-8 col-xs-12 elanRowRight">
							<input type="number">
						</div>	
					</div>

				</div> <!-- elanContentItem -->
				
				<div class="col-md-12 col-sm-12 col-xs-12 elanContentItem">
					<div class="row elanRow">
							<div class="col-md-2 col-sm-2 col-xs-12 elanRowLeft">
								<p><spring:message code='elave_melumat' text='default text' /></p>
							</div>
							<div class="col-md-10 col-sm-10 col-xs-12 elanRowRight">
								<textarea name="" id="" cols="30" rows="10"></textarea>
								<p style="margin-top: -10px;"><spring:message code='telefon_nomrelerini_qeyd_etmek_qadagandir' text='default text' /></p>
							</div>	
						</div>
				</div><!-- elanContentItem -->

				<div class="tehcizat">
						<h1><spring:message code='avtomobilin_techizati' text='default text' /></h1>	
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
					<input type="text" name="CheckedTehcizat">
				</div>	
				</div><!--  tehcizat -->

				<div class="shekil">
					<h1><spring:message code='sekiller' text='default text' /></h1>
					<div class="fotoContent">
						<div class="col-md-12 col-sm-12 col-xs-12 addFoto">
							<i class="fa fa-camera" aria-hidden="true"></i>
						</div>
						<input type="file" accept="image/*" id="fileInput" name="fileInput" style="display: none;" >
						<div class="addedFoto">
							
						</div>
						<input type="text" name="ArtirilmiwFotolar" id="ArtirilmiwFotolar">
						<div class="col-md-12 col-sm-12 col-xs-12 shekilTxt">
							<div class="shekilTxtItem col-md-6 col-sm-6 col-xs-12 ">
								<ul>
									<li>
										<spring:message code='sekiller_info_min' text='default text' /><span><spring:message code='sekiller_info' text='default text' /></span>, <spring:message code='sekiller_max' text='default text' />
									</li>
									
								</ul>
							</div>

							<div class="shekilTxtItem col-md-6 col-sm-6 col-xs-12 ">
								<ul>
									<li>
										<spring:message code='sekiller_info1' text='default text' />r
									</li>
									<li>

<spring:message code='sekiller_info2' text='default text' />									</li>
								</ul>
							</div>

						</div>  <!-- shekilTxt -->
					</div>  <!-- fotoContent -->
				</div>  <!-- shekil -->

				<div class="video">
					<h1>Video</h1>
					<div class="videoContent">
						<div class="col-md-12 col-sm-12 col-xs-12 addVideo">
							<i class="fa fa-video-camera" aria-hidden="true"></i>
						</div>
						<input type="file" accept="image/*" id="fileInput" name="fileInput" style="display: none;" >
						<div class="addedVideo">
							<div class="addedVideoItem">
								<video width="100%" height="240" controls>
									  Your browser does not support the video tag.
								</video>
								<input type="file" accept="video/*"/ id="videoInput" name="videoInput"  style="display: none;" >
								<i class="fa fa-times" aria-hidden="true"></i>
							</div>
						</div>
						<input type="text" name="ArtirilmiwVideo" id="ArtirilmiwVideo" >
					</div>  <!-- videoContent -->
				</div>  <!-- video -->

				<div class="elaqe">
					<h1><spring:message code='elaqe' text='default text' /></h1>
					<div class="col-md-6 col-sm-6 col-xs-12 elaqeItem">
						<div class="row elaqeRow">
							<div class="col-md-4 col-sm-4 col-xs-12 elaqeRowLeft">
								<p><spring:message code='adiniz' text='default text' /> <span>*</span></p>
							</div>
							<div class="col-md-8 col-sm-8 col-xs-12 elaqeRowRight">
								<input type="text" name="">
							</div>	
						</div>

						<div class="row elaqeRow">
							<div class="col-md-4 col-sm-4 col-xs-12 elaqeRowLeft">
								<p><spring:message code='seher' text='default text' /><span>*</span></p>
							</div>
							<div class="col-md-8 col-sm-8 col-xs-12 elaqeRowRight">
								<select name="" id="">
									<option value=""></option>
									<option value='Abşeron'><spring:message code='seher.Abşeron' text='default text' />
<option value='Kürdəmir'><spring:message code='seher.Kürdəmir' text='default text' />
<option value='Ağdam'><spring:message code='seher.Ağdam' text='default text' />
<option value='Qəbələ'><spring:message code='seher.Qəbələ' text='default text' />
<option value='Ağdaş'><spring:message code='seher.Ağdaş' text='default text' />
<option value='Qax'><spring:message code='seher.Qax' text='default text' />
<option value='Ağcabədi'><spring:message code='seher.Ağcabədi' text='default text' />
<option value='Qazax'><spring:message code='seher.Qazax' text='default text' />
<option value='Ağstafa'><spring:message code='seher.Ağstafa' text='default text' />
<option value='Qobustan'><spring:message code='seher.Qobustan' text='default text' />
<option value='Ağsu'><spring:message code='seher.Ağsu' text='default text' />
<option value='Qubadlı'><spring:message code='seher.Qubadlı' text='default text' />
<option value='Astara'><spring:message code='seher.Astara' text='default text' />
<option value='Qusar'><spring:message code='seher.Qusar' text='default text' />
<option value='Babək'><spring:message code='seher.Babək' text='default text' />
<option value='Laçın'><spring:message code='seher.Laçın' text='default text' />
<option value='Balakən'><spring:message code='seher.Balakən' text='default text' />
<option value='Lerik'><spring:message code='seher.Lerik' text='default text' />
<option value='Bərdə'><spring:message code='seher.Bərdə' text='default text' />
<option value='Masallı'><spring:message code='seher.Masallı' text='default text' />
<option value='Beyləqan'><spring:message code='seher.Beyləqan' text='default text' />
<option value='Neftçala'><spring:message code='seher.Neftçala' text='default text' />
<option value='Biləsuvar'><spring:message code='seher.Biləsuvar' text='default text' />
<option value='Oğuz'><spring:message code='seher.Oğuz' text='default text' />
<option value='Cəbrayıl'><spring:message code='seher.Cəbrayıl' text='default text' />
<option value='Ordubad'><spring:message code='seher.Ordubad' text='default text' />
<option value='Cəlilabad'><spring:message code='seher.Cəlilabad' text='default text' />
<option value='Saatlı'><spring:message code='seher.Saatlı' text='default text' />
<option value='Culfa'><spring:message code='seher.Culfa' text='default text' />
<option value='Sabirabad'><spring:message code='seher.Sabirabad' text='default text' />
<option value='Daşkəsən'><spring:message code='seher.Daşkəsən' text='default text' />
<option value='Sədərək'><spring:message code='seher.Sədərək' text='default text' />
<option value='Füzuli'><spring:message code='seher.Füzuli' text='default text' />
<option value='Salyan'><spring:message code='seher.Salyan' text='default text' />
<option value='Gədəbəy'><spring:message code='seher.Gədəbəy' text='default text' />
<option value='Samux'><spring:message code='seher.Samux' text='default text' />
<option value='Goranboy'><spring:message code='seher.Goranboy' text='default text' />
<option value='Şabran'><spring:message code='seher.Şabran' text='default text' />
<option value='Göyçay'><spring:message code='seher.Göyçay' text='default text' />
<option value='Şahbuz'><spring:message code='seher.Şahbuz' text='default text' />
<option value='Göygöl'><spring:message code='seher.Göygöl' text='default text' />
<option value='Şamaxı'><spring:message code='seher.Şamaxı' text='default text' />
<option value='Hacıqabul'><spring:message code='seher.Hacıqabul' text='default text' />
<option value='Şəmkir'><spring:message code='seher.Şəmkir' text='default text' />
<option value='Xaçmaz'><spring:message code='seher.Xaçmaz' text='default text' />
<option value='Siyəzən'><spring:message code='seher.Siyəzən' text='default text' />
<option value='Xızı'><spring:message code='seher.Xızı' text='default text' />
<option value='Tərtər'><spring:message code='seher.Tərtər' text='default text' />
<option value='Xocalı'><spring:message code='seher.Xocalı' text='default text' />
<option value='Tovuz'><spring:message code='seher.Tovuz' text='default text' />
<option value='Xocavənd'><spring:message code='seher.Xocavənd' text='default text' />
<option value='Ucar'><spring:message code='seher.Ucar' text='default text' />
<option value='İmişli'><spring:message code='seher.İmişli' text='default text' />
<option value='Yardımlı'><spring:message code='seher.Yardımlı' text='default text' />
<option value='İsmayıllı'><spring:message code='seher.İsmayıllı' text='default text' />
<option value='Zəngilan'><spring:message code='seher.Zəngilan' text='default text' />
<option value='Kəlbəcər'><spring:message code='seher.Kəlbəcər' text='default text' />
<option value='Zaqatala'><spring:message code='seher.Zaqatala' text='default text' />
<option value='Kəngərli'><spring:message code='seher.Kəngərli' text='default text' />
<option value='Zərdab'><spring:message code='seher.Zərdab' text='default text' />

								</select>
							</div>	
						</div>

						<div class="row elaqeRow">
							<div class="col-md-4 col-sm-4 col-xs-12 elaqeRowLeft">
								<p>E-mail <span>*</span></p>
							</div>
							<div class="col-md-8 col-sm-8 col-xs-12 elaqeRowRight">
								<input type="text" name="">
								<p><spring:message code='saytda_gosterilmir' text='default text' /></p>
							</div>	
						</div>

					</div>  <!-- elaqeItem -->

					<div class="col-md-6 col-sm-6 col-xs-12 elaqeItem">
						<div class="row elaqeRow">
							<div class="col-md-4 col-sm-4 col-xs-12 elaqeRowLeft">
								<p><spring:message code='telefon_nomresi' text='default text' /> <span>*</span></p>
							</div>
							<div class="col-md-8 col-sm-8 col-xs-12 elaqeRowRight">
								<input type="text" name="" placeholder="<spring:message code='meselen' text='default text' /> 070-777-88-99" class="addPhone" maxlength="13">
							</div>	
						</div>

						<div class="row elaqeRow">
							<div class="col-md-4 col-sm-4 col-xs-12 elaqeRowLeft">
							</div>
							<div class="col-md-8 col-sm-8 col-xs-12 elaqeRowRight">
								<input type="text" name="" class="addPhone" maxlength="13">
							</div>	
						</div>

						<div class="row elaqeRow">
							<div class="col-md-4 col-sm-4 col-xs-12 elaqeRowLeft">
							</div>
							<div class="col-md-8 col-sm-8 col-xs-12 elaqeRowRight">
								<input type="text" name="" class="addPhone" maxlength="13">
								<p><spring:message code='bir_nomre_kifayetdir' text='default text' /></p>
							</div>	
						</div>


					</div>  <!-- elaqeItem -->

					<button type="button" class="btn btn-warning btnAdd"><spring:message code='gondermek' text='default text' /></button>

				</div> <!-- elaqe -->

				


			</div> <!-- ROW -->
		</form>
	</div> <!-- CONTAINER -->
</section>


<!-- ========================================================================================================================================================================================================================================================================================================================================================================================= -->

	
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
	<script src="owl-carousel/owl.carousel.js"></script>
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
	
</body>
</html>