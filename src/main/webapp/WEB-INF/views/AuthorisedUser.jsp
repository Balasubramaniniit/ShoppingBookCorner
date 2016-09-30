<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AuthorisedUser</title>
</head>
<body>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<form:form modelAttribute="authform" action="register" method="POST" >
		<table>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td> RoleId :</td>
				<td><form:input type="text" path="RoleId"/></td>
			</tr>
			<tr>
				<td>RoleName :</td>
				<td><form:input path="RoleName"  /></td>
			</tr>
			<tr>
				<td>UserId :</td>
				<td><form:input path="UserId" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Click" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>