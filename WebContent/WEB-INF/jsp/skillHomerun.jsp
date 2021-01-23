<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include  file="Header.jsp" %>  
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  %>
<style type="text/css">
.body{
	margin: 0;
	padding: 0;
	background: #ffffff url(garland_logo.gif) no-repeat left top;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #181B20;
}
</style>

<title></title>



</head>
<body style="height: 563px; " bgcolor="#ffffff">
  	



-------------------------------------------------


<br>
<c:forEach  var="custMap" items="${userme.userMap[0]}" >
<br>
<c:forEach var="abc" items="${custMap}" >
<br>
<tr>
 
		<td align="center">
		<font color="Red"> ${abc.key}</font></td>
 		<td align="center">
		<font color="Red"> ${abc.value}</font></td>

</tr>
</c:forEach>
</c:forEach>


</body>
</html>
