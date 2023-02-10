package question_adder_pack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class question_adder_supported_servlet
 */
@WebServlet("/admin/question_adder_supported_form")
public class question_adder_supported_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public question_adder_supported_servlet() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		System.out.println("in the servlet");
		HttpSession session=request.getSession();
		session.setAttribute("admin_login", "active");
		response.sendRedirect("question_adder.jsp");
		System.out.println(session.getAttribute("admin_login"));
		
	}


}
