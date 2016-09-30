<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="join1.jsp"%>
<html>
<%-- <%@include file="header.jsp"%> --%>

<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

<script type="text/javascript">
	angular.module("myApp", []).controller('mainController',
			function($scope, $http) {

				console.log("wahts is this");
				$http({
					method : 'GET',
					url : 'ang'
				}).success(function(data, status, header, config) {
					$scope.productList = data;
					console.log("len" + productList.length);
					for (var c = 0; c < $scope.productList.length; c++) {
						var d = $scope.productList[c];
						console.log(d);
						console.log($scope.productList);
						return d;
					}

				});
			});
</script>
<style>
table {
	border-collapse: collapse;
	background-color: green;
	width: 65%;
	margin-top: 5px;
	border: 5px solid #DEA573;
}

th, td {
	text-align: center;
	font-family: CURSIVE;
	font-weight: bold;
	font-size: 16px;
	padding: 8px;
}
</style>
</head>
<body>
	<div>
		<div>
			<div ng-app="myApp" ng-controller="mainController"
				class="table-responsive">
				Search:<input type="text" value="Search" ng-model="test">
				<table style="border-style: ridge">
					<th>Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Description</th>
					<th>Image</th>
					<th></th>
					<tr ng-repeat="b in productList | filter:test ">
						<td>{{b.productname}}</td>
						<td>{{b.category}}</td>
						<td>RS:{{b.productprice}}</td>
						<td>{{b.productdescription}}</td>
						<td><img src="resources/upload/{{b.imagename}}.jpg"
							width="50" ,height="50"></td>
				<%-- <security:authorize access="hasAnyRole('ROLE_ANONYMOUS')">
									<div class="row">
										<div class="col-md-6">
											<a href="<c:url value='desc/{{b.productid}}'/>"
												class="btn btn-default ">view in detail</a>
										</div>
										<div class="col-md-6">
											<a href="addtocart/{{b.productid}}"
												class="btn btn-default"><span
												class="glyphicon glyphicon-shopping-cart"></span> Add to
												cart</a>
										</div>
									</div>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_USER')">
									<div class="row">
										<div class="col-md-6">
											<a href="<c:url value='desc/{{b.productid}}'/>"
												class="btn btn-default ">view in detail</a>
										</div>
										<div class="col-md-6">
											<a href="addtocart/{{b.productid}}" onClick="message()"
												class="btn btn-default"><span
												class="glyphicon glyphicon-shopping-cart"></span> Add to
												cart</a>
										</div>
									</div>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<div class="row">
										<div class="col-md-6">
											<a href="<c:url value='edit/{{b.productid}}'/>"
												class="btn btn-default "><span
												class="		glyphicon glyphicon-pencil"></span> edit</a>
										</div>

										<div class="col-md-6">
											<a href="<c:url value='delete/{{b.productid}}'/>"
												class="btn btn-default"><span
												class="	glyphicon glyphicon-trash"></span> Delete</a>
										</div>
									</div>
								</security:authorize>
 --%>
						<td><a href="<c:url value="/pv"/>">View in Detail</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="join2.jsp"%>
<%@include file="footer.jsp"%>
