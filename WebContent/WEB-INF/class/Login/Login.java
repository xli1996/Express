package Login;

import java.sql.ResultSet;

import DBUtil.*;

public class Login {
	private String username;
	private String password;
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public ResultSet auth(String username)
	{
		DbUtil db =new DbUtil();
		EMP emp=new EMP();
		String s="select * from login where username='"+username+"'";
		return emp.select(s, db);
		
		}
		
		
	}
	

