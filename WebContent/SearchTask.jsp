<%@ page language="java" import="java.util.*" contentType="text/html; charset=GBK" pageEncoding="utf-8"%> 
    <%@ page import="java.io.*,java.util.*,java.sql.*,DBUtil.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SearchTask</title>
</head>
<body>
<h1 align="center">Express Delivery info</h1>
<% 	String taskNum=request.getParameter("taskNum");
	session.setAttribute("taskNum", taskNum);
	ResultSet rs=new Control().selectTask(request,false,taskNum);
	if(rs.next()){
		String phoneNum  = rs.getString("PhoneNumber");
	     String name = rs.getString("Name");
	     String department = rs.getString("Department");
	     String email = rs.getString("Email");
	     String company= rs.getString("Company");
	     String inTime = rs.getString("InTime");
	     String idNum = rs.getString("IdentifyNumber");
%>
<table align="center" border="1" width="900" height="100">

<tr>
<td>Delivery Number</td>
<td>Phone</td>
<td>Name</td>
<td>Department</td>
<td>Email</td>
<td>Express Company</td>
<td>Input Time</td>
<td>Identification</td>
<td>Delete</td>
<td>Update</td>
<td>access this employee's info</td>
<td>Receive</td>
</tr>

<tr>
<td><%out.println(taskNum);%></td>
<td><%out.println(phoneNum); %></td>
<td><%out.println(name);   %></td>
<td><%out.println(department); %></td>
<td><%out.println(email);%></td>
<td><%out.println(company);%></td>
<td><%out.println(inTime);%></td>
<td><%out.println(idNum);%></td>
<td><input type="button"  value="Delete" onclick="window.location.href='DeleteTask'"></td>
<td><input type="button" value="Update" onclick="window.location.href='TaskUpdate.jsp'"></td>
<td><input type="button"  value="access this employee's info" onclick="window.location.href='Search.jsp'"></td>
<td><input type="button" value="Receive" onclick="window.location.href='IdCheck.jsp?taskNum=<%=taskNum%>'"></td>
<%
//using seesion to access the EMP info
String TphoneNum=phoneNum;
session.setAttribute("TphoneNum",TphoneNum);
session.setAttribute("taskNum",taskNum);
%>
</table>
<%}else{ %>
<p>This delivery number doesn't exist</p>	
<% }%>
<input type="button"  value="Back" onclick="javascript:history.back(-1);">
<input type="button"  value="Homepage" onclick="window.location.href='HomePage.jsp'">
</body>
</html>