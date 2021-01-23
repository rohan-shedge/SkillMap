<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="Header.jsp"%>
 <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

.body{
margin: 0;
padding: 0;
background: #FFFACD   url(garland_logo.gif) no-repeat left top;
font-family: vardana, Helvetica, sans-serif;
font-size: 15px;
color: #556B2F   ;
}

</style>

<title></title>



</head>
<body  bgcolor="#ffffff" class="body">
<script type="text/javascript">
  
  function validate(fld)
  {  
     
     var empId = trim(fld.value); 
      alert(empId);

     if(empId=="") 
     {
         alert ("Enter the EmpId please");
         form.empId.focus();         
         return false;
         
     }
   return true;

  }



</script>
<br>

<br>
<table>
<tr>
<td width="80%" align="center">
<div width="" style="width: 690px; " align="justify">
<small>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
This portal gives information about Various Teams,People, their Competencies in Tools and Technology,Process,Telenet Knowledge across various domains
This web application provides seamless integration between various teams.

</small>
</div>
</td>
</tr>
</table>
<form:form method="POST" commandName="userme" id="SearchEmp" > 

<table width="100%"> 
 
 <tr>
 <td>
 <table width="30%" align="center">
 <tr align="center"> 
		<td>Enter Employee ID :</td> 
		<td><form:input path="empId" maxlength="80" size="9" id="empId" /></td>
 		<td><form:errors path="empId" cssClass="errors" /></td>
 		
</tr>
<tr align="center" >
	<td colspan=3><input type="submit"  value="Search" onclick="validate(this)" style="width: 128px;background-color:#E18942;"></td>   
</tr>
 </table>
 </td>
 </tr>
<tr></tr>
<tr></tr>
<tr></tr>

<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>

<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>

  

<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>

 
				 <tr align="right" valign="bottom">
					  <td height="30" colspan="2" bgcolor="#FFCC99" align="center">
 
		 <font face="verdana" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Designed and Developed by </font><span><b><font face="verdana" size="2" color="#FF9900">Sadanand,Rohan and Omkara</font></b></span>
 
</td>				 </tr>

</table>

</form:form>
</body>
</html>