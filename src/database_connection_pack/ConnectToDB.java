package database_connection_pack;
import java.sql.*;
public class ConnectToDB
{
public Connection getConnectionObj()
{
	 String url="jdbc:mysql://localhost:3306/quiz";
	 String db_user="root";
	 String db_password="";
	 Connection connect=null;
	 try 
	 {
	 	Class.forName("com.mysql.cj.jdbc.Driver");
	 	 connect = DriverManager.getConnection(url,db_user,db_password);
	 } 
	 catch (ClassNotFoundException e)  {  System.out.println("no class found");  }
	 catch (SQLException ee) {System.out.println("exception in sql :"+ee);}	
	
	 return connect;
}
}
