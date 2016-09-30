<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShowAll</title>
</head>
<%@ include file="header.jsp"%>
<body>
	<!-- wpf loader Two --><!-- 
	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div> -->
		<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<section id="aa-product-category">
	<div class="container">
		<div class="row">
			<c:forEach items="${productList}" var="product">
				<div class="col-xs-3">
					<div class="thumbnail">
						<div class="aa-product-catg-content">
							<div class="aa-product-catg-body">

								<a href="index"><img
									src="<c:url value="resources/upload/${product.imagename}.jpg"/>"></a>
								<security:authorize access="hasAnyRole('ROLE_ANONYMOUS')">
									<div class="row">
										<div class="col-md-6">
											<a href="<c:url value='desc/${product.productid}'/>"
												class="btn btn-default ">view in detail</a>
										</div>
										<div class="col-md-6">
											<a href="user/addtocart/${product.productid}"
												class="btn btn-default"><span
												class="glyphicon glyphicon-shopping-cart"></span> Add to
												cart</a>
										</div>
									</div>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_USER')">
									<div class="row">
										<div class="col-md-6">
											<a href="<c:url value='/pv'/>"
												class="btn btn-default ">view in detail</a>
										</div>
										<div class="col-md-6">
											<a href="addtocart/${product.productid}" onClick="message()"
												class="btn btn-default"><span
												class="glyphicon glyphicon-shopping-cart"></span> Add to
												cart</a>
										</div>
									</div>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<div class="row">
										<div class="col-md-6">
											<a href="<c:url value='edit/${product.productid}'/>"
												class="btn btn-default "><span
												class="		glyphicon glyphicon-pencil"></span> edit</a>
										</div>

										<div class="col-md-6">
											<a href="<c:url value='delete/${product.productid}'/>"
												class="btn btn-default"><span
												class="	glyphicon glyphicon-trash"></span> Delete</a>
										</div>
									</div>
								</security:authorize>
								<figcaption>
								<h4 class="aa-product-title">
									<center>
										<h2>${product.productname}</h2>
									</center>
								</h4>
								<center><span class="aa-product-price">RS.${product.productprice}</span></center> </figcaption>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
	</section>

</body>
<%@ include file="footer.jsp"%>
</html>