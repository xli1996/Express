<%@ page language="java" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>add EMP</title>
</head>
<body>
<h1 align="center">ADD EMPLOYEE's information'"</h1>
<form action="AddEMP" method="get">
<table align="center">
<tr>
<td>Phone：</td>
<td> <input type="text" name="phoneNum"></td>
</tr>

<tr>
<td>Name：</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>Department：</td>
<td><input type="text" name="department"></td>
</tr>

<tr>
<td>Email:</td>
<td> <input type="text" name="email"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"/></td>
</tr>
</table>
</form>
<input type="button"  value="Back" onclick="javascript:history.back(-1);">
<input type="button"  value="Homepage" onclick="window.location.href='HomePage.jsp'">
</body>
</html>