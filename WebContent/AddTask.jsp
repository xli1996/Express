<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="IdentifyNum.RandomID"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>add EMP</title>
</head>
<body>
<h1 align="center">快递面单信息录入</h1>

<form action="AddTask" method="get">
<table align="center">
<tr>
<td>面单号：</td>
<td><input type="text" name="taskNum"></td>
</tr>

<tr>
<td>手机：</td>
<td><input type="text" name="phoneNum"></td>
</tr>

<tr>
<td>姓名：</td>
<td><input type="text" name="name"></td>
</tr>

<tr>
<td>部门：</td>
<td><input type="text" name="department"></td>
</tr>

<tr>
<td>Email:</td>
<td><input type="text" name="email"/></td>
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
<% RandomID r=new RandomID();%>
<td><input type="text" readonly="readonly" name="IdNum" value=<%=r.getIdNum() %>></td>
</tr>

<tr>
<td><input type="submit" value="提交"/></td>
</tr>
</table>
</form>
<input type="button"  value="上一页" onclick="javascript:history.back(-1);">
<input type="button"  value="返回主页" onclick="window.location.href='HomePage.jsp'">
<input type="button"  value="继续添加" onclick="window.location.href='AddTask.jsp'">
</body>
</html>