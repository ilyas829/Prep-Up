
		<%
		
		if(session.getAttribute("active_user")==null)
		{
		%>

		<div style="margin:10px;">
		<div style="text-align:center">
		<a href="register.jsp">
		<button class="login_button">
		register
		</button></a>
		</div>
		</div>
		
		<%
		}
		else
		{%>
			<div style="margin:10px;">
			<div style="text-align:center">
			<form action="logout">
			<button class="login_button">
			logout
			</button></form>
			</div>
			</div>
				
		<%
		}
		%>
		