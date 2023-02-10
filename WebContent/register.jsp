<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
if(session.getAttribute("active_user")!=null)
{
	response.sendRedirect("index.jsp");
}

%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
 <%@include file="panels/files_includer.jsp"  %>
 
 
  <script> 
  <%@include file="jscript/feedback_toggle_js.jsp" %>


<%@include file="jscript/register_validator_js.jsp"%>



function login_focus()
{
//alert("hello");
document.getElementById("usr").focus();
}


<%@include file="jscript/login_validator_js.jsp" %>


</script>
  
  
  
  
  

</head>


<body style="background-color:#5D5C61;">


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
	


<br>
	<div class="main_window_heading">
		Fill your Details
	</div><br><hr>
	<table style="position:relative;width:100%;left:25%">
	<tr>
	<td>
	<div style="width:50%;border:3px solid white;border-radius:20px;padding:10px;box-shadow:0px 5px 20px black;background-color:#222222">
	<form class="form-horizontal" id="register_form" action="register_catcher" style="color:white" >
 
   <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name:</label>
 <div style="color:red;visibility:hidden" id="name_err">name cannot be empty</div>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name">
      </div>
    </div>
	
  
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="pwd">User Type:</label>
      <div class="col-sm-10" style="text-align:left">          
       <div class="radio">
      <label><input type="radio" name="type" checked value="T">Teacher</label>
    </div>
    <div class="radio">
      <label><input type="radio" name="type" value="S">Student</label>
    </div>
        <div class="radio">
      <label><input type="radio" name="type" value="C">Candidate</label>
    </div>
        <div class="radio">
      <label><input type="radio" name="type" value="R">Recruiter</label>
    </div>
   
      </div>
    </div>
	
	
	 <div class="form-group">
      <label class="control-label col-sm-2" for="email"><span style="color:white;">Mobile:</span></label>
      <div style="color:red;visibility:hidden" id="mobile_err">Enter Mobile Number</div>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="mobile" placeholder="Mobile Number" name="mobile">
      </div>
    </div>
	
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Email:</label>
      <div style="color:red;visibility:hidden" id="email_err">You must give email</div>
      <div class="col-sm-10">          
        <input type="email" class="form-control" id="email" placeholder="Email Address" name="email">
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div style="color:red;visibility:hidden" id="password_err">Enter password</div>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
      </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Confirm Password</label>
      <div style="color:red;visibility:hidden" id="password_c_err">Password does not match</div>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password_confirm" placeholder="Confirm password" name="password_confirm">
      </div>
    </div>
	
	
   
	
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
      <script type="text/javascript">
      function redi(){
      alert="Registered Sucessfully";
      window.location.href("index.jsp");
      }</script>
     <div onclick="register_validator()" style="padding:5px;text-align:center;background-color:green"><a href="inedx.jsp">click to submit</a></div>
       <!--  <button class="btn btn-default" onclick="register_validator()">Submit</button>
      -->
      </div>
    </div>
	
  </form>
	</div>
	</td>
	</tr>
	</table>
	<hr>

	
	
	
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