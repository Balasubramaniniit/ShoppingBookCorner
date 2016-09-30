<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Cart</title>
<%@ include file="join1.jsp"%>


</head>
<body>

	<!-- wpf loader Two -->
	<!-- <div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div> -->
	<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<!-- 	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a> -->
	<!-- END SCROLL TOP BUTTON -->

	<!-- Cart view section -->
	<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
						<form action="">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>Action</th>
											<th>Picture</th>
											<th>Product</th>
											<th>Quantity</th>
											<th>Price</th>
											<th>Total</th>
										</tr>
										</thead>
									<tbody>
										<c:set var="total" value="0"></c:set>
										<c:forEach items="${cartshow}" var="cart">
											<tr>
												<td><a
													href="<c:url value="/delete/cart/${cart.cartItemId}"/>"
													class="btn btn-danger"> Remove </a></td>
												<td><div>

														<img
															src="<c:url value="resources/upload/${cart.product.imagename}.jpg"/>"
															style="width: 30%; height: 30%;">	

													</div></td>
												<td class="col-sm-1 col-md-1 text-center"><div>
														<h4 style="color: blue">
															<a href="index"> ${cart.product.productname} </a>
														</h4>

													</div></td>
												<td class="col-sm-1 col-md-1 text-center"><strong>${cart.quantity}</strong></td>
												<td class="col-sm-1 col-md-1 text-center"><strong>${cart.product.productprice}</strong></td>
												<td class="col-sm-1 col-md-1 text-center"><strong>${cart.totalPrice}</strong></td>
											</tr>
											<c:set  var="total"
												value="${total+cart.totalPrice}"></c:set>
										</c:forEach>
										<tr>
											<td align="left" colspan="5">GrandTotal</td><td>${total}</td>
										</tr>
									</tbody>
								</table>
								<tr>
									<td> </td>
									<td> </td>
									<td></td>
									<%-- <td class="col-sm-1 col-md-1 text-center"><strong>${cart.granttotal}</strong></td>
									 --%>
									<td></td>
									<td></td>
								</tr>

								<tr>
									<td><a href="<c:url value="home"/>" class="aa-cart-coupon">Continue
											Shopping <span class="glyphicon glyphicon-shopping-cart"></span>

									</a></td>
									<c:choose>
									<c:when test="${total!='0'}">

									<td><a href="<c:url value="/shipment.obj"/>"
										class="aa-cart-view-btn"> Checkout <span
											class="glyphicon glyphicon-play"></span>
									</a></td>
									</c:when>
									</c:choose>
								</tr>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

</body>
</html>
