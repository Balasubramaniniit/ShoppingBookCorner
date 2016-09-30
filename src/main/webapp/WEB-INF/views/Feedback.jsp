<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@ include file="join1.jsp" %>

</head>
<body>
	<div class="col-md-6">
		<div class="aa-myaccount-register">
			<form action="contact" method="POST" enctype="multipart/form-data">
				<input name="action" value="submit" type="hidden"> Your
				name:<br> <input name="name" size="30" type="text"><br>
				Your email:<br> <input name="email" size="30" type="text"><br>
				Your message:<br>
				<textarea name="message" rows="7" cols="30">
    </textarea>
				<br> <input value="Send email" type="submit">
			</form>
		</div>
	</div>
	 <%@ include file="join2.jsp" %>
</body>
</html>
<%@include file="footer.jsp"%>