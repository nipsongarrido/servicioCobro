<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${mensaje}</title>
</head>
<body>
	<h2>Menu</h2>


	<form:form method="POST" action="contact.html">   
		<input type="hidden" name="firstname" value="${contact.firstname}">
		<input type="hidden" name="lastname" value="${contact.lastname}">
		<input type="hidden" name="email" value="${contact.email}">
		<input type="hidden" name="telephone" value="${contact.telephone}">
		<input type="hidden" name="address" value="${contact.address}">
		<input type="hidden" name="city" value="${contact.city}">
		<input type="hidden" name="twitter" value="${contact.twitter}">
		<input type="hidden" name="facebook" value="${contact.facebook}">
		<input type="submit" value=<spring:message code="label.addContact"/>/>
	</form:form>
	
	<form:form method="POST" action="show.html">   
		<input type="hidden" name="firstname" value="${contact.firstname}">
		<input type="hidden" name="lastname" value="${contact.lastname}">
		<input type="hidden" name="email" value="${contact.email}">
		<input type="hidden" name="telephone" value="${contact.telephone}">
		<input type="hidden" name="address" value="${contact.address}">
		<input type="hidden" name="city" value="${contact.city}">
		<input type="hidden" name="twitter" value="${contact.twitter}">
		<input type="hidden" name="facebook" value="${contact.facebook}">
		<input type="submit" value=<spring:message code="label.show"/>/>
	</form:form>
	
	<form:form method="POST" action="menu.html?lang=en">   
		<input type="submit" value=<spring:message code="label.english"/>/>
	</form:form>
	<form:form method="POST" action="menu.html?lang=es">   
		<input type="submit" value=<spring:message code="label.spanish"/>/>
	</form:form>


</body>
</html>