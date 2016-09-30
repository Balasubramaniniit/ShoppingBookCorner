<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ThankYou</title>
<jsp:include page="header.jsp" />
<jsp:include page="join1.jsp" />

</head>
<body>
	<form ation="success">
		THANKYOU for buying our products<br>
		<details> <summary style="color:green">Delivery Details</summary>
		<div class="container" style="color:blue" >
			<div class="row">
				<div class="col-sm-12 col-md-10 col-md-offset-1">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Product</th>
								<th>Quantity</th>
								<th class="text-center">Price</th>
								<th class="text-center">Total</th>
								<th> </th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartshow}" var="cart">
								<tr>
									<td class="col-sm-8 col-md-6">
										<div class="media">
											<a class="thumbnail pull-left" href="#"> <img
												class="media-object"
												src="<c:url value="resources/upload/${cart.product.imagename}.jpg"/>"
												style="width: 100%; height: 100%;">
											</a>
											<div class="media-body">
												<h4 class="media-heading" style="color: white">
													<a href="index"> ${cart.product.productname}</a>
												</h4>

											</div>
										</div>
									</td>
									<td class="col-sm-1 col-md-1" style="text-align: center"><input
										type="text" class="form-control" id="exampleInputEmail1"
										value="${cart.quantity}"></td>
									<td class="col-sm-1 col-md-1 text-center"><strong>Rs${cart.product.productprice}</strong></td>
									<td class="col-sm-1 col-md-1 text-center"><strong>Rs${cart.totalPrice}</strong></td>
									</a></td>
								
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		</details>

	</form>
</body>
<jsp:include page="footer.jsp" />
<jsp:include page="join2.jsp" />

</html>