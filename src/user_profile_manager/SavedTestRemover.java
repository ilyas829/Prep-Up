package user_profile_manager;
import java.sql.*;
import database_connection_pack.*;

public class SavedTestRemover 
{
	public boolean removerMethod(String sr)
	{
	ConnectToDB ctdb= new ConnectToDB();
	Connection con=ctdb.getConnectionObj();
	try
	{
		Statement st= con.createStatement();
		int i=st.executeUpdate("delete from saved_tests where sr="+sr+"");
		return true;
	}catch(SQLException e) {System.out.println("exception in savedtestremover java program"+e);}
     
	
	
	
	return false;
	}



}
