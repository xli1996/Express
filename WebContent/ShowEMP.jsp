<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%> 
    <%@ page import="java.io.*,java.util.*,java.sql.*,DBUtil.*,Page.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%	if(request.getParameter("Excel")!=null){
	response.reset();
	response.setContentType("application/vnd.ms-excel;charset=UTF-8");}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Show all the EMPs</title>
</head>
<body>
<h1 align="center" style="color:crimson">Employss's  info</h1>

<form action="Search.jsp" method="get">
Phone： <input type="text" name="phoneNum">
<input type="submit" value="search"/>
<br/>
<p>please enter the exact phone number</p>
</form>
<% ResultSet rs=new Control().selectEMP(request,true,"*");
%>
<table align="center" border="1" width="500" height="50">

<tr>
<td>Phone</td>
<td>Name</td>
<td>Department</td>
<td>Email</td>
<td>search employee's express</td>
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
     count++; 
     %>
<tr>
<td><%out.println(phoneNum); %></td>
<td><%out.println(name);   %></td>
<td><%out.println(department); %></td>
<td><%out.println(email);%></td>
<td><input type="button" value="search employee's express" onclick="window.location.href='ShowTask.jsp?phoneNum=<%=phoneNum%>'"></td>
</tr>
<%}; %>

</table>
第<%=ppage.getCurPage()%>页/共<%=ppage.getPageCount()%>页  
<a href = "ShowEMP.jsp?curPage=<%=ppage.getCurPage()-1%>" >Back</a>  
<a href = "ShowEMP.jsp?curPage=<%=ppage.getCurPage()+1%>" >Next</a>  
<input type="button"  onclick="javascript:history.back(-1);" value="Back">
<input type="button"  value="Homepage" onclick="window.location.href='HomePage.jsp'">
<input type="button"  value="Continue" onclick="window.location.href='AddEMP.jsp'">
<input type="button"  value="download excel（all）" onclick="window.location.href='ShowEMPExcel.jsp'">
<input type="button"  value="download excel (this page)" onclick="window.location.href='ShowEMP.jsp?Excel=right'">


</body>
</html>