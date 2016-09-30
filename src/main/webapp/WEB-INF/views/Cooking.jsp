<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Font awesome -->
<link href="<c:url value='/resources/css/font-awesome.css'/>"
	rel="stylesheet">
<!-- Bootstrap -->
<link href="<c:url value='/resources/css/bootstrap.css'/>"
	rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link
	href="<c:url value='/resources/css/jquery.smartmenus.bootstrap.css'/>"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/jquery.simpleLens.css'/>">
<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/slick.css'/>">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/nouislider.css'/>">
<!-- Theme color -->
<link id="switcher"
	href="<c:url value='/resources/css/theme-color/default-theme.css'/>"
	rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<!-- Top Slider CSS -->
<link
	href="<c:url value='/resources/css/sequence-theme.modern-slide-in.css'/>"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link href="<c:url value='/resources/css/style.css'/>" rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<form action="productsdetail" />
	<section id="aa-catg-head-banner"> <img
		src="<c:url value='/resources/img/co2.jpg'/>" alt="fashion img">
	<div class="aa-catg-head-banner-area">
		<div class="container">
			<div class="aa-catg-head-banner-content">
				<h2>T-Shirt</h2>
				<ol class="breadcrumb">
					<li><a href="home">Home</a></li>
					<li><a href="products">Product</a></li>
					<li class="active">Cooking</li>
				</ol>
			</div>
		</div>
	</div>
	</section>

	<section id="aa-product-details">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-product-details-area">
					<div class="aa-product-details-content">
						<div class="row">
							<!-- Modal view slider -->
							<div class="col-md-5 col-sm-5 col-xs-12">
								<div class="aa-product-view-slider">
									<div id="demo-1" class="simpleLens-gallery-container">
										<div class="simpleLens-container">
											<div class="simpleLens-big-image-container">
												<a data-lens-image="img/view-slider/large/polo-shirt-1.png"
													class="simpleLens-lens-image"><img
													src="<c:url value='/resources/img/b3.jpg'/>"
													class="simpleLens-big-image"></a>
											</div>
										</div>
										<div class="simpleLens-thumbnails-container">
											<a data-big-image="img/view-slider/medium/polo-shirt-1.png"
												data-lens-image="img/view-slider/large/polo-shirt-1.png"
												class="simpleLens-thumbnail-wrapper" href="#"> <img
												src="img/view-slider/thumbnail/polo-shirt-1.png">
											</a> <a data-big-image="img/view-slider/medium/polo-shirt-3.png"
												data-lens-image="img/view-slider/large/polo-shirt-3.png"
												class="simpleLens-thumbnail-wrapper" href="#"> <img
												src="img/view-slider/thumbnail/polo-shirt-3.png">
											</a> <a data-big-image="img/view-slider/medium/polo-shirt-4.png"
												data-lens-image="img/view-slider/large/polo-shirt-4.png"
												class="simpleLens-thumbnail-wrapper" href="#"> <img
												src="<c:url value='/resources/img/b4.jpg'/>">
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal view content -->
							<div class="col-md-7 col-sm-7 col-xs-12">
								<div class="aa-product-view-content">
									<h3>T-Shirt</h3>
									<div class="aa-price-block">
										<span class="aa-product-view-price">$34.99</span>
										<p class="aa-product-avilability">
											Avilability: <span>In stock</span>
										</p>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Officiis animi, veritatis quae repudiandae quod nulla
										porro quidem, itaque quis quaerat!</p>
								</div>
							</div>
						</div>
					</div>
					<div class="aa-prod-quantity">
						<form action="">
							<select id="" name="">
								<option selected="1" value="0">1</option>
								<option value="1">2</option>
								<option value="2">3</option>
								<option value="3">4</option>
								<option value="4">5</option>
								<option value="5">6</option>
							</select>
						</form>
						<p class="aa-prod-category">
							Category: <a href="#">Polo T-Shirt</a>
						</p>
					</div>
					<div class="aa-prod-view-bottom">
						<a class="aa-add-to-cart-btn" href="#">Add To Cart</a> <a
							class="aa-add-to-cart-btn" href="#">Wishlist</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="aa-product-details-bottom">
		<ul class="nav nav-tabs" id="myTab2">
			<li><a href="#description" data-toggle="tab">Description</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane fade in active" id="description">
				<p>Lorem Ipsum is simply dummy text of the printing and
					typesetting industry. Lorem Ipsum has been the industry's standard
					dummy text ever since the 1500s, when an unknown printer took a
					galley of type and scrambled it to make a type specimen book. It
					has survived not only five centuries, but also the leap into
					electronic typesetting, remaining essentially unchanged. It was
					popularised in the 1960s with the release of Letraset sheets
					containing Lorem Ipsum passages, and more recently with desktop
					publishing software like Aldus PageMaker including versions of
					Lorem Ipsum.</p>
				<ul>
					<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quod, culpa!</li>
					<li>Lorem ipsum dolor sit amet.</li>
					<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>
					<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Dolor qui eius esse!</li>
					<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Quibusdam, modi!</li>
				</ul>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Illum, iusto earum voluptates autem esse molestiae ipsam, atque
					quam amet similique ducimus aliquid voluptate perferendis,
					distinctio!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Blanditiis ea, voluptas! Aliquam facere quas cumque rerum dolore
					impedit, dicta ducimus repellat dignissimos, fugiat, minima quaerat
					necessitatibus? Optio adipisci ab, obcaecati, porro unde
					accusantium facilis repudiandae.</p>
			</div>
			<p>Your Rating</p>
			<a href="#"><span class="fa fa-star-o"></span></a> <a href="#"><span
				class="fa fa-star-o"></span></a> <a href="#"><span
				class="fa fa-star-o"></span></a> <a href="#"><span
				class="fa fa-star-o"></span></a> <a href="#"><span
				class="fa fa-star-o"></span></a>
		</div>
		<!-- review form -->
	</div>
	<!-- Related product -->
	<div class="aa-product-related-item">
		<h3>Related Products</h3>
		<ul class="aa-product-catg aa-related-item-slider">
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="img/man/polo-shirt-2.png" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Book Store</a>
				</h4>
				<span class="aa-product-price">$45.50</span> <span
					class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div> <!-- product badge --> <span class="aa-badge aa-sale" href="#">SALE!</span>
			</li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/b2.jpg'/>" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Lorem ipsum doller</a>
				</h4>
				<span class="aa-product-price">$45.50</span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div> <!-- product badge --> <span class="aa-badge aa-sold-out" href="#">Sold
					Out!</span></li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/b1.jpg'/>"alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> </figure> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Books</a>
				</h4>
				<span class="aa-product-price">$45.50</span> </figcaption>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div> <!-- product badge --> <span class="aa-badge aa-hot" href="#">HOT!</span>
			</li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/c3.jpg'/>" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Lorem ipsum doller</a>
				</h4>
				<span class="aa-product-price">$45.50</span> <span
					class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div></li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/c4.jpg'/>" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Cooking</a>
				</h4>
				<span class="aa-product-price">$45.50</span> <span
					class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div></li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/c5.jpg'/>" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Lorem ipsum doller</a>
				</h4>
				<span class="aa-product-price">$45.50</span> <span
					class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div> <!-- product badge --> <span class="aa-badge aa-sold-out" href="#">Sold
					Out!</span></li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/c2.jpg'/>" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Cooking</a>
				</h4>
				<span class="aa-product-price">$45.50</span> <span
					class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div> <!-- product badge --> <span class="aa-badge aa-hot" href="#">HOT!</span>
			</li>
			<!-- start single product item -->
			<li><figure> <a class="aa-product-img" href="#"><img
					src="<c:url value='/resources/img/e3.jpg'/>" alt="polo shirt img"></a> <a
					class="aa-add-card-btn" href="#"><span
					class="fa fa-shopping-cart"></span>Add To Cart</a> <figcaption>
				<h4 class="aa-product-title">
					<a href="#">Engineering</a>
				</h4>
				<span class="aa-product-price">$45.50</span> <span
					class="aa-product-price"><del>$65.50</del></span> </figcaption> </figure>
				<div class="aa-product-hvr-content">
					<a href="#" data-toggle="tooltip" data-placement="top"
						title="Add to Wishlist"><span class="fa fa-heart-o"></span></a> <a
						href="#" data-toggle="tooltip" data-placement="top"
						title="Compare"><span class="fa fa-exchange"></span></a> <a
						href="#" data-toggle2="tooltip" data-placement="top"
						title="Quick View" data-toggle="modal"
						data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
				</div> <!-- product badge --> <span class="aa-badge aa-sale" href="#">SALE!</span>
			</li>
		</ul>
		<!-- quick view modal -->
		<div class="modal fade" id="quick-view-modal" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<div class="row">
							<!-- Modal view slider -->
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="aa-product-view-slider">
									<div class="simpleLens-gallery-container" id="demo-1">
										<div class="simpleLens-container">
											<div class="simpleLens-big-image-container">
												<a class="simpleLens-lens-image"
													data-lens-image="<c:url value='/resources/img/e5.jpg'/>">
													<img src="<c:url value='/resources/img/e5.jpg'/>"
													class="simpleLens-big-image">
												</a>
											</div>
										</div>
										<div class="simpleLens-thumbnails-container">
											<a href="#" class="simpleLens-thumbnail-wrapper"
												data-lens-image="<c:url value='/resources/img/e3.jpg'/>"
												data-big-image="<c:url value='/resources/img/e3.jpg'/>">
												<img src="<c:url value='/resources/img/e3.jpg'/>">
											</a> <a href="#" class="simpleLens-thumbnail-wrapper"
												data-lens-image="<c:url value='/resources/img/e2.jpg'/>"
												data-big-image="<c:url value='/resources/img/e2.jpg'/>">
	
											</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Modal view content -->
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="aa-product-view-content">
									<h3>Cooking</h3>
									<div class="aa-price-block">
										<span class="aa-product-view-price">$34.99</span>
										<p class="aa-product-avilability">
											Avilability: <span>In stock</span>
										</p>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Officiis animi, veritatis quae repudiandae quod nulla
										porro quidem, itaque quis quaerat!</p>
									<h4>Size</h4>
									<div class="aa-prod-view-size">
										<a href="#">S</a> <a href="#">M</a> <a href="#">L</a> <a
											href="#">XL</a>
									</div>
									<div class="aa-prod-quantity">
										<form action="">
											<select name="" id="">
												<option value="0" selected="1">1</option>
												<option value="1">2</option>
												<option value="2">3</option>
												<option value="3">4</option>
												<option value="4">5</option>
												<option value="5">6</option>
											</select>
										</form>
										<p class="aa-prod-category">
											Category: <a href="#">Polo T-Shirt</a>
										</p>
									</div>
									<div class="aa-prod-view-bottom">
										<a href="#" class="aa-add-to-cart-btn"><span
											class="fa fa-shopping-cart"></span>Add To Cart</a> <a href="#"
											class="aa-add-to-cart-btn">View Details</a>
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
	</form>
</body>
</html>
<%@ include file="footer.jsp"%>