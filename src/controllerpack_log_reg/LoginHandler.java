package controllerpack_log_reg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controllerpack_log_reg.connection_log_reg.*;

@WebServlet(description = "this servlet takes the request from login panel", urlPatterns = { "/login_catcher" })
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String servlet_user=request.getParameter("user");
		String servlet_password=request.getParameter("pswd");
		String servlet_type=request.getParameter("type");
		Login_DBController db= new Login_DBController();
		if(db.check(servlet_user,servlet_password,servlet_type))
		{
			System.out.println("procees to user profile page");
			HttpSession session= request.getSession();
			session.setAttribute("active_user",servlet_user);
			session.setAttribute("type", servlet_type);
			if(servlet_type.equalsIgnoreCase("S") || servlet_type.equalsIgnoreCase("C"))
			{
			response.sendRedirect("user_profile.jsp");
			}
			else if(servlet_type.equalsIgnoreCase("T") || servlet_type.equalsIgnoreCase("R"))
			{
			response.sendRedirect("teac_profile.jsp");
			}
			
		}
		else
		{
			response.sendRedirect("index.jsp?error=1");
		}
		
		
	}


	
	
	
}
