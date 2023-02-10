<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0); %>
    
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

	

<!--updated column!-->
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
  
</div>
<!--main row div end-->
<br>



<!-- feedback toggle window -->
<%--include file="panels/feedback_toggle_panel.jsp" --%>
<!--  feedback toggle window ends -->



<!-- footer -->
<%@include file="panels/footer_panel.jsp" %>
<!-- footer ends -->

</body>
</html>