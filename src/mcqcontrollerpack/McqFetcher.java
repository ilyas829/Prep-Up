package mcqcontrollerpack;
import java.sql.*;
import database_connection_pack.*;
public class McqFetcher
{

	
	Connection con =null;
	ConnectToDB ctdb= new ConnectToDB();
	ResultSet rs;
	
public ResultSet getQuestions(String table_name,String category)
{
	String tbl=table_name;
	String ct=category;
	
try 
{
	
	con=ctdb.getConnectionObj();
	Statement st= con.createStatement();
	
	rs= st.executeQuery("select * from mcq_"+tbl+" where category='"+ct+"' order by sr desc LIMIT 10");
}
catch (SQLException ee) {System.out.println(ee);}	

return rs;

}




}


