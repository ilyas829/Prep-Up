package user_profile_manager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test_saver_servlet
 */
@WebServlet("/test_saver_catcher")
public class test_saver_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public test_saver_servlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String table=request.getParameter("category");
		String category=request.getParameter("choices[]");
		String user=request.getParameter("active_user");
		//System.out.println(table+category+user);
		AddTest aq= new AddTest();
		if(aq.getData(table, category, user))
		{
			System.out.println("data added");
			response.sendRedirect("user_profile.jsp");
		}else
		{
			System.out.println("duplicate entry or some error");
			response.sendRedirect("user_profile.jsp?err=duplicate");	
		}
		
		
		
	}



}
