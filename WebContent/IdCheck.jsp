<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Identify Number Checking</title>
</head>
<h2>Please enter identification number</h2>
<%if(request.getParameter("checked")!=null){ %>
<h3>identification number uncorrect</h3>
<%} %>
<body>
<form action="IdCheck" method="get">
<table align="center">

<tr>
<td>Identify Number</td>
<td><input type="text" name="IdNum"></td>
</tr>

<tr>
<td>Number</td>
<td><input type="text" readonly="readonly"  name="taskNum" value=<%=request.getParameter("taskNum")%>></td>
</tr>

<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form>
</body>
</html>