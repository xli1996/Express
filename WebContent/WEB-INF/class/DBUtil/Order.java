package DBUtil;


public class Order {
	String s;
	public String selectOrder(String column, String table){
		s="select "+column+" from " +table;
		return s;
	}
	public String selectOrder(String column,String table,String keyword, String keywordValue){
		s="select "+column+" from "+table+" where "+keyword+"='"+keywordValue+"'";
		return s;
	}
	
	public String insertInToEmployee(String phoneNum,String name,String department,String email)
	{
		s="insert into employee values ('"+phoneNum+"','"+name+"','"+department+"','"+email+"')";
		return s;
	}
	
	public String insertInToTask (String phoneNum,String name,String department,String email,String taskNum,String expressCompany,String inDate,String identifyNum)
	{
		s="insert into task values ('"+phoneNum+"','"+name+"','"+department+"','"+email+"','"+taskNum+"','"+expressCompany+"','"+inDate+"',0,'"+identifyNum+"')";
		return s;
	}

	public String deleteEMP (String phoneNum, String table)
	{
		s="delete from "+table+" where PhoneNumber='"+phoneNum+"'";
		System.out.println(s);  
		return s;
	}
	
	public String deleteTask (String phoneNum, String table)
	{
		s="delete from "+table+" where TaskNumber="+phoneNum;
		System.out.println(s);  
		return s;
	}

	public String updateEMP (String phoneNum,String table,String name,String department,String email)
	{
		s="update "+table+" set"+" Name='"+name+"', Department='"+department+"', Email='"+email+"' where PhoneNumber='"+phoneNum+"'";
		System.out.println(s);  
		return s;
	}
	
	public String updateTask (String taskNum,String phoneNum,String table,String name,String department,String email,String company,String inTime,String IdNum)
	{
		s="update "+table+" set"+" PhoneNumber='"+phoneNum+"', Name='"+name+"', Department='"+department+"', Email='"+email+"', Company='"+company+"', InTime='"+inTime+"', IdentifyNumber='"+IdNum+"' where TaskNumber='"+taskNum+"'";
		System.out.println(s);  
		return s;
	}
}
