<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<!-- Font awesome -->
<%@ include file="join1.jsp"%>
<style type="text/css">
.button {
	border-radius: 8px;
	background-color: white;
	color: white;
	padding: 10px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin: 6px 3px;
	cursor: pointer;
	border: 2px solid #4CAF50;
}
</style>

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
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>

	<div class="col-md-6">
		<div class="aa-myaccount-register">

			<h3>Product Data</h3>

			<form:form action="products" method="POST"
				enctype="multipart/form-data" commandName="product">
				<%-- Product Id:
							<p>
					<input type="text" id="name" name="productid">
					<td colspan="2"><form:errors path="productname"
							cssStyle="color : blue;" /></td>
				</p>
 --%>
				<hr>
							Name: 
				<p>
					<input type="text" id="name" name="productname">
					<tr>
						<td colspan="2"><form:errors path="productname"
								cssStyle="color : green;" /></td>
					</tr>

				</p>
				<hr>
						
							Quantity: 
				<p>
					<input type="text" id="name" name="productquantity">
					<tr>
						<td colspan="2"><form:errors path="productquantity"
								cssStyle="color : orange;" /></td>
					</tr>

				</p>
				<hr>
						
							Price: 
				<p>
					<input type="text" id="name" name="productprice">
					<tr>
						<td colspan="2"><form:errors path="productprice"
								cssStyle="color : red;" /></td>
					</tr>

				</p>
				<hr>
							Description: 
				<p>

					<input type="text" id="name" name="productdescription">
					<tr>
						<td colspan="2"><form:errors path="productdescription"
								cssStyle="color : grey;" /></td>
					</tr>

				</p>
				<hr>
							Image:
							<p>
					<input type="file"  id="name" name="image" style="width: 30%; height: 30%; ">
				</p>
				<hr>
							ImageName: 
					<p>
					<input type="text" id="name" name="imagename">
					<tr>
						<td colspan="2"><form:errors path="imagename" 
								cssStyle="color : puple;" /></td>
					</tr>
				</p>
				<hr>
							Category:
					<%-- 	<p>
						<input type="text" id="name" name="category">
						
						<form:select path="category" >
							<form:option value="NONE" label="--- Select ---" />
							<form:options items="${categoryList}" itemValue="name"
								itemLabel="name" />
						</form:select>
						<form:errors path="category" class="err" />
			 --%>	<form:select path="category" >
				<form:option selected="comics" value="comics">Comics</form:option>
				<form:option value="historical">Historical</form:option>
				<form:option value="biography">Biography</form:option>
				<form:option value="cooking">Cooking</form:option>
				<form:option value="engineering">Engineering</form:option>
				<form:option value="art">Art</form:option>
				</form:select>

				<hr>
				<td colspan="2" class="h"><input type="submit" class="button"
					name="action" value="Add" style="color: black" /> <!-- <input
					type="submit" class="button" name="action" value="Edit"
					style="color: black" /> --></td>
			</form:form>

			<input type="button" style="color: black" class="button" value="Back"
				onclick="javascript:history.back()" />
		</div>
	</div>
	<%@ include file="join2.jsp"%>
</body>
</html>
<%@include file="footer.jsp"%>