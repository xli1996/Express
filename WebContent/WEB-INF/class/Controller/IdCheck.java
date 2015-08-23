package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBUtil.Control;

/**
 * Servlet implementation class IdCheck
 */
@WebServlet("/IdCheck")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String taskNum=request.getParameter("taskNum");
		ResultSet rs=new Control().selectTask(request,false,taskNum);
		try{
		rs.next();
		if(rs.getString("IdentifyNumber").equals(request.getParameter("IdNum")))
		{
			new Control().updateOut(request,"1",taskNum);
			String site = new String("http://localhost:8080/Express/ShowTask.jsp?checked=right");

		      response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
		      response.setHeader("Location", site);
		}else {
			String site = new String("http://localhost:8080/Express/IdCheck.jsp?taskNum="+taskNum+"&checked=wrong");

		      response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
		      response.setHeader("Location", site); 
		}}catch(SQLException e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
