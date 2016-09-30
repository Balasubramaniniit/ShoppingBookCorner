<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign Up</title>
<style type="text/css">
.button {
	border-radius: 8px;
	background-color: white;
	color: white;
	padding: 6px 5px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 30px;
	margin: 4px 3px;
	cursor: pointer;
	border: 2px solid #4CAF50;
}
</style>
<script type="text/javascript">
	function myFunction() {
		var pass1 = document.getElementById("password").value;
		var pass2 = document.getElementById("confirm_password").value;
		if (pass1 != pass2) {
			alert("Passwords Do not match");
			return false;
		}

		return true;
	}
</script>
<%@ include file="join1.jsp"%>

</head>
<body>
	<!-- wpf loader Two -->
	<!-- <div id="wpf-loader-two">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	/ wpf loader Two
	SCROLL TOP BUTTON
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
 -->
	<div class="col-md-6">
		<div class="aa-myaccount-register">
			<h1>SignUp-www.BooKCorneR.com</h1>
			<form:form modelAttribute="userDetails" accept-charset="utf-8"
				class="form" role="form">
				<form:errors path="*" cssClass="errorblock" element="div" />
				<p></p>
							FirstName:
							<form:input path="user_firstname" pattern="[a-zA-Z]{3,30}"
					required="true" class="form-control input-lg"
					placeholder="First Name" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('user_firstname')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
							LastName:
							<form:input path="user_lastname" pattern="[a-zA-Z]{3,30}"
					required="true" class="form-control input-lg"
					placeholder="Last Name" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('user_lastname')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
						E-mail:
						<form:input path="mail_id"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
					class="form-control input-lg" placeholder=" Email" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mail_id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<br />

						Moblie-Number:
						<form:input path="mobile_number" pattern="[9|7|8][0-9]{9}"
					required="true" class="form-control input-lg"
					placeholder=" Mobile Number" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile_number')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />

						Password:
						<form:password path="password" pattern=".{5,10}" required="true"
					class="form-control input-lg" placeholder="Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
						Confirm Password:
						<form:password path="confirm_password" pattern=".{5,10}"
					required="true" class="form-control input-lg"
					placeholder="Confirm Password" />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('confirm_password')}"
					var="err">
					<div>
						<span>${err.text}</span>
				</c:forEach>
				<br />
				<button class="btn btn-lg btn-primary btn-block signup-btn"
					class="button" name="_eventId_submit" type="submit" value="submit"
					onclick="return myFunction()">Create Account</button>
			</form:form>
			<input type="button" class="button" style="color: black" value="back"
				onclick="javascript:history.back()" />
		</div>
	</div>

	<%@ include file="join2.jsp"%>

</body>
</html>
<%@ include file="footer.jsp"%>