<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
    <%@ page import="java.io.*,java.util.*,java.sql.*,DBUtil.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,Page.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	
	response.reset();
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show all the tasks</title>
</head>
<body>
<h1 align="center">快递面单信息</h1>

<%  ResultSet rs;
		rs = new Control().selectTask(request,true,"*");
%>
<table align="center" border="1" width="600" height="50">

<tr>
<td>面单号</td>
<td>手机</td>
<td>姓名</td>
<td>部门</td>
<td>Email</td>
<td>快递公司</td>
<td>录入时间</td>
<td>验证码</td>
</tr>
<%	
	while(rs.next()){
	 String phoneNum  = rs.getString("PhoneNumber");
     String name = rs.getString("Name");
     String department = rs.getString("Department");
     String email = rs.getString("Email");
     String taskNum = rs.getString("TaskNumber");
     String company= rs.getString("Company");
     String inTime = rs.getString("InTime");
     String idNum = rs.getString("IdentifyNumber");
%>
<tr>
<td><%out.println(taskNum);%></td>
<td><%out.println(phoneNum); %></td>
<td><%out.println(name);   %></td>
<td><%out.println(department); %></td>
<td><%out.println(email);%></td>
<td><%out.println(company);%></td>
<td><%out.println(inTime);%></td>
<td><%out.println(idNum);%></td>
<%} %>
</table>
</body>
</html>