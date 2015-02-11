<%@page import="spring3.form.ListaObjetos"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Contactos</title>
</head>
<body>
<h2>Registros Ingresados</h2>
<table width="50%">
    <tr>
        <th><spring:message code="label.firstname"/></th>
        <th><spring:message code="label.lastname"/></th>
        <th><spring:message code="label.email"/></th>
        <th><spring:message code="label.phone"/></th>
        <th><spring:message code="label.address"/></th>
        <th><spring:message code="label.city"/></th>
        <th><spring:message code="label.twitter"/></th>
        <th><spring:message code="label.facebook"/></th>
        
    </tr>
    <c:forEach items="${contactForm.contacts}" var="contact" varStatus="status">
        <tr>
            <td class="firstname">${contact.nombre}</td>
            <td class="lastname">${contact.apellido}</td>
            <td class="email">${contact.mail}</td>
            <td class="telephone">${contact.telefono}</td>
            <td class="address">${contact.direccion}</td>
            <td class="city">${contact.comuna}</td>
            <td class="twitter">${contact.twitter}</td>
            <td class="facebook">${contact.facebook}</td>
            <td>
	            <form:form method="POST" action="premod.html">   
					<input type="hidden" name="firstname" value="${contact.nombre}">
					<input type="hidden" name="lastname" value="${contact.apellido}">
					<input type="hidden" name="email" value="${contact.mail}">
					<input type="hidden" name="telephone" value="${contact.telefono}">
					<input type="hidden" name="address" value="${contact.direccion}">
					<input type="hidden" name="city" value="${contact.comuna}">
					<input type="hidden" name="twitter" value="${contact.twitter}">
					<input type="hidden" name="facebook" value="${contact.facebook}">
					<input type="submit" value=<spring:message code="label.edit"/>/>             
				</form:form>
			</td>
			<td> 
				<form:form method="POST" action="deleteContact.html">   
					<input type="hidden" name="firstname" value="${contact.nombre}">
					<input type="hidden" name="lastname" value="${contact.apellido}">
					<input type="hidden" name="email" value="${contact.mail}">
					<input type="hidden" name="telephone" value="${contact.telefono}">
					<input type="hidden" name="address" value="${contact.direccion}">
					<input type="hidden" name="city" value="${contact.comuna}">
					<input type="hidden" name="twitter" value="${contact.facebook}">
					<input type="hidden" name="facebook" value="${contact.facebook}">
					<input type="submit" value=<spring:message code="label.delete"/>/>
				</form:form>
			</td>
        </tr>
    </c:forEach>
    <tr>
   	
		<form:form method="POST" action="show.html">   
			<td><input type="text" name="firstname"></td>
			<td><input type="text" name="lastname"></td>
			<td><input type="text" name="email"></td>
			<td><input type="text" name="telephone"></td>
			<td><input type="text" name="address"></td>
			<td><input type="text" name="city"></td>
			<td><input type="text" name="twitter"></td>
			<td><input type="text" name="facebook"></td>
			<td><input type="submit" value=<spring:message code="label.filter"/>/></td>
		</form:form>
	</tr>
	
</table>  
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