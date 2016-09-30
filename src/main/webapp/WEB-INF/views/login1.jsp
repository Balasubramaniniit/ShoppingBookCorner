<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Login Form</title>
<jsp:include page="join1.jsp" />
<script type="text/javascript">
window.history.forward();
	function noBack() { window.history.forward(); }
</script>
<style type="text/css">
.button {
	border-radius: 5px;
	background-color: white;
	color: white;
	padding: 5px 4px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 3px 4px;
	cursor: pointer;
	border: 2px solid #4CAF50;
}
</style>

</head>
<body onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">

	<!-- wpf loader Two -->
<!-- 	<div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
 -->	<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>

	<div class="col-md-6">
		<div class="aa-myaccount-register">
			<h1>Login-www.BooKCorneR.com</h1>
			<form method="POST"
				action="<c:url value='j_spring_security_check' />">
				
				
				<p>
				User First Name:	
				<br><input   type="text" name="user_firstname" value=""
						placeholder="enter your firstname">
				</p>
				<hr>
				
				
				<p>
				Password:
				<br>	<input type="password" name="password" value=""
						placeholder="enter your password">
				</p>
				<hr>
				<pclass="button" class="submit">

					<input style="color: black" class="button" type="submit" name="login" value="Login">
				</p>
			</form>
		</div>
	</div>

	<jsp:include page="join2.jsp" />
</body>
</html>
<%@ include file="footer.jsp"%>