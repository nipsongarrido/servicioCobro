<%@page import="java.io.OutputStream"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
	<title>Saludos</title>
</head>
<body>
	${message}
	<br></br>
	<form method="POST" action="menu.html">   
		<td><input type="hidden" name="firstname"></td>
		<td><input type="hidden" name="lastname"></td>
		<td><input type="hidden" name="email"></td>
		<td><input type="hidden" name="telephone"></td>
		<td><input type="hidden" name="address"></td>
		<td><input type="hidden" name="city"></td>
		<td><input type="hidden" name="twitter"></td>
		<td><input type="hidden" name="facebook"></td>
		<td><input type="submit" value=<spring:message code="label.back"/>/></td>
	</form>
</body>
</html>