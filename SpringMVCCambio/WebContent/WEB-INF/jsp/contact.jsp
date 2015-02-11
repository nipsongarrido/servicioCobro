<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <title>Registro de Contacto</title>
</head>
<body>
<h2>Formulario Registro</h2>
<form:form method="post" action="addContact.html">
 
    <table>
    <tr>
        <td><form:label path="firstname"><spring:message code="label.firstname"/></form:label></td>
        <td><form:input path="firstname" required="required"/> <form:errors></form:errors></td> 
    </tr>
    <tr>
        <td><form:label path="lastname"><spring:message code="label.lastname"/></form:label></td>
        <td><form:input path="lastname" required="required"/></td>
    </tr>
    <tr>
        <td><form:label path="email"><spring:message code="label.email"/></form:label></td>
        <td><form:input path="email" required="required"/></td>
    </tr>
    <tr>
        <td><form:label path="telephone"><spring:message code="label.phone"/></form:label></td>
        <td><form:input path="telephone" /></td>
    </tr>
    <tr>
        <td><form:label path="address"><spring:message code="label.address"/></form:label></td>
        <td><form:input path="address" /></td>
    </tr>
    <tr>
        <td><form:label path="city"><spring:message code="label.city"/></form:label></td>
        <td><form:input path="city" /></td>
    </tr>
    <tr>
        <td><form:label path="twitter"><spring:message code="label.twitter"/></form:label></td>
        <td><form:input path="twitter" /></td>
    </tr>
    <tr>
        <td><form:label path="facebook"><spring:message code="label.facebook"/></form:label></td>
        <td><form:input path="facebook" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value=<spring:message code="label.addContact"/>/>
        </td>
    </tr>
</table>     
</form:form>

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

	<script>
	function validarNro(e) {
		var key;
		if(window.event) // IE
		{
			key = e.keyCode;
		}
		else if(e.which) // Netscape/Firefox/Opera
		{
		key = e.which;
		}
	if (key < 48 || key > 57)
	    {
	    if(key == 8) // Detectar . (punto) y backspace (retroceso)
	        { return true; }
	    else 
	        { return false; }
	    }
	return true;
	}
	</script>

</body>
</html>