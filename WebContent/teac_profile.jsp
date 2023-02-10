<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="user_profile_manager.TestFetcher" %>
<%@page import="java.sql.*"%>

<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
if(session.getAttribute("active_user")==null)
{
	response.sendRedirect("index.jsp");
}
%>


<%
String user_active= session.getAttribute("active_user").toString();
String u_type= session.getAttribute("type").toString();
System.out.print(u_type);
TestFetcher tff= new TestFetcher();
ResultSet rss=tff.testData(user_active);
%>


<!DOCTYPE html>
<html lang="en">

<head>
<style>
.saved_list_table
{
background-color:#DCDCDC;
width:100%;
font-size:1.3em;
}
.saved_list_table tr
{

margin:10px;
border:2px solid black;
}

</style>



<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  
  
<%@include file="panels/files_includer.jsp"  %>
  
 


<script>
document.getElementById("profile_btn").style.visibility="hidden";
</script>


</head>


<body style="background-color:#5D5C61;">
<script>
	<%if(request.getParameter("err")!=null){%>
	alert("test is already there in your list");<%}%>
</script>





<!-- bootstrap nav bar  -->

<%@include file="panels/nav_bar.jsp" %>

<!-------nav bar ends-------->


<br>

<br>
<br>


<!--main row  -->
<div class="container-fluid" >

<!-- working window col-9-->
    <div class="col-lg-9" style="background-color:transparent;">
		
<div style="background-color:white;overflow:auto;height:644px;margin-right:-33px">
	<br>
	<div class="main_window_heading">
	Add Questions
			
	</div>
	<hr>
	
	
	<div style="padding:5px;margin:10px;border:2px solid black;">

	<h3 style="color:gray;"> To Add test please Click to the button below</h3>
	<hr>
	<!-- this panels shows all the tests you have saved -->
	<div style="width:90%;text-align:center;margin:auto">
	
			<form action="admin/question_adder.jsp">
				<button style="size:50px;">Add</button>
			</form>
	</div>
	</div>
	
	<div class="main_window_heading">
		Add Study Material		
		</div>
		<hr>
		
		
		<div style="padding:10px;margin:10px;border:2px solid black;">
	
		<h3 style="color:gray;">To add study material Click here</h3>
		<hr>
		
		
		<!-- this panels shows all the tests you have saved -->
		<div style="width:90%;text-align:center;margin:auto">
		
			<form action="admin/material_adder.jsp">
				<button>Add</button>
			</form>
		</div>
		</div>
	
	</div>
	<br>
	<br>
</div>
	<div class="col-lg-3" style="background-color:#222222;">
		<!--login form-->		
		<%@include file="panels/T_login_panel.jsp" %>		
<script>
document.getElementById("profile_btn").style.visibility="hidden";
</script>
		<!--login end-->
		<hr>
		<!-- registeration form button-->
		<%@include file="panels/register_button.jsp" %>
		<hr>
		<!-- instructions -->
		<%--include file="panels/instructions_panel.jsp" --%>
		<!--instructions end-->
		<br>	
	</div><!--col 3-->
	<!--col 9 working window ends-->
	
<!--main row div end-->
<br>
<!-- feedback toggle window -->
<%--include file="panels/feedback_toggle_panel.jsp" --%>
<!--  feedback toggle window ends -->
<!-- footer -->
<%@include file="panels/footer_panel.jsp"%>
<!-- footer ends -->

</body>
</html>