package HW7;
import java.util.List;

import java.util.*;

import java.sql.*;
import java.util.ArrayList;
import oracle.jdbc.*;

@SuppressWarnings("unused")
public class verify {
	public boolean verification(String UserName, String PassWord) throws ClassNotFoundException{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	try {
		Connection C= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","manisha2507");
		String A = "SELECT USERNAME, PASSWORD from DETAILS";
		Statement S = C.createStatement();
		ResultSet R = S.executeQuery(A);
		
		
		List<info> U = new ArrayList<info>();
		String O = "invalid";
		while(R.next()){
			info X = new info();
			X.setUsername(R.getString("USERNAME"));
			X.setPassword(R.getString("PASSWORD"));
			
			U.add(X);
		}
		for(int i =0 ; i < U.size(); i++){
			String Y = U.get(i).getUsername();
			String Z = U.get(i).getPassword();
			if(UserName.equals(Y)){
				if(PassWord.equals(Z)){
					O = "Successfull :) ";
				}
			}
		}
		
		if(O == "Successfull :) "){
			System.out.println(O);
			return true;
		}
		else {
			System.out.println(O);
			return false;
		}
		
		}
	catch (SQLException E) {
		// TODO Auto-generated catch block
		E.printStackTrace();
		return false;
	}
	
	
}
	@SuppressWarnings("resource")
	public static void main(String args[]) throws ClassNotFoundException{
		Scanner sc = new Scanner(System.in);
		System.out.println("Please enter the User ID");
		String u= sc.nextLine();
		System.out.println("Please enter the Password:");
		String p= sc.next();
		verify v = new verify();
		v.verification(u,p);
	}
}
