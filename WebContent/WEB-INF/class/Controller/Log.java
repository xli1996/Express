package Controller;

import java.io.IOException;
import java.sql.ResultSet;
import Login.Login;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Log")
public class Log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Log() {
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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		ResultSet rs=new Login().auth(username);
		try{
		if(rs==null||!rs.next()){
			response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
		      response.setHeader("Location", "Login.jsp?auth=nonex");
		}
		else{
		if(rs.getString("Password").equals(password))
		{
			response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
		      response.setHeader("Location", "HomePage.jsp?auth=right");
		}
		else {
			response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
		      response.setHeader("Location", "Login.jsp?auth=wrong");
		}}
		}catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}