package DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

public class EMP {
	private Statement st;
	private ResultSet rs;
	private boolean flag;
	
	public void clearUp(Connection conn){
		try{
			if(rs!=null)
				rs.close();
			if(st!=null)
				st.close();
			if(conn!=null);
				conn.close();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		
	}
	
	public ResultSet select(String s, DbUtil db){
		System.out.println("Execute select order");
		System.out.println(s);
		try{
			if(st==null)
				st=db.getConn().createStatement();
			rs=st.executeQuery(s);
		}catch(SQLException e){
			System.out.println("select error");
			e.printStackTrace();
		}
		return rs;
	}
	public void insert(String s, DbUtil db){
		System.out.println("Execute insert order");
		try{
			if(st==null)
				st=db.getConn().createStatement();
			    flag=st.execute(s);
		}catch(SQLException e){
			System.out.print("error");
			e.printStackTrace();
		}
	}
	
	public void deleteUpdate(String s, DbUtil db){
		System.out.println("Execute delete order");
		try{
			if(st==null)
				st=db.getConn().createStatement();
				int i=st.executeUpdate(s);
		}catch(SQLException e){
			System.out.println("error");
			e.printStackTrace();
		}
	}
	
}

