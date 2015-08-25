<%@ page language="java" import="java.util.*" contentType="text/html; charset=GBK" pageEncoding="utf-8"%> 
    <%@ page import="java.io.*,java.util.*,java.sql.*,DBUtil.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<script type="text/javascript">
function openwin(){

    window.open   ('AddTaskThroughEMP.jsp',   'popwindow',   'height=400,   width=320,   top=100,   left=800,   ．toolbar=no,   menubar=no,   scrollbars=no,   resizable=yes,location=no,   status=no');
}
</script>
</head>
<body>
<h1 align="center">employee's info'</h1>
<%	String phoneNum;
	if(session.getAttribute("TphoneNum")!=null)
{
	phoneNum=(String)session.getAttribute("TphoneNum");
}else{
	phoneNum=request.getParameter("phoneNum");
	}
	session.removeAttribute("TphoneNum");
	session.setAttribute("phoneNum", phoneNum);
	ResultSet rs=new Control().selectEMP(request,false,phoneNum);
	if(rs.next()){
	     String name = rs.getString("Name");
	     String department = rs.getString("Department");
	     String email = rs.getString("Email");
	
%>


<table border="1" width="600" height="50" align="center">

<tr>
<td>Phone</td>
<td>Name</td>
<td>Department</td>
<td>Email</td>
<td>Delete</td>
<td>Update</td>
<td>Add new delivery</td>
</tr>
<tr>
<td><%out.println(phoneNum); %></td>
<td><%out.println(name);%></td>
<td><%out.println(department);%></td>
<td><%out.println(email);%></td>
<td><input type="button"  value="delete" onclick="window.location.href='Delete'"></td>
<td><input type="button" value="update" onclick="window.location.href='EMPUpdate.jsp'"></td>
<td><input type="button"  value="add new delivery" onclick="openwin()"></td>
</tr>
</table>
<%}else{ %>
<p>phone number doesn't exist</p>	
<% }%>
<input type="button"  value="Back" onclick="javascript:history.back(-1);">
<input type="button"  value="Homepage" onclick="window.location.href='HomePage.jsp'">
</body>
</html>