<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Identify Number Checking</title>
</head>
<h2>请输入验证码</h2>
<%if(request.getParameter("checked")!=null){ %>
<h3>验证码错误</h3>
<%} %>
<body>
<form action="IdCheck" method="get">
<table align="center">

<tr>
<td>验证码</td>
<td><input type="text" name="IdNum"></td>
</tr>

<tr>
<td>面单号</td>
<td><input type="text" readonly="readonly"  name="taskNum" value=<%=request.getParameter("taskNum")%>></td>
</tr>

<tr>
<td><input type="submit" value="验证"></td>
</tr>
</table>
</form>
</body>
</html>