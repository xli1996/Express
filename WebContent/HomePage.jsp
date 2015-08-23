<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Express Add</title>

</head>
<body  background="world.JPEG">
<h1 class="text" align="center" ><span>快递管理系统</span></h1>
<table align="center" height="600">
<tr>
<td><input type="button" value="添加员工信息" onclick="window.location.href='AddEMP.jsp'"></td>
</tr>

<tr>
<td><input type="button" value="添加快递信息" onclick="window.location.href='AddTask.jsp'"></td>
</tr>
<tr>
<td><input type="button" value="查看员工信息" onclick="window.location.href='ShowEMP.jsp'"></td>
</tr>
<tr>
<td><input type="button" value="查看快递信息" onclick="window.location.href='ShowTask.jsp'"></td>
</tr>

<tr>
<td><input type="button" value="  完 成 收 件  " onclick="window.location.href='Receive.jsp'"></td>
</tr>
</table>
</body>
</html>