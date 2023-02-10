package user_profile_manager;
import database_connection_pack.*;
import java.sql.*;
public class TestFetcher 
{
	ResultSet rs=null;
	ResultSet rss=null;
	Statement st;
	ConnectToDB ctdb= new ConnectToDB();
	Connection con= ctdb.getConnectionObj();
public ResultSet testData(String active_user)
{

try 
{
	st = con.createStatement();
	rs= st.executeQuery("select * from saved_tests where username ='"+active_user+"' order by sr desc");
	return rs;
} catch (SQLException e) {System.out.println("sql problem in TestFetcher from the package user_profile_manager"+e);}

return rs;
	
}
// -------------------------------Added on 7 feb 2023 for adding study material table-------------------------------------
public ResultSet testMat(String u_type)
{

try 
{
	st = con.createStatement();
	if(u_type.equalsIgnoreCase("S"))
	{
		rss= st.executeQuery("select * from material where type='T'");
		return rss;
	}
	else {
		rss= st.executeQuery("select * from material where type='R'");
		return rss;
	}
} catch (SQLException e) {System.out.println("sql problem in TestFetcher from the package user_profile_manager"+e);}

return rss;
	
}
public int countSavedTest(String username)
{
int count=0;

ResultSet rs2= testData(username);
try {
	while(rs2.next())
	{
		count++;
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

	
	
return count;	
}




}
