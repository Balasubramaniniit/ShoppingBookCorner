<%@include file="header.jsp"%>${product.productname}
<body>

<div class="container">
<c:forEach items="${productList}" var="product">
	<div class="row">
		<div class="col-md-6">
		
				<img src="<c:url value="/resources/upload/${product.imagename}.jpg"/>"
						class="img-responsive">
		<div class="col-md-6">
			<center><h1>${product.category}-${product.productname}</h1></center>
			<hr>
			<center><h3>RS${product.productprice}</h3></center>
			<hr>
			<div class="col-md-6">
				<a href="#" class="btn btn-default "> Buy</a>
			</div>
			<div class="col-md-6">
				<a href="<c:url value="/addtocart/${product.productid}"/>" class="btn btn-default"> <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12">
			<ul id="myTab" class="nav nav-tabs nav_tabs">
				<li class="active"><a href="#" data-toggle="tab">DESCRIPTION</a></li>
			
			</ul>
		</div>	
	</div>
	
	<div class="row">
		<div class="col-xs-12">					
			<ul>${product.productdescription}</ul>
			</div>
	</div>
</div>
</c:forEach>
</div>
<%@include file="footer.jsp"%>