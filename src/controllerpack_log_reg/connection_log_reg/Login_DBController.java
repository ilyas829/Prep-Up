package controllerpack_log_reg.connection_log_reg;
import java.sql.*;
import database_connection_pack.*;


public class Login_DBController 
{
	public boolean check(String usr,String pswd,String type)
	{
		
		Connection con;
		ConnectToDB ctdb= new ConnectToDB();
		try {
			con=ctdb.getConnectionObj();
			Statement st= con.createStatement();
			if(type.equalsIgnoreCase("S")) {
			ResultSet rs= st.executeQuery("select * from student where email='"+usr+"' and password='"+pswd+"'");
			if(rs.next())
			{
				return true;
			}
			    
			}
		
		else if(type.equalsIgnoreCase("R")) {
			ResultSet rs= st.executeQuery("select * from recruiter where email='"+usr+"' and password='"+pswd+"'");
			if(rs.next())
			{
				return true;
			}
			    
			}
		
		else if(type.equalsIgnoreCase("C")) {
		ResultSet rs= st.executeQuery("select * from candidate where email='"+usr+"' and password='"+pswd+"'");
		if(rs.next())
		{
			return true;
		}
		    
		}
	
		else if(type.equalsIgnoreCase("T")) {
	ResultSet rs= st.executeQuery("select * from teacher where email='"+usr+"' and password='"+pswd+"'");
	if(rs.next())
	{
		return true;
	}
	    
	}
}
			
			catch (SQLException e) {  System.out.println("establishment of database connection failed");  }
			return false;
			
		
		
	}
	
	
	
}
