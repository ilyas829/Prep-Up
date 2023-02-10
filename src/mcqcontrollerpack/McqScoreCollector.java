package mcqcontrollerpack;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database_connection_pack.*;

@WebServlet("/mcq_catcher")
public class McqScoreCollector extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	ConnectToDB ctdb= new ConnectToDB();
	int score=0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int i=Integer.parseInt(request.getParameter("total_question"));
		int k=1;
		int query;
		String correct_option=null;
		String selected_option;
		con = ctdb.getConnectionObj();
		try {
		Statement st= con.createStatement();
		ResultSet rs;
	    String table=request.getParameter("table_name");
	    String categoy=request.getParameter("category");
		
		while(k<=i)
	   {
		   
	   rs=st.executeQuery("select correct_option from mcq_"+table+" where sr = '"+request.getParameter("correct_option_q_sr_"+Integer.toString(k))+"'");
	   rs.next();
	   selected_option=request.getParameter("question-"+Integer.toString(k)+"-answer");
	   correct_option=rs.getString("correct_option");
	   if(correct_option.equals(selected_option))
	   {
		   score++;
		   
	   }
	   
	   
	   k++;
	   }
		}catch(SQLException e) {System.out.println("exception in sql"+e); }
		
		
		HttpSession session = request.getSession();
		if(session.getAttribute("active_user")!=null)
		{
			Statement ss=null;
			try {
				
				ss = con.createStatement();
				query= ss.executeUpdate("UPDATE test_record SET last_test_score='"+score+"' WHERE username = '"+session.getAttribute("active_user")+"'");
				query= ss.executeUpdate("UPDATE test_record SET test_given = test_given + 1 WHERE username = '"+session.getAttribute("active_user")+"'");
				
			} catch (SQLException e) {e.printStackTrace();}
				
				
			
		}
		
		response.sendRedirect("score.jsp?your_score="+score+"&out_of="+i);
		score=0;
	}
      
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
