<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Details</title>

</head>

<body>

<%
String Uname= request.getParameter("UserName");


int a=0;
try
{
String DOB = request.getParameter("D.O.B");
int m = Integer.parseInt(DOB.substring(0, 2));
int d = Integer.parseInt(DOB.substring(3, 5));
int y = Integer.parseInt(DOB.substring(6, 10));
SimpleDateFormat B = new SimpleDateFormat("YYYY");
Date C = new java.util.Date();
int D = Integer.parseInt(B.format(C));

B = new SimpleDateFormat("MM");
C = new java.util.Date();
int E = Integer.parseInt(B.format(C));

B = new SimpleDateFormat("dd");
C = new java.util.Date();
int F = Integer.parseInt(B.format(C));

a = D-y;
 if(E < m){
a = a-1;
}
if(E == m && F < d){
a = a-1;}
}
catch (NumberFormatException N){
	out.println(N);
}
%> 
Heya!! Your User Name and Age is:
<p>  User Name : <%= Uname %></p>

<p> Age <%= a %> </p>
 
</body>

</html>