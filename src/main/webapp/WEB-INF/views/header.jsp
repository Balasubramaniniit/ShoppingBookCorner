<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>www.BooKCorneR.com</title>
<%@ include file="join1.jsp"%><style
	type="text/css">
.icon-wrapper {
	position: relative;
	float: left;
}

*.icon-blue {
	color: #0088cc
}

*.icon-grey {
	color: grey
}

i {
	width: 100px;
	text-align: center;
	vertical-align: middle;
}

.badge {
	background: rgba(0, 0, 0, 0.5);
	width: auto;
	height: auto;
	margin: 0;
	border-radius: 50%;
	position: absolute;
	top: -13px;
	right: -8px;
	padding: 5px;
}
</style>
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>
<script type="text/javascript">
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		// add a zero in front of numbers<10
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
		t = setTimeout('startTime()', 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i;
		}
		return i;
	}
</script>

<c:url value='logout' var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm"></form>
</head>
<body onload="startTime()">
	<!-- wpf loader Two -->
<!-- 	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	/ wpf loader Two
	SCROLL TOP BUTTON
 -->

	<header id="aa-header"> <!-- start header top  -->
	<div class="aa-header-top">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-top-area">
						<!-- start header top left -->
						<div class="aa-header-top-left">
							<!-- start language -->
							<div class="aa-language">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> <img
										src="<c:url value='/resources/img/flag/english.jpg'/>"
										alt="english flag">ENGLISH <span class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><img
												src="<c:url value='/resources/img/flag/french.jpg'/>" alt="">FRENCH</a></li>
										<li><a href="#"><img
												src="<c:url value='/resources/img/flag/english.jpg'/>"
												alt="">ENGLISH</a></li>
									</ul>
								</div>
							</div>
							<!-- / language -->

							<!-- start currency -->
							<div class="aa-currency">
								<div class="dropdown">
									<a class="btn dropdown-toggle" href="#" type="button"
										id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> <i class="fa fa-usd"></i>USD <span
										class="caret"></span>
									</a>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
										<li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
									</ul>
								</div>
							</div>
							<!-- / currency -->
							<!-- start cellphone -->
							<div class="cellphone hidden-xs">
								<p>
									<span class="fa fa-phone"></span>84-38-46-97-99
								</p>
							</div>
							<!-- / cellphone -->
						</div>
						<!-- / header top left -->
						<div class="aa-header-top-right">
							<ul class="aa-head-top-nav-right">
								<li><a href="account.html">My Account</a></li>
								<li class="hidden-xs"><a href="cart.html">My Cart</a></li>
								<li><a href="<c:url value="user/Angularview"/>">ViewAll</a></li>
								<li class="hidden-xs"><a href="<c:url value='context'/>">FeedBack</a></li>
								<li class="hidden-xs"><a href="contact">Contact</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- / header top  --> <!-- start header bottom  -->
	<div class="aa-header-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-bottom-area">
						<!-- logo  -->
						<div class="aa-logo">
							<!-- Text based logo -->
							<a href="home"> <span class="fa fa-shopping-cart"></span>
								<p>
									daily<strong> Book Shop</strong> <span>Shopping Paradise</span>
								</p>
							</a>
							<!-- img based logo -->
							<!-- <a href="index.html"><img src="<c:url value='/resources/img/logo.jpg'/>" alt="logo img"></a> -->
						</div>
						<!-- / logo  -->
						<!-- cart box -->

						<div>
							<div id="txt"></div>
						</div>
						<div class="aa-cartbox">
							<a class="aa-cart-link" > <span
								class="fa fa-shopping-basket"></span> <span
								class="aa-cart-title">SHOPPING Book</span> <span
								class="aa-cart-notify">${crt}</span>
							</a>
						</div>

						<!-- / cart box -->
						<!-- search box -->
						<div class="aa-search-box">
							<form action="">
								<!-- <input type="text" name="" id=""
									placeholder="Search here ex. 'cooking' ">
								<button type="submit">
									<span class="fa fa-search"></span>
								</button> -->
							</form>
						</div>
						<!-- / search box -->
					</div>

				</div>
			</div>
		</div>
	</div>

	</div>
	<!-- / header bottom  --> </header>
	<!-- menu -->
	<section id="menu">
	<div class="container">
		<div class="menu-area">
			<!-- Navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<!-- Left nav -->
					<ul class="nav navbar-nav">
						<li><a href="home">Home</a></li>
						<li><a href="#">Categories <span class="caret"></span></a>
							<ul class="dropdown-menu">

								<li><a href="literature">Literature</a></li>
								<li><a href="comics">Comics</a></li>
								<li><a href="cooking">Cooking</a></li>
								<li><a href="engineering">Engineering</a></li>
								<li><a href="biography">Biography</a></li>
								<li><a href="economics">Economics</a></li>
								<li><a href="historical">Historical</a></li>
								<li><a href="sciences">Sciences</a></li>
							</ul></li>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="<c:url value="/categories"/>"
								style="color: white">Category</a></li>

							<li><a href="<c:url value="/products"/>"
								style="color: white">+Product</a></li>
							<li class="hidden-xs"><a href="viewall">Showall</a></li>
							<li><a href="<c:url value="Angularview"/>">ViewAll</a></li>
						</security:authorize>
						<c:if test="${!empty pageContext.request.userPrincipal.name}">
							<li><a href="<c:url value="/home"/>" style="color: white">
									<span class="glyphicon glyphicon-user"></span>Welcome..${pageContext.request.userPrincipal.name}
							</a></li>
							<security:authorize access="hasRole('ROLE_USER')">
								<li><a href="<c:url value="Angularview"/>">ViewAll</a></li>
								<li><a href="cart" style="color: white"><span
										class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
								<li class="hidden-xs"><a href="viewall">Showall</a></li>
							</security:authorize>
							<li><a href="javascript:formSubmit()" style="color: white"><span
									class="glyphicon glyphicon-log-out"></span>Logout</a></li>
						</c:if>

						<c:if test="${empty pageContext.request.userPrincipal.name}">
							<li><a href="<c:url value="/cart"/>"
								style="color: white"><span
									class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
							<li><a href="<c:url value="/memberShip.obj"/>"
								style="color: white"><span class="glyphicon glyphicon-user"></span>
									Sign Up</a></li>
							<li><a href="login1" style="color: white"><span
									class="glyphicon glyphicon-log-in"></span> Login</a></li>
						</c:if>
				</div>

				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	</section>


	<!-- / header section -->
	<%@ include file="join2.jsp"%>

</body>
</html>