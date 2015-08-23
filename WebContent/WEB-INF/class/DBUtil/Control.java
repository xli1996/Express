package DBUtil;

import java.sql.ResultSet;

import javax.management.loading.PrivateClassLoader;
import javax.servlet.http.HttpServletRequest;
import javax.sql.*;

import sun.rmi.transport.proxy.HttpReceiveSocket;

public class Control {
	private DbUtil db;
	private EMP emp;
	private Order order;
	private ResultSet rs;
	
	public void insertInToTask(HttpServletRequest request)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		String s= order.insertInToTask(request.getParameter("phoneNum"),request.getParameter("name"),request.getParameter("department"),request.getParameter("email"),request.getParameter("taskNum"),request.getParameter("company"),request.getParameter("inTime"),request.getParameter("IdNum"));
		System.out.println(s);
		emp.insert(s, db);
	
	}
	
	public void insertInToEMP(HttpServletRequest request)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		String s=order.insertInToEmployee(request.getParameter("phoneNum"),request.getParameter("name"),request.getParameter("department"),request.getParameter("email"));
		System.out.println(s);
		//Execute insert order
		emp.insert(s, db);
	}
	
	public ResultSet selectEMP(HttpServletRequest request, boolean flag,String keyword)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		if(flag){
		return rs=emp.select(order.selectOrder("*","employee"),db);
		}else
		return rs=emp.select(order.selectOrder("*","employee","PhoneNumber",keyword),db);
		
	}
	
	public ResultSet selectTask(HttpServletRequest request,Boolean flag, String keyword)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		if(flag)
		return rs=emp.select(order.selectOrder("*","task"),db);
		else
		return rs=emp.select(order.selectOrder("*","task","TaskNumber",keyword),db);
	}
	
	public ResultSet selectTaskViaPhonenum(HttpServletRequest request,Boolean flag, String keyword)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		if(flag)
		return rs=emp.select(order.selectOrder("*","task"),db);
		else
		return rs=emp.select(order.selectOrder("*","task","PhoneNumber",keyword),db);
	}
	
	public void delete(HttpServletRequest request,String phoneNum,String table)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		if(table=="task")
		emp.deleteUpdate(order.deleteTask(phoneNum, table),db);
		else 
		emp.deleteUpdate(order.deleteEMP(phoneNum, table), db);
		
		
	}
	
	public void update(HttpServletRequest request,String phoneNum, String table,String name,String department,String email,String taskNum,String company,String inTime,String IdNum)
	{
		db =new DbUtil();
		emp=new EMP();
		order=new Order();
		if(table=="task"){
		String s=order.updateTask(taskNum,phoneNum, table,name,department,email,company,inTime,IdNum);
			emp.deleteUpdate(s, db);
		}else{ 
			String s=order.updateEMP(phoneNum, table,name,department,email);
			emp.deleteUpdate(s, db);
		}
		}
	public void updateOut(HttpServletRequest request,String out,String taskNum)
	{
		db =new DbUtil();
		emp=new EMP();
		emp.deleteUpdate("update task set TTT="+out+" where TaskNumber="+taskNum, db);
	}
}
