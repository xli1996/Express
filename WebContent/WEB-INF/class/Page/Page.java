package Page;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class Page {
	private int pageCount;
	private int curPage=1;
	private final int PAGESIZE=3;
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
		 if(curPage<=0) this.curPage=1;
	     if(curPage>=pageCount) this.curPage = pageCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public int getPAGESIZE(){
		return PAGESIZE;
	}
	
	public void init(ResultSet rs,HttpServletRequest request,String tmp)
	{
		try{
		rs.last();
		int size=rs.getRow();
		pageCount=(size%PAGESIZE==0)?(size/PAGESIZE):(size/PAGESIZE+1);
		 if(tmp==null){  
	         tmp="1";  
	     }
		 curPage = Integer.parseInt(tmp); 
		 if(curPage<=0) curPage=1;
	     if(curPage>=pageCount) curPage = pageCount;  
	     boolean flag = rs.absolute((curPage-1)*PAGESIZE);
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
}
}
