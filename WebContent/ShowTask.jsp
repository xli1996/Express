<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
    <%@ page import="java.io.*,java.util.*,java.sql.*,DBUtil.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,Page.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	if(request.getParameter("Excel")!=null){
	response.reset();
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show all the tasks</title>
</head>
<body>
<h1 align="center">Express delivery info</h1>
<%if(request.getParameter("checked")!=null){ %>
<h2>Receive success we remove your delivery info</h2>
<%} %>
<form action="SearchTask.jsp" method="get">
<table>

<tr>
<td>Delivery number:</td>
<td><input type="text" name="taskNum"></td>
</tr>

<tr>
<td><input type="submit" value="search"/></td>
</tr>
</table>
<br/>
<p>Please enter the exact delivery number</p>
</form>
<%  ResultSet rs;
	if(request.getParameter("phoneNum")!=null)
	rs=new Control().selectTaskViaPhonenum(request,false,request.getParameter("phoneNum"));
	else
		rs = new Control().selectTask(request,true,"*");
%>
<table align="center" border="1" width="600" height="50">

<tr>
<td>Number</td>
<td>Phone</td>
<td>Name</td>
<td>Department</td>
<td>Email</td>
<td>Express Company</td>
<td>Input Time</td>
<td>Identification Number</td>
<td>check statue</td>
<td>Email notification</td>
</tr>
<%	Page ppage=new Page();

String tmp =request.getParameter("curPage"); 
ppage.init(rs,request,tmp);
 if(tmp==null){  
     tmp="1";  
 }  
 ppage.setCurPage(Integer.parseInt(tmp));
 if(ppage.getCurPage()>=ppage.getPageCount()) ppage.setCurPage(ppage.getPageCount());  
 int count=0;

	while(rs.next()){
		if(count>=ppage.getPAGESIZE())break; 
	 String phoneNum  = rs.getString("PhoneNumber");
     String name = rs.getString("Name");
     String department = rs.getString("Department");
     String email = rs.getString("Email");
     String taskNum = rs.getString("TaskNumber");
     String company= rs.getString("Company");
     String inTime = rs.getString("InTime");
     String idNum = rs.getString("IdentifyNumber");
     count++; 
%>
<tr>
<td><%out.println(taskNum);%></td>
<td><%out.println(phoneNum); %></td>
<td><%out.println(name);   %></td>
<td><%out.println(department); %></td>
<td><%out.println(email);%></td>
<td><%out.println(company);%></td>
<td><%out.println(inTime);%></td>
<td><%out.println(idNum);%></td>
<td><%if(rs.getString("TTT").equals("0"))
		out.println("not receive");
		else
		out.println("received");%>
<td><a href="SendEmail?email=<%=email%>">发送邮件</a></td>
<%} %>
</table>
current<%=ppage.getCurPage()%>page/totally<%=ppage.getPageCount()%>page  
<a href = "ShowTask.jsp?curPage=<%=ppage.getCurPage()-1%>" >Back</a>  
<a href = "ShowTask.jsp?curPage=<%=ppage.getCurPage()+1%>" >Next</a> 
<input type="button"  onclick="javascript:history.back(-1);" value="Back">

<input type="button"  value="Homepage" onclick="window.location.href='HomePage.jsp'">
<input type="button"  value="download excel（all）" onclick="window.location.href='ShowTaskExcel.jsp'">
<input type="button"  value="download excel(this page)" onclick="window.location.href='ShowTask.jsp?Excel=right'">

</body>
</html>