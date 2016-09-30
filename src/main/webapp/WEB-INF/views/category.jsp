<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >
<html>
<head>
<title>Manage Categories</title>
</head>
<body>
	<!-- include navigation bar -->
	<%@ include file="header.jsp"%>

	<!-- Page Header -->
	<div class="row">
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
			<input type="button" class="btn btn-primary" value="BACK"
				onclick="javascript:history.back()" />
		</div>
		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
			<h1 class="page-header" style="text-align: center">
				Category <small></small>
			</h1>
		</div>
	</div>


	<form:form action="categories" method="POST">

		<hr>
							Id: 
				<p>
			<input type="text" id="name" name="Id">
			<tr>
				<td colspan="2"><form:errors path="Id"
						cssStyle="color : green;" /></td>
			</tr>

		</p>
		<hr>
						
							Name: 
				<p>
			<input type="text" id="name" name="Name">
			<tr>
				<td colspan="2"><form:errors path="Name"
						cssStyle="color : orange;" /></td>
			</tr>

		</p>
		<hr>
						
						Descripton	: 
				<p>
			<input type="text" id="name" name="Description">
			<tr>
				<td colspan="2"><form:errors path="Description"
						cssStyle="color : red;" /></td>
			</tr>

		</p>
		<td colspan="2" ><input type="submit" class="button"
					name="action" value="Add" style="color: black" /> <input
					type="submit" class="button" name="action" value="Edit"
					style="color: black" /></td>
	</form:form>
	<hr>
	<!-- include Footer -->
	<%@ include file="footer.jsp"%>
</body>
</html>