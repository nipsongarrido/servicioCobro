<%@page import="java.io.OutputStream"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
    <title>Registro de Contacto</title>
    <style type="text/css">
        body {
            font-family: verdana, sans-serif;           
        }
         
        span.campoConError {
            color: red;
        }
         
    </style> 
</head>
<body>
<h2>Formulario Modificacion</h2>
<table>
<% String con_antig= request.getParameter("firstname")+";"+request.getParameter("lastname")+
";"+request.getParameter("email")+";"+request.getParameter("telephone")+
";"+request.getParameter("address")+";"+request.getParameter("city")+
";"+request.getParameter("twitter")+";"+request.getParameter("facebook");
%>

 <form:form method="POST" action="updateContacto.html">
	<tr>
 		<td><label name="firstname"><spring:message code="label.firstname"/></label></td>
        <td><input name="firstname" value= "${contact.firstname}"/></td>
    </tr>
    <tr>
        <td><label name="lastname"><spring:message code="label.lastname"/></label></td>
        <td><input name="lastname" value= "${contact.lastname}" /></td>
    </tr>
    <tr>
        <td><label name="email"><spring:message code="label.email"/></label></td>
        <td><input name="email" value= "${contact.email}" /></td>
    </tr>
    <tr>
        <td><label name="telephone"><spring:message code="label.phone"/></label></td>
        <td><input name="telephone" value= "${contact.telephone}" /></td>
    </tr>
    <tr>
        <td><label name="address"><spring:message code="label.address"/></label></td>
        <td><input name="address" value= "${contact.address}"/></td>
    </tr>
    <tr>
        <td><label name="city"><spring:message code="label.city"/></label></td>
        <td><input name="city" value= "${contact.city}" /></td>
    </tr>
    <tr>
        <td><label name="twitter"><spring:message code="label.twitter"/></label></td>
        <td><input name="twitter" value= "${contact.twitter}"/></td>
    </tr>
    <tr>
        <td><label name="facebook"><spring:message code="label.facebook"/></label></td>
        <td><input name="facebook" value= "${contact.facebook}"/></td>
    </tr>
    <tr><input type="hidden" name="anterior" value="<%= con_antig%>"></tr>
    <tr>
    	<td colspan="2">
            <input type="submit" value=<spring:message code="label.edit"/>/>
        </td>
        
    </tr>
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
			

    </table>
</body>
</html>