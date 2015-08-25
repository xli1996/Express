<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EMP information update</title>
</head>
<body>
<h1>update employee's info</h1>
<h2>fill info which you need to change（leave blank with those you don't want to change）</h2>
<form action="EMPUpdate" method="get">
<table align="center">

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