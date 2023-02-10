<%@page import="database_connection_pack.*"%>
<%@page import="java.sql.*"%>
       <%
    
   	
   	
		if(session.getAttribute("active_user")!=null)
		{
			
			String username=session.getAttribute("active_user").toString();
		   	Statement st;
		   	ResultSet rs=null;
		   	ConnectToDB ctdb= new ConnectToDB();
		   	Connection con;
		   	
		   	try 
			{
			con=ctdb.getConnectionObj();
			st=con.createStatement();
			rs=st.executeQuery("select * from test_record where username ='"+username+"'");
			rs.next();
			}
			catch(SQLException e){System.out.println("error in processing your query"+e);}
		   
			
		%>
		
		<%@page import="user_profile_manager.TestFetcher" %>
		<%
		String current_user=session.getAttribute("active_user").toString();
		TestFetcher tfff= new TestFetcher();
		int total_tests=tfff.countSavedTest(current_user);
		
		%>
		
		
		
		<div style="margin:10px;">
		<br>
		
			<div class="side_outer_box">
			<div style="width:100%;margin:auto;color:red" >
			  <div class="side_outer_box_heading">Profile</div><br>
			 
	<table style="width:100%;text-align:center;color:white;font-weight:bold;">
<tr>
<td>Logged in as :
</td>
<td><% out.print(session.getAttribute("active_user")); %>
</td>
</tr>
<tr>
<td>&nbsp;
</td>
</tr>
<tr>
<td>Total tests given :
</td>
<td><%out.write(rs.getString("test_given")); %>
</td>
</tr>
<tr>
<td>&nbsp;
</td>
</tr>
<tr>
<td>last test score :
</td>
<td><%out.write(rs.getString("last_test_score")); %>
</td>
</tr>
<tr>
<td>&nbsp;
</td>
</tr>
<tr>
<td>Tests in Saving list :
</td>
<td><%out.write(Integer.toString(total_tests)); %>
</td>
</tr>
</table><br>	
		<div style="margin:10px;">
		<div style="text-align:center">
		<a href="user_profile.jsp">
		<button class="login_button" id="profile_btn" style="visibility:visible">
		go to profile
		</button></a>
		</div>
		</div>
			</div>
			</div>
		</div>
		<%
		}
		else
		{
		%>

<div style="margin:10px;">
		<br>
		
			<div class="side_outer_box">
			<div style="width:100%;margin:auto">
			<form action="login_catcher" method="post" name="login_form" id="login_form_id">
			<div class="side_outer_box_heading">Login Here:</div><br>
	              
	            <div style="color:white;width:90%;background-color:red;text-align:center;margin:auto;border-radius:20px;"> 
	            <%  
	            char a='0';
	            String ss= request.getParameter("error");
	            if(ss!=null)
	            {
	            	a=ss.charAt(0);
	            }
	            if(a=='1')
	            out.write("invalid credentials");
	            %>
	            </div>
       
			<table class="login_table">
			<tr>
			<td> </td>
			<td ><label for="type" style="color:white;margin:auto;padding-top:12px;">Choose a Type:</label>
<select name="type" id="cars">
  <option value="S">Student</option>
  <option value="T">Teacher</option>
  <option value="C">Candidate</option>
  <option value="R">Recruiter</option>
</select></td>
			</tr>
			<tr>
			<td> </td>
			<td style="color:#ff0000;visibility:hidden" id="username_error"> Username cannot be empty </td>
			</tr>
			<tr>
			<td class="form_label">User Name:</td>
			<td>
			<input type="text"  style="width:80%;margin:auto" name="user" id="usr" placeholder="Email">
			</td>
			</tr>
			<tr>
			<td> </td>
			<td style="color:#ff0000;visibility:hidden"  id="password_error"> you must fill the password</td>
			</tr>
			<tr>
			<td class="form_label">Password:</td><td><input type="password" style="width:80%;margin:auto" placeholder="Password" name="pswd" id="pswd" ></td>
			</tr>
			<tr><td></td><td><div style="text-align:right;color:white;text-decoration:underline"></div></td>
			</tr>
			</table>
			
			<div class="login_button" style="text-align:center" onclick="login_validator()">Login</div><br>&nbsp;
			</form>
			</div>
			</div>
		</div>
		
		<%
		}
		%>