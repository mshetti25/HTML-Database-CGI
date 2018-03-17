<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import = "java.sql.*" %> 
<%@ page import="HW7.verify" %>
<%@ page import="java.util.*" %>
<%@page import="java.util.Date"%>
<%@page import = "java.text.SimpleDateFormat" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculating AGE</title>
</head>
<body>
<jsp:useBean id="HW7" scope="request" class="HW7.verify" >
<<jsp:setProperty name="HW7" property="*"/>
</jsp:useBean>
<% 
String U= request.getParameter("UserName");
String P= request.getParameter("PassWord");
if(HW7.verification(U, P)){
%>
<jsp:forward page="Page.jsp"/>
<%
} 
else {
%>
<jsp:forward page="invalid.html"/>
<%
}
%>
</body>
</html>