<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<%@ include file="videos.jsp"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>www.BooKCorneR.com</title>

<%@ include file="join1.jsp"%>


</head>
<body>
	<!-- wpf loader Two -->
<!-- 	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
 -->	<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>


	<!-- / menu -->
	<!-- Start slider -->
	<section id="aa-slider">
		<div class="aa-slider-area">
			<div id="sequence" class="seq">
				<div class="seq-screen">
					<ul class="seq-canvas">
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="<c:url value='/resources/img/co1.jpg'/>" />
							</div>
							<div class="seq-title">
								<span data-seq>Save Up to 75% Off</span>
								<h2 data-seq>Rare Collection</h2>
								<a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP
									NOW</a>
							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="<c:url value='/resources/img/co2.jpg'/>" />
							</div>
							<div class="seq-title">
								<span data-seq>Save Up to 40% Off</span>
								<h2 data-seq>Super Collection</h2>
								<a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP
									NOW</a>
							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="<c:url value='/resources/img/co9.jpg'/>" />
							</div>
							<div class="seq-title">
								<span data-seq>Save Up to 75% Off</span>
								<h2 data-seq>Nice Collection</h2>
								<a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP
									NOW</a>
							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="<c:url value='/resources/img/co6.jpg'/>" />
							</div>
							<div class="seq-title">
								<span data-seq>Save Up to 75% Off</span>
								<h2 data-seq>Exclusive Offers</h2>
								<a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP
									NOW</a>
							</div>
						</li>
						<!-- single slide item -->
						<li>
							<div class="seq-model">
								<img data-seq src="<c:url value='/resources/img/co8.jpg'/>" />
							</div>
							<div class="seq-title">
								<span data-seq>Save Up to 50% Off</span>
								<h2 data-seq>Best Collection</h2>
								<a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP
									NOW</a>
							</div>
						</li>
					</ul>
				</div>
				<!-- slider navigation btn -->
				<fieldset class="seq-nav" aria-controls="sequence"
					aria-label="Slider buttons">
					<a type="button" class="seq-prev" aria-label="Previous"><span
						class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
						aria-label="Next"><span class="fa fa-angle-right"></span></a>
				</fieldset>
			</div>
		</div>
	</section>
	<!-- / slider -->
	<!-- Start Promo section -->
	<section id="aa-promo">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-promo-area">
						<div class="row">
							<!-- promo left -->
							<div class="col-md-5 no-padding">
								<div class="aa-promo-left">
									<div class="aa-promo-banner">
										<img src="<c:url value='/resources/img/fic2.jpg'/>" alt="img">
										<div class="aa-prom-content">
											<span>75% Off</span>
											<h4>
												<a href="#">Fiction</a>
											</h4>
										</div>
									</div>
								</div>
							</div>
							<!-- promo right -->
							<div class="col-md-7 no-padding">
								<div class="aa-promo-right">
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
<%-- 											<img src="<c:url value='/resources/img/c3.jpg'/>" alt="img"> --%>
											<div class="aa-prom-content">
												<span>Exclusive Item</span>
												<h4>
													<a href="#">For Childern</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img src="<c:url value='/resources/img/a2.jpg'/>" alt="img">
											<div class="aa-prom-content">
												<span>Sale Off</span>
												<h4>
													<a href="#">On Cooking Book</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img src="<c:url value='/resources/img/nonf4.jpg'/>"
												alt="img">
											<div class="aa-prom-content">
												<span>New Arrivals</span>
												<h4>
													<a href="#">Non-Fiction</a>
												</h4>
											</div>
										</div>
									</div>
									<div class="aa-single-promo-right">
										<div class="aa-promo-banner">
											<img src="<c:url value='/resources/img/his3.jpg'/>" alt="img">
											<div class="aa-prom-content">
												<span>25% Off</span>
												<h4>
													<a href="#">Biography</a>
												</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Promo section -->
	<!-- Products section -->
	<section id="aa-product">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="aa-product-area">
							<div class="aa-product-inner">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Products section -->
	<!-- Support section -->
	<section id="aa-support">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-support-area">
						<!-- single support -->
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="aa-support-single">
								<span class="fa fa-truck"></span>
								<h4>FREE SHIPPING</h4>
								<P>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quam, nobis.</P>
							</div>
						</div>
						<!-- single support -->
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="aa-support-single">
								<span class="fa fa-clock-o"></span>
								<h4>30 DAYS MONEY BACK</h4>
								<P>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quam, nobis.</P>
							</div>
						</div>
						<!-- single support -->
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="aa-support-single">
								<span class="fa fa-phone"></span>
								<h4>SUPPORT 24/7</h4>
								<P>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Quam, nobis.</P>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- / Support section -->
	<%@ include file="join2.jsp"%>


</body>
</html>
<%@ include file="footer.jsp"%>