<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <title>Registro de Contacto</title>
    
</head>
<body>
<h2>modificacion status</h2>
<form:form method="post" action="main.html">
    <table>
    
  	<tr>
        <td> modificacion correcta</td>         
        
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
    </tr>
</table>     
</form:form>
    
</body>
</html>