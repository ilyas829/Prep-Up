<%--
if(session.getAttribute("admin_login")!="active")
{
	response.sendRedirect("admin_login.jsp");
}
--%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
int question_loop= Integer.parseInt(request.getParameter("number_of_question"));
int i=1;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function subm{
	alert("Question added");
}</script>
</head>
<body style="background-color:#5D5C61;margin:auto;">
 <div style="background-color:#222222;color:white;padding:10px;border:1px solid black;border-radius:5px;width:50%;margin:auto;">
	<div style="width:100%;margin:auto;background-color:black">
		<table style="width:90%;margin:auto;text-align:left">
		<tr>
		<td>
		subject :<% out.write(request.getParameter("category")); %>
		</td>
		<td>category :<% out.write(request.getParameter("choices[]")); %>
		</td></tr>
		</table>
	</div>
		<hr>
		<br>
		<form action="question_adder_catcher">
		<%
		while(question_loop>=i)
		{
		%>
		Question <% out.write(Integer.toString(i)); %> : <input style="width:80%;margin:auto;height:30px;" type="text" name="question_<% out.write(Integer.toString(i)); %>" placeholder="question<% out.write(Integer.toString(i)); %>" required>
		<br>
		<br>
		<br><br>
		Option A :  <input type="text" name="q<% out.write(Integer.toString(i)); %>_option1" required><hr><br>
		Option B :   <input type="text" name="q<% out.write(Integer.toString(i)); %>_option2" required><hr><br>
		Option C :  <input type="text" name="q<% out.write(Integer.toString(i)); %>_option3" required><hr><br>
		Option D :  <input type="text" name="q<% out.write(Integer.toString(i)); %>_option4" required><hr><br>
		Correct Option :
		 <select onchange="select_subject_list()" name="q<% out.write(Integer.toString(i)); %>_correct_option" required>
			
		  	<option value="option1">A</option>
		 	<option value="option2">B</option>
		  	<option value="option3">C</option>
		  	<option value="option4">D</option>
		</select> <br><br>
		
		Explanation : 
		<input style="width:80%;margin:auto;background-color:#DCDCDC" type="text" name="q<% out.write(Integer.toString(i)); %>_explanation"><hr><br><br><br>
		<%
		i++;
		} %>
		<div style="margin:auto;width:70%;text-align:center">
		<input type="text" style="visibility:hidden;position:absolute;" value="<% out.write(request.getParameter("choices[]")); %>" name="category">
		<input type="text" style="visibility:hidden;position:absolute;" value="<% out.write(request.getParameter("category")); %>" name="table">
		<input type="text" style="visibility:hidden;position:absolute;" value="<% out.write(request.getParameter("number_of_question")); %>" name="total_question">
		 </div>
	<input type="submit" style="margin:auto;text-align:center;width:40%;height:30px" onclick="subm()">
	</form>
	</div>
		<hr>

</body>
</html>