package IdentifyNum;
import java.util.*;

public class RandomID {
	private String IdNum;
	
	public String getIdNum() {
		return IdNum;
	}


	public RandomID(){
		IdNum=Random();
	}
	
	public String Random(){
		Random random=new Random();
		int temp=1000+random.nextInt(8999);
		return ""+temp;
	}


	
}
