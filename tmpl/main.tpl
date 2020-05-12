<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?=$this->title?></title>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:700,400,300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
	<link href="css/elastislide.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	
	<header>
		<section class="menu-carousel">
			<div id="carousel" class="carousel fade" data-ride="carousel">
				<div class="main-menu">
					<nav class="navbar navbar-inverse">
						<div class="container">
							<div class="main-menu-bg">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a class="navbar-brand" href="<?=$this->index?>"><img src="img/logo.png" alt="StyleTour"><span>StyleTour</span></a>
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="main-menu">
									<ul class="nav navbar-nav">
										<li><a href="<?=$this->index?>">Main</a></li>
										<li><a href="<?=$this->link_delivery?>">Payment and Delivery</a></li>
										<li><a href="<?=$this->link_contacts?>">Contacts</a></li>
									</ul>

									<div class="nav navbar-nav navbar-right">
										<form class="navbar-form navbar-left" role="search" method="get" action="<?=$this->link_search?>">
											<div class="input-group">
												<input type="text" name="q" class="form-control" placeholder="Search">
												<span class="input-group-btn">
													<button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
												</span>
											</div>
										</form>
									</div>
								</div><!-- /.navbar-collapse -->
								<i class="search glyphicon glyphicon-search"></i>
							</div><!-- /.main-menu-bg -->
						</div><!-- /.container -->
					</nav>
				</div><!-- /.main-menu -->

				<!-- Indicators -->
				<div class="carousel-indicators-wrap">
					<ol class="carousel-indicators">
						<li data-target="#carousel" data-slide-to="0" class="active"></li>
						<li data-target="#carousel" data-slide-to="1"></li>
						<li data-target="#carousel" data-slide-to="2"></li>
						<li data-target="#carousel" data-slide-to="3"></li>
					</ol>
				</div><!-- /.carousel-indicators-wrap -->

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<!-- <img src="img/slider.jpg" alt=""> -->
						<div class="bgslide" style="background-image: url(img/slider3.jpg);"></div>
						<div class="container">
							<div class="carousel-caption">
								<h1>Women's Apparel</h1>
								<h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
								<a href="#" class="btn-red">Shop Women’s Apparel</a>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- <img src="img/slider.jpg" alt=""> -->
						<div class="bgslide" style="background-image: url(img/slider2.jpg);"></div>
						<div class="container">
							<div class="carousel-caption">
								<h1>Women's Apparel 2</h1>
								<h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
								<a href="#" class="btn-red">Shop Women’s Apparel</a>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- <img src="img/slider.jpg" alt=""> -->
						<div class="bgslide" style="background-image: url(img/slider3.jpg);"></div>
						<div class="container">
							<div class="carousel-caption">
								<h1>Women's Apparel 3</h1>
								<h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
								<a href="#" class="btn-red">Shop Women’s Apparel</a>
							</div>
						</div>
					</div>
					<div class="item">
						<!-- <img src="img/slider.jpg" alt=""> -->
						<div class="bgslide" style="background-image: url(img/slider4.jpg);"></div>
						<div class="container">
							<div class="carousel-caption">
								<h1>Women's Apparel 4</h1>
								<h3>T-Shirts, Dress Shirts, Tanks, Pants and More...</h3>
								<a href="#" class="btn-red">Shop Women’s Apparel</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</section>

	</header>

	<section class="main-slogan">
		<div class="menu-top">
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-top" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="menu-top">
						<ul class="nav navbar-nav">
<li class="shopcard">В корзине <span><?=$this->cart_count?></span> <?=$this->cart_word?><br />на сумму <span><?=$this->cart_summa?></span> руб.</li>				
						</ul>

						<ul class="nav navbar-nav navbar-right">
		                <li><a href="<?=$this->cart_link?>" class="btn-red"><span class="glyphicon glyphicon-shopping-cart"></span>shopping cart</a></li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</div><!-- /.menu-top -->
	</section>

	<section class="main-content">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-md-push-3">
					<div class="row">
         <?php include "content_".$this->content.".tpl"; ?><!-- /.content -->
					</div>
				</div>
				<div class="col-md-3 col-md-pull-9">
					<div class="sidebar">
						<div class="row">
							<div class="col-xs-6 col-md-12">
								<div class="widget">
									<h3>Popular Categories</h3>
						<?php for ($i = 0; $i < count($this->items); $i++) { ?>
							<p <?php if ($i + 1 == count($this->items)) ?>>
								<a href="<?=$this->items[$i]["link"]?>"><?=$this->items[$i]["title"]?></a>
							</p>
						<?php } ?>
								</div><!-- .widget -->
							</div>
							<div class="col-xs-6 col-md-12">
								<div class="widget">
									<h3>Popular Brands</h3>
									<ul>
										<li><a href="#">Ashworth</a></li>
										<li><a href="#">Rabbit Skins</a></li>
										<li><a href="#">Izod</a></li>
										<li><a href="#">LAT</a></li>
										<li><a href="#">Authentic Pigment</a></li>
										<li><a href="#">Canvas</a></li>
										<li><a href="#">Apples & Oranges</a></li>
										<li><a href="#">OccuNomix</a></li>
										<li class="more"><a href="#">Show More</a></li>
									</ul>
								</div><!-- .widget -->
							</div>
						</div>

						<div class="row">
							<div class="col-md-12 col-xs-6 text-center">
								<div id="carousel-sidebar" class="carousel fade" data-ride="carousel">
									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<img src="img/slide-sidebar1.jpg" alt="">
											<div class="sidebar-carousel-caption">
												<div>
													<h4>Fashion Colors For Women</h4>
													<p>Make every category of your webstore look special by setting different color schemes.</p>
												</div>
											</div>
										</div>
										<div class="item">
											<img src="img/slide-sidebar2.jpg" alt="">
											<div class="sidebar-carousel-caption">
												<div>
													<h4>Fashion Colors For Women 2</h4>
													<p>Make every category of your webstore look special by setting different color schemes.</p>
												</div>
											</div>
										</div>
										<div class="item">
											<img src="img/slide-sidebar1.jpg" alt="">
											<div class="sidebar-carousel-caption">
												<div>
													<h4>Fashion Colors For Women 3</h4>
													<p>Make every category of your webstore look special by setting different color schemes.</p>
												</div>
											</div>
										</div>
									</div>
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-sidebar" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-sidebar" data-slide-to="1"></li>
										<li data-target="#carousel-sidebar" data-slide-to="2"></li>
									</ol>
								</div><!-- #carousel-sidebar -->
							</div>
							<div class="col-md-12 col-xs-6 text-center">
								<div class="banner">
									<img src="img/banner.jpg" alt="">
									<h3>introducing</h3>
									<h2>bombshell</h2>
									<h3>forever</h3>
									<a href="#" class="btn-red">shop now</a>
								</div>
							</div>
						</div>				
						<div class="about">
							<h3>About Store</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
							<p><span>Ut enim ad minim veniam, quis nostrud exercitation. Aiusmod tempor incididunt ut labore et dolore magna aliqua</span></p>
						</div>
					</div> <!-- /.sidebar -->
				</div>
			</div>
		</div>
	</section>

	<div class="bottom-slider">
		<div class="container">
			<ul id="elastislide" class="elastislide-list">
				<li><a href="#"><img src="img/partner1.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner5.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner6.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner4.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner5.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner6.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner1.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner4.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner1.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner6.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner5.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner4.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner1.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner4.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner1.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner6.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner5.jpg" alt="partner1" /></a></li>
				<li><a href="#"><img src="img/partner4.jpg" alt="partner1" /></a></li>
			</ul>
		</div>
	</div><!-- /.bottom-slider -->

	<footer>
		<div class="footer-menu">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-3 col-xs-6">
								<h5>Help &amp; Info</h5>
								<ul>
									<li><a href="#">Delivery</a></li>
									<li><a href="#">Returns &amp; Refunds</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Track your Order</a></li>
									<li><a href="#">Reglaze Service</a></li>
									<li><a href="#">Lens Price Comparison</a></li>
									<li><a href="#">A - Z Brands</a></li>
									<li><a href="#">FAQ's</a></li>
								</ul>
							</div>
							<div class="col-md-3 col-xs-6">
								<h5>Brands we sell</h5>
								<ul>
									<li><a href="#">Noosa Amsterdam</a></li>
									<li><a href="#">Cream Clothing</a></li>
									<li><a href="#">Taschendieb</a></li>
									<li><a href="#">Hermes paris</a></li>
									<li><a href="#">D&amp;G Fashion</a></li>
								</ul>
							</div>
							<div class="clearfix visible-xs-block visible-sm-block"></div>
							<div class="col-md-3 col-xs-6">
								<h5>Care &amp; advice</h5>
								<ul>
									<li><a href="#">Prescription Information</a></li>
									<li><a href="#">Lenses &amp; Coatings</a></li>
									<li><a href="#">PD Measurement</a></li>
									<li><a href="#">Style Advice</a></li>
									<li><a href="#">Size Guide</a></li>
									<li><a href="#">Shopping Guide</a></li>
								</ul>
							</div>
							<div class="col-md-3 col-xs-6">
								<h5>Company</h5>
								<ul>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Our Store</a></li>
									<li><a href="#">Terms &amp; Conditions</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Cookies</a></li>
									<li><a href="#">Find us</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<h5>Follow us</h5>
						<div class="social-icons">
							<a href="#"><img src="img/fb.jpg" alt=""></a>
							<a href="#"><img src="img/tw.jpg" alt=""></a>
							<a href="#"><img src="img/fl.jpg" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div><!-- /.footer-menu -->
		<div class="footer-copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<p>&copy; 2020 Fashion Store. All Rights Reserved.</p>
					</div>
					<div class="col-md-8 text-right pay">
						<a href="#"><img src="img/pay1.jpg" alt=""></a>
						<a href="#"><img src="img/pay2.jpg" alt=""></a>
						<a href="#"><img src="img/pay3.jpg" alt=""></a>
						<a href="#"><img src="img/pay4.jpg" alt=""></a>
						<a href="#"><img src="img/pay5.jpg" alt=""></a>
						<a href="#"><img src="img/pay6.jpg" alt=""></a>
						<a href="#"><img src="img/pay7.jpg" alt=""></a>
						<a href="#"><img src="img/pay8.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</div><!-- /.footer-copyright -->
	</footer>

	
	<script src="js/modernizr.custom.17475.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.elastislide.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>