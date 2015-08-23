<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new task through employee</title>

</head>
<body>
<h2 align="center" style="color:crimson">通过员工信息添加新快递</h2>
<form action="AddTaskThroughEMP" method="get">
<table align="center" >
<tr>
<td>面单号：</td>
<td><input type="text" name="taskNum"></td>
</tr>

<tr>
<td>快递公司：</td>
<td><input type="text" name="company"></td>
</tr>

<tr>
<td>录入时间：</td>
<td><input type="text" name="inTime"></td>
</tr>

<tr>
<td>验证码：</td>
<td><input type="text" name="IdNum"></td>
</tr>

<tr>
<td><input type="submit" value="提交"/></td>
</tr>

</table>
</form>
<input type="button"  value="上一页" onclick="javascript:history.back(-1);">
<input type="button"  value="返回主页" onclick="window.location.href='HomePage.jsp'">
</body>
</html>