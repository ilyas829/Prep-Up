package question_adder_pack;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddQuestionHandler
 */
@WebServlet("/admin/material_adder_catcher")
public class AddMaterialHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMaterialHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		PrintWriter out = response.getWriter();
		//int total_questions=Integer.parseInt(request.getParameter("total_question"));
		//int ii=1;
		//System.out.println(total_questions);
		String topic;
	    String material;
	    
	    topic=request.getParameter("topic").toString();
    	material=request.getParameter("material").toString();
    	HttpSession session=request.getSession();
    	String type= session.getAttribute("type").toString();
    	System.out.print(session.getAttribute("type"));
	    /*String op2;
	    String op3;
	    String op4;
	    String co_op;*/
	    String cat=request.getParameter("category");
	    System.out.println(cat);
	   /* String table=request.getParameter("table");
	    String exp;*/
	    MaterialAdderInDB qa= new MaterialAdderInDB();
	    int i=-1;
	   /* for(ii=1;total_questions>=ii;ii++)
	    {
	    	ques=request.getParameter("question_"+ii+"").toString();
	    	op1=request.getParameter("q"+ii+"_option1").toString();
	    	op2=request.getParameter("q"+ii+"_option2").toString();
	    	op3=request.getParameter("q"+ii+"_option3").toString();
	    	op4=request.getParameter("q"+ii+"_option4").toString();
	    	co_op=request.getParameter("q"+ii+"_correct_option").toString();
	    	exp=request.getParameter("q"+ii+"_explanation").toString();*/
	    	
	    	i=qa.materialAdder(cat,topic,material,type);
	    
	    
	  /*  }*/
	    if(i==1)
	    {	
	    	out.println("<body><script>alert='Material added in the database click below to go back<br><a href='teac_profile.jsp'>click here </a> to go to login page'</script></body>");
	    	System.out.println("Material added in db");
	    	response.sendRedirect("material_adder.jsp");
	    }
	    else
	    {
	    	System.out.println("there is a problem in adding question in the database");
	    	
			out.println("<body>sorry for this time there is some problem in processing your query<br><a href='question_adder.jsp'>click here </a> to go back<body>");
	    
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
