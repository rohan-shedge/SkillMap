<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="java.util.List" %>
<%@ page import="java.util.Set" %>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="Header.jsp"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
.body{
margin: 0;
padding: 0;
background: #FFFACD url(garland_logo.gif) no-repeat left top;
font-family: vardana, Helvetica, sans-serif;
font-size: 14px;
color: #556B2F   ;
}
</style>

<title>Skill Map</title>
</head>
<body class="body">
  	
   
<!--upper Main Table(You can define padding accordingly) -->
<table width="100%" border="1" cellspacing="0" cellpadding="3">
<tr>
<td width="60%"  valign="top">
 
<!-- Table on Upper  left side  Resource-->
<table width="100%" border="1" cellspacing="0" cellpadding="1" >
<td align="center" rowspan="9"> User Details  </td>

<c:forEach  var="custMap" items="${userme.userMap[0]}" >

<c:forEach var="abc" items="${custMap}" >

<tr>
 
		<td align="center">
		<font> ${abc.key}</font></td>
 		<td align="center">
		<font> ${abc.value}</font></td>
		

</tr>
</c:forEach>
</c:forEach>

</table>
<!-- END 1 -->

<td width="40%"  valign="top">
<!-- Table on right upper side as Average -->
<table width="100%" border="1" cellspacing="0" cellpadding="1" >


<c:forEach  var="custMap" items="${userme.userMap[6]}" >

<c:forEach var="abc" items="${custMap}" >

<tr>
 
		<td align="center">
		<font> ${abc.key}</font></td>
 		<td align="center">
		<font> ${abc.value}</font></td>
		

</tr>
</c:forEach>
</c:forEach>

</table>
<!-- END 2 -->
</td>
</tr>
</table>



------------------------------------------------------------------
<!-- Main Table(You can define padding accordingly) -->
<table width="100%" border="1" cellspacing="0" cellpadding="5">
<tr>
<td width="25%"  valign="top">
 
<!-- Table on left side -->
<table width="100%" border="1" cellspacing="0" cellpadding="1" >
<td align="center" rowspan="1"> Domain MCSI </td>
<c:forEach  var="custMap" items="${userme.userMap[4]}" >

<c:forEach var="abc" items="${custMap}" >

<tr>
 
		<td align="center">
		<font> ${abc.key}</font></td>
 		<td align="center">
		<font> ${abc.value}</font></td>
		

</tr>
</c:forEach>
</c:forEach>

</table>
<!-- END -->


<td width="25%" valign="top">
 
<!-- Table center  -->
<table width="100%" border="1" cellspacing="0" cellpadding="1">
<td align="center" colspan="2"> Process </td>
<c:forEach  var="custMap" items="${userme.userMap[1]}" >

<c:forEach var="abc" items="${custMap}" >

<tr>
 
		<td align="center">
		<font> ${abc.key}</font></td>
 		<td align="center">
		<font> ${abc.value}</font></td>

</tr>
</c:forEach>
</c:forEach>
</table>
<!-- END -->

</td>
<td width="25%" valign="top">
 
<!-- Table on right side -->
<table width="100%" border="1" cellspacing="0" cellpadding="1">
<td align="center" rowspan="1"> Telenet Knowledge </td>

<c:forEach  var="custMap" items="${userme.userMap[2]}" >


<c:forEach var="abc" items="${custMap}" >

<tr>
 
		<td align="center">
		<font> ${abc.key}</font></td>
 		<td align="center">
		<font> ${abc.value}</font></td>

</tr>
</c:forEach>
</c:forEach>
</table>

<td width="25%" valign="top"> 
<!-- Table on right side -->

<table width="100%" border="1" cellspacing="0" cellpadding="1">
<td align="center" rowspan="1"> Tool and Technology </td>

<c:forEach  var="custMap" items="${userme.userMap[3]}" >

<c:forEach var="abc" items="${custMap}" >

<tr>
 
		<td align="center">
		<font> ${abc.key}</font></td>
 		<td align="center">
		<font> ${abc.value}</font></td>

</tr>
</c:forEach>
</c:forEach>
</table> 
</td>
</tr>
</table>

<!-- END OF MAIN TABLE -->
 </body>
</html>