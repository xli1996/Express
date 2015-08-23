package DBUtil;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.omg.CORBA.PUBLIC_MEMBER;


public class Write {
	private ResultSet rs;
	public void setRs(ResultSet rs){
		this.rs=rs;
	}
	public void show(){
		System.out.println("show all the employees");
		try{
		while(rs.next()){
	         //Retrieve by column name
	         int phoneNum  = rs.getInt("PhoneNumber");
	         String name = rs.getString("Name");
	         String department = rs.getString("Department");
	         String email = rs.getString("Email");

	         //Display values
	         System.out.print("ID: " + phoneNum);
	         System.out.print(", Age: " + name);
	         System.out.print(", Department: " + department);
	         System.out.println(", Email: " + email);}

		}catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }
	}
}

