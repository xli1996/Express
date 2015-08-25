<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EMP information update</title>
</head>
<body>
<h1>Update Express delivery info</h1>
<h2>change where you want（leave empty where you dont want to change）</h2>
<form action="TaskUpdate" method="get">
<table align="center">

<tr>
<td>Phone：</td>
<td><input type="text" name="phoneNum"></td>
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
<td>Express Company：</td>
<td><input type="text" name="company"></td>
</tr>

<tr>
<td>Input Time：</td>
<td><input type="text" name="inTime"></td>
</tr>

<tr>
<td>identification time：</td>
<td><input type="text" name="IdNum"></td>
</tr>
<tr>
<td><input type="submit" value="submit"/></td>
</tr>
</table>
</form>
<input type="button"  value="homepage" onclick="window.location.href='HomePage.jsp'">


</body>
</html>