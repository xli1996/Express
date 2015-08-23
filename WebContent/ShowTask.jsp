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
<h1 align="center">快递面单信息</h1>
<%if(request.getParameter("checked")!=null){ %>
<h2>收件成功 快递信息已删除</h2>
<%} %>
<form action="SearchTask.jsp" method="get">
<table>

<tr>
<td>面单号:</td>
<td><input type="text" name="taskNum"></td>
</tr>

<tr>
<td><input type="submit" value="查找"/></td>
</tr>
</table>
<br/>
<p>现在只支持面单号精确查询</p>
</form>
<%  ResultSet rs;
	if(request.getParameter("phoneNum")!=null)
	rs=new Control().selectTaskViaPhonenum(request,false,request.getParameter("phoneNum"));
	else
		rs = new Control().selectTask(request,true,"*");
%>
<table align="center" border="1" width="600" height="50">

<tr>
<td>面单号</td>
<td>手机</td>
<td>姓名</td>
<td>部门</td>
<td>Email</td>
<td>快递公司</td>
<td>录入时间</td>
<td>验证码</td>
<td>签收状态</td>
<td>发送邮件提醒</td>
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
		out.println("未签收");
		else
		out.println("已经签收");%>
<td><a href="SendEmail?email=<%=email%>">发送邮件</a></td>
<%} %>
</table>
第<%=ppage.getCurPage()%>页/共<%=ppage.getPageCount()%>页  
<a href = "ShowTask.jsp?curPage=<%=ppage.getCurPage()-1%>" >上一页</a>  
<a href = "ShowTask.jsp?curPage=<%=ppage.getCurPage()+1%>" >下一页</a> 
<input type="button"  onclick="javascript:history.back(-1);" value="返回上一页">

<input type="button"  value="返回主页" onclick="window.location.href='HomePage.jsp'">
<input type="button"  value="导出excel（全）" onclick="window.location.href='ShowTaskExcel.jsp'">
<input type="button"  value="导出本页excel" onclick="window.location.href='ShowTask.jsp?Excel=right'">

</body>
</html>