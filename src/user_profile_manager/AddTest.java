package user_profile_manager;
import database_connection_pack.*;
import java.sql.*;
public class AddTest
{

	public boolean getData(String table,String cat, String user)
	{
		ConnectToDB ctdb= new ConnectToDB();
		Connection con=ctdb.getConnectionObj();
		Statement st;
		try
		{
		st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from saved_tests where username='"+user+"' and subject = '"+table+"' and category = '"+cat+"'");
		if(rs.next())
		return false;
		
		int i=st.executeUpdate("insert into saved_tests (username,subject,category) values ('"+user+"','"+table+"','"+cat+"')");
		return true;
		}catch(SQLException e) {System.out.println("exception occured in AddQuestion Program"+e);}
		
		
		
		return false;
	}
	
}
