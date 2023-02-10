<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
working on your request . Please wait........


<%@page import="user_profile_manager.SavedTestRemover"%>
<%
String serial_no= request.getParameter("serial");
SavedTestRemover str=new SavedTestRemover();
if(str.removerMethod(serial_no))
{
	%>
	success
	
	<%
	response.sendRedirect("user_profile.jsp");
	
	
}
else
{
	%>
	failed to remove the requested resources. try again or contact the admin.
	
	<%
}

%>



</body>
</html>
