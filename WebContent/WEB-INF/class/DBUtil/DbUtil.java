package DBUtil;

import java.sql.*;

public class DbUtil {

	private Connection conn;
	public Connection getConn(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/EMP";
			String username="root";
			String password="password";
			conn=DriverManager.getConnection(url,username,password);
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch(SQLException e2){
				e2.printStackTrace();
			}
			return conn;}
	
	
	public void setConn(Connection conn){
		this.conn=conn;
	}

	
}
