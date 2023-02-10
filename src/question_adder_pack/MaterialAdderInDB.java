package question_adder_pack;
import database_connection_pack.ConnectToDB;
import java.sql.*;

public class MaterialAdderInDB
{
	public int materialAdder(String category,String topic,String material,String type)
	{
		ConnectToDB ctdb = new ConnectToDB();
		int i=-1;
		Connection con=null;
		Statement st;
		try
		{
		con=ctdb.getConnectionObj();
		st=con.createStatement();
		i=st.executeUpdate("insert into material (category,topic,material,type) values('"+category+"','"+topic+"','"+material+"','"+type+"')");
		con.close();
		return i;
		}
		catch(SQLException e) {System.out.println("problem in adding question in the database"+e);return i;}
		
		
	}

}
