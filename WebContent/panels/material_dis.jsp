<%@page import="java.sql.*"%>
<%@page import="mcqcontrollerpack.MaterialFetcher"%>
<%
MaterialFetcher mc = new MaterialFetcher(); 
String topic=request.getParameter("topic");
String category=request.getParameter("cat");
ResultSet rss= mc.getQuestions(topic,category);
int i=1;
%>



	
<div style="background-color:white;overflow:auto;height:644px;margin-right:-33px">
	<br>
	<div class="main_window_heading">
	
		<%out.write(request.getParameter("topic")+"  ("+request.getParameter("cat")+")"); %>
		
			
	</div>
	<hr>
	
       <% while(rss.next())
            {
            %>
                 
                    <p><% out.write(rss.getString(3)); %></p>
				
	 	 <%i++;
		 } 
		 %>		
        
 
        <input style="position:absolute;visibility:hidden" type="text" name="total_question" value="<%out.write(Integer.toString(i-1));%>">
        <div style="margin:10px;">
		<div style="text-align:center">
		
		</div>
		</div>	
		

	
</div>
	
	
	