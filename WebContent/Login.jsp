<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login page</title>
</head>
<body>
<h1 align="center">Please enter username&password</h1>
<%if(request.getParameter("auth")!=null){
	if(request.getParameter("auth").equals("wrong")){%>
<h2>password doesn't match</h2>
<%}else{%>
<h2>username doesn't exist</h2>	
<%}}%>


<form action="Log" method="get">
<table align="center">
<tr>
<td>username</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>password</td>
<td><input type="text" name="password"></td>
</tr>
<tr>
<td><input type="submit" value="login"></td>
</tr>
</table>
</form>
</body>
</html>