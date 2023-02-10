package question_adder_pack;
import database_connection_pack.ConnectToDB;
import java.sql.*;

public class QuestionAdderInDB
{
	public int questionAdder(String tbl,String category,String quest,String o1,String o2,String o3,String o4,String c_o,String explanation)
	{
		ConnectToDB ctdb = new ConnectToDB();
		int i=-1;
		Connection con=null;
		Statement st;
		try
		{
		con=ctdb.getConnectionObj();
		st=con.createStatement();
		i=st.executeUpdate("insert into mcq_"+tbl+" (category,question,option1,option2,option3,option4,correct_option,explanation) values('"+category+"','"+quest+"','"+o1+"','"+o2+"','"+o3+"','"+o4+"','"+c_o+"','"+explanation+"') ");
		con.close();
		return i;
		}
		catch(SQLException e) {System.out.println("problem in adding question in the database"+e);return i;}
		
		
	}

}
