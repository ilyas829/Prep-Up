package controllerpack_log_reg.connection_log_reg;
import java.sql.*;

import database_connection_pack.ConnectToDB;
public class Register_DBController
{
	
 public int check(String name,String type, String mobile,String email,String password)
 {
	 int i=-1;
	
	 String db_name=name;
	 String db_type=type;
	 String db_mobile=mobile;
	 String db_email=email;
	 String db_u_password=password;
	 Connection con;
	ConnectToDB ctdb= new ConnectToDB();
	 try 
	 	{
		  System.out.println(db_type);
		 con=ctdb.getConnectionObj();

		 Statement st= con.createStatement();
		 if(db_type.equalsIgnoreCase("S"))
		 {
			 i = st.executeUpdate("insert into student (name,type,mobile,email,password) values ('"+db_name+"','"+db_type+"','"+db_mobile+"','"+db_email+"','"+db_u_password+"')");
			 i= st.executeUpdate("insert into test_record (username) values ('"+db_email+"')");
		 }
		 else if(db_type.equalsIgnoreCase("T"))
		 {
			 i = st.executeUpdate("insert into teacher (name,type,mobile,email,password) values ('"+db_name+"','"+db_type+"','"+db_mobile+"','"+db_email+"','"+db_u_password+"')");
			 i= st.executeUpdate("insert into test_record (username) values ('"+db_email+"')");
		 }
		 else if(db_type.equalsIgnoreCase("C"))
		 {
			 i = st.executeUpdate("insert into candidate (name,type,mobile,email,password) values ('"+db_name+"','"+db_type+"','"+db_mobile+"','"+db_email+"','"+db_u_password+"')");
			 i= st.executeUpdate("insert into test_record (username) values ('"+db_email+"')");
		 }
		 else if(db_type.equalsIgnoreCase("R")) {
		 i = st.executeUpdate("insert into recruiter (name,type,mobile,email,password) values ('"+db_name+"','"+db_type+"','"+db_mobile+"','"+db_email+"','"+db_u_password+"')");
		 i= st.executeUpdate("insert into test_record (username) values ('"+db_email+"')");
	 	}
	 	}
	 	
	 	catch (SQLException e) {System.out.println("failed to establish the connection"+e);}
	return i;
	 
	 
 }
 
}
