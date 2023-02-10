function login_validator()
{
var user_name=document.getElementById("usr").value;
var password=document.getElementById("pswd").value;
if((user_name!="")&&(password!=""))
	{	
	 document.getElementById("login_form_id").submit();
	}
else
	{
		if(user_name=="")
			{
			document.getElementById("username_error").style.visibility="visible";
			}
		if(password=="")
			{
			document.getElementById("password_error").style.visibility="visible";
			}
	}

}
