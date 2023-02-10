<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
%>

<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <%@include file="panels/files_includer.jsp"  %>
 
  <script> 
  <%@include file="jscript/feedback_toggle_js.jsp" %>

function login_focus()
{
//alert("hello");
document.getElementById("usr").focus();
}

<%@include file="jscript/login_validator_js.jsp" %>
</script>
  
  
  
  
  
  
  
  
</head>


<body style="background-color:#5D5C61;">

<!-- logo row -->
<!--  
<div style="background-color:#009933;color:white;font-weight:bold;font-size:4em;">
10 minute Quiz
</div>-->

<!-- bootstrap nav bar  -->

<%@include file="panels/nav_bar.jsp" %>

<!-------nav bar ends-------->


<br>
<br>
<br>


<!--main row  -->
<div class="container-fluid">

<!-- working window col-9-->
    <div class="col-lg-9" style="background-color:transparent;">
	
	
<div style="background-color:white;overflow:auto;height:644px;margin-right:-33px">
	<br>
	<div class="main_window_heading">
		Your Scores	
	</div>
	<hr>
	<div>
	<div style="text-align:center;margin:auto;color:white;font-weight:bold;font-size:5em;width:50%;border:3px solid white;border-radius:20px;padding:10px;box-shadow:0px 5px 20px black;background-color:#222222">
	<br>
	<%out.write(request.getParameter("your_score")); %>/<%out.write(request.getParameter("out_of")); %>
	<br>
	<br>
	</div>
	
	
		<div style="margin:10px;">
		
			
			<div class="login_button" style="width:30%;text-align:center">
			<a href="index.jsp" style="text-decoration:none;color:white">
			<span style="font-size:1em;">Choose Another subject</span>
			</a>
			</div>
	
	   </div>
	
	
	</div>
	
	
	<hr>
	
	

	<br>
	
	
	
	
	<br>
	
</div>
	
	
	
	
	
	</div><!--col 9 working window ends-->
    
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div class="col-lg-3" style="background-color:#222222;">
		<!--login form-->
		
		<%@include file="panels/login_panel.jsp" %>
		<!--login end-->
		
		<hr>
		
		<!-- registeration form button-->
			<%@include file="panels/register_button.jsp" %>
		
		
		<hr>
		<!-- instructions -->
			<%@include file="panels/instructions_panel.jsp" %>
		<!--instructions end-->
		<br>
	
	</div><!--col 3-->
  
</div><!--main row div end-->
<br>







<!-- feedback toggle window -->
<%@include file="panels/feedback_toggle_panel.jsp" %>
<!--  feedback toggle window ends -->























<!-- footer -->
<%@include file="panels/footer_panel.jsp" %>
<!-- footer ends -->



</body>
</html>