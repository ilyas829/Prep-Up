<%@page import="java.sql.*"%>
<%@page import="mcqcontrollerpack.McqFetcher"%>
<%
McqFetcher mc = new McqFetcher(); 
String table_name=request.getParameter("tbl");
String category=request.getParameter("cat");
ResultSet rss= mc.getQuestions(table_name,category);
int i=1;
%>



	
<div style="background-color:white;overflow:auto;height:644px;margin-right:-33px">
	<br>
	<div class="main_window_heading">
	
		<%out.write(request.getParameter("tbl")+"  ("+request.getParameter("cat")+")"); %>
		
			
	</div>
	<hr>
	
	
	
	<form action="mcq_catcher" id="quiz">
		   <input type="text" style="visibility:hidden;position:absolute" name="table_name" value="<%out.write(table_name); %>">
		   <input type="text" style="visibility:hidden;position:absolute"  name="category"  value="<%out.write(category); %>">
            
            
            
            
        
        
        
        <ol class="question_ol">
            <% while(rss.next())
            {
            %>
                <li>  
                    <h3><% out.write(rss.getString("question")); %></h3>
                    <input style="position:absolute;visibility:hidden" type="text" name="correct_option_q_sr_<%out.write(Integer.toString(i));%>" value="<%out.write(rss.getString("sr")); %>">
                    <div>
                        <input type="radio" name="question-<%out.write(Integer.toString(i)); %>-answer" id="question-1-answers-A" value="option1" />
                        <label for="question-<%out.write(Integer.toString(i)); %>-answers-A">A) <%out.write(rss.getString("option1")); %> </label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-<%out.write(Integer.toString(i)); %>-answer" id="question-1-answers-B" value="option2" />
                        <label for="question-<%out.write(Integer.toString(i)); %>-answers-B">B) <%	out.write(rss.getString("option2"));  %></label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-<% out.write(Integer.toString(i));%>-answer" id="question-1-answers-C" value="option3" />
                        <label for="question-<%out.write(Integer.toString(i)); %>-answers-C">C) <% 	out.write(rss.getString("option3")); %></label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-<%out.write(Integer.toString(i));%>-answer" id="question-1-answers-D" value="option4" />
                        <label for="question-<%out.write(Integer.toString(i)); %>-answers-D">D) <% out.write(rss.getString("option4")); %></label>
                    </div>
                      <input style="position:absolute;visibility:hidden" type="radio" name="question-<%out.write(Integer.toString(i));%>-answers" value="skip" checked>	
                </li>
				
	 	 <%i++;
		 } 
		 %>		
      </ol>   
         
        
         
        <input style="position:absolute;visibility:hidden" type="text" name="total_question" value="<%out.write(Integer.toString(i-1));%>">
        <div style="margin:10px;">
		<div style="text-align:center">
		
		<button class="login_button">
		Submit test
		</button>
		</div>
		</div>	
		
</form>
	

	
	
</div>
	
	
	