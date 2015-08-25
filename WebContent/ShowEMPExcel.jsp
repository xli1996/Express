<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
    <%@ page import="java.io.*,java.util.*,java.sql.*,DBUtil.*,Page.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	response.reset();
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Show all the EMPs</title>
</head>
<body>
<h1 align="center" style="color:crimson">Employee's info</h1>


<% ResultSet rs=new Control().selectEMP(request,true,"*");
%>
<table align="center" border="1" width="500" height="50">

<tr>
<td>Phone</td>
<td>Name</td>
<td>Department</td>
<td>Email</td>
</tr>
<%	
     while(rs.next()){
	 String phoneNum  = rs.getString("PhoneNumber");
     String name = rs.getString("Name");
     String department = rs.getString("Department");
     String email = rs.getString("Email");
     %>
<tr>
<td><%out.println(phoneNum); %></td>
<td><%out.println(name);   %></td>
<td><%out.println(department); %></td>
<td><%out.println(email);%></td>
</tr>
<%}; %>

</table>

</body>
</html>