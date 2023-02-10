package controllerpack_log_reg;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controllerpack_log_reg.connection_log_reg.*;


@WebServlet("/register_catcher")
public class RegisterHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	System.out.println("servlet called for registering the values");
	Register_DBController rdc = new Register_DBController();
	String name=request.getParameter("name");
	String type=request.getParameter("type");
	String mobile=request.getParameter("mobile");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String password_confirm=request.getParameter("password_confirm");
	int verify_insert=rdc.check(name,type,mobile,email,password);
	if(verify_insert==1)
	{
		HttpSession session = request.getSession();
		session.setAttribute("active_user",email);
		session.setAttribute("type",type);
		//session.setAttribute("uname",name);
		response.sendRedirect("registered_alert.jsp");
	}
	if(verify_insert!=1)
	{
		PrintWriter out = response.getWriter();
		out.println("<body>sorry for this time there is some problem in processing your query<body>");
		System.out.println("there is problem in inserting the values");
	}
	
	
	
	}
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
