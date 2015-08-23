package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.*;

import DBUtil.Control;
import DBUtil.DbUtil;
import DBUtil.EMP;
import DBUtil.Order;

/**
 * Servlet implementation class AddTaskThroughEMP
 */
@WebServlet("/AddTaskThroughEMP")
public class AddTaskThroughEMP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTaskThroughEMP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String phoneNum=(String) session.getAttribute("phoneNum");
		ResultSet rs=new Control().selectEMP(request, false, phoneNum);
		try {
			if(rs.next()){
				 String name = rs.getString("Name");
			     String department = rs.getString("Department");
			     String email = rs.getString("Email");
			    DbUtil db =new DbUtil();
				EMP	emp=new EMP();
				Order	order=new Order();
				String s= order.insertInToTask(phoneNum,name,department,email,request.getParameter("taskNum"),request.getParameter("company"),request.getParameter("inTime"),request.getParameter("IdNum"));
				System.out.println(s);
				emp.insert(s, db);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String site = new String("http://localhost:8080/Express/ShowTask.jsp");

	      response.setStatus(response.SC_MOVED_TEMPORARILY);
	      response.setHeader("Location", site);  
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
