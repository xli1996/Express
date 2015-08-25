<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new task through employee</title>

</head>
<body>
<h2 align="center" style="color:crimson">Add new express delivery via employee's info</h2>
<form action="AddTaskThroughEMP" method="get">
<table align="center" >
<tr>
<td>Delivery Number：</td>
<td><input type="text" name="taskNum"></td>
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
<td>identification number：</td>
<td><input type="text" name="IdNum"></td>
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