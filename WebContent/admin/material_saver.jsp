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
String uas_type= session.getAttribute("type").toString();
System.out.println(uas_type);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Material</title>
<script>
	function subm(){
		alert("Material added");
	}
</script>
</head>
<body style="background-color:#5D5C61;padding-top:20px">
 <div style="background-color:#222222;color:white;padding-top:10px;border:1px solid black;border-radius:5px;width:50%;margin:auto;">
	<div style="width:100%;margin:auto;background-color:black">
		<table style="width:90%;margin:auto;text-align:left">
		<tr>
		<td>
		Subject :<% out.write(request.getParameter("category")); %>
		</td>
		<td>Category :<% out.write(request.getParameter("choices[]")); %>
		</td></tr>
		</table>
	</div>
		<hr>
		<br>
		<form action="material_adder_catcher">
		<%--
		while(question_loop>=i)
		{
		--%><div style="display:grid;">
		Topic Name<input type="text" style="height:20px;margin-top:15px;width:50%;text-align:center;" name="topic">
		<br>
		<input type="textarea" name="material" style="height:150px;margin:25px;padding:90px"><br> 
		<input type="submit" style="margin:auto;text-align:center;width:40%;height:30px" onclick="subm()">
		</div>
	</form>
	</div>
		<hr>

</body>
</html>