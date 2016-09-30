<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="header.jsp" />

<head>
<title>payment</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="join1.jsp" />
<%-- <link href="<c:url value='/resources/css/style123.css'/>"
	rel="stylesheet"> --%>
</head>
<body>
	<%-- 

	
			<div class="personal-information">
				<h1>Payment Information</h1>
			</div>

			<form>
				<!-- end of personal-information -->
				

					<input id="column-left" type="text" name="city" required="required"
						maxlength="20" placeholder="City" />
						<br/>
						 <input id="column-right"
						type="text" name="zipcode" required="required" autocomplete="on"
						pattern="[0-9]*" maxlength="5" placeholder="ZIP code" />
						<br/> 
						<input
						id="input-field" type="email" name="email" required="required"
						autocomplete="on" maxlength="40" placeholder="Email" />
						<br/>
						 <input
						id="column-left" type="text" name="firstname"
						placeholder="First Name" />
						<br/>
						 <input id="column-right" type="text"
						name="lastname" placeholder="Surname" /><br/>
						 <input id="input-field"
						type="text" name="number" placeholder="Card Number" /><br/>
						 <input
						id="column-left" type="text" name="expiry" placeholder="MM / YY" /><br/>
					<input id="column-right" type="text" name="cvc" placeholder="CCV" />
					<br/>
					

				
			</form>
			<a href="<c:url value="success"/>"><button type="button"
					class="btn btn-success">Submit</button></a>

		
</body>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/card.js'></script>
<script
	src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/jquery.card.js'></script>

<script src="<c:url value='/resources/js/index.js'/>"></script>
 --%>
	<h1></h1><center>Payment Slot</center></h1>
	<h1>Only Cash On Delivery Available In Our Website</h1>
	<form:form method="POST" modelAttribute="shippingdetails">
		<input 
			class="btn btn-md btn-success btn-block signup-btn"
			name="_eventId_submit" type="submit" value="Submit">
	</form:form>
	</body>
	<jsp:include page="footer.jsp" />
	<jsp:include page="join2.jsp" />
</html>

