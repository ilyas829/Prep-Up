
function password_match_check()
{
if(document.getElementById('password').value==document.getElementById('password_confirm').value)
return true;
else
{
document.getElementById('password_c_err').innerHTML="password does not match";
document.getElementById('password_c_err').style.visibility="visible";
return false;
}
}
  function register_validator()
{

var j_name=document.getElementById('name').value;
var j_mobile=document.getElementById('mobile').value;
var j_email=document.getElementById('email').value;
var j_password=document.getElementById('password').value;
var j_password_confirm=document.getElementById('password_confirm').value;

if(j_name!=""&&j_mobile!=""&&j_email!=""&&j_password!=""&&j_password_confirm!="")
{
if(password_match_check())
{

document.getElementById("register_form").submit();
}
}

if(j_name!="")
{document.getElementById('name_err').style.visibility="hidden"}
if(j_mobile!="")
{document.getElementById('mobile_err').style.visibility="hidden"}
if(j_email!="")
{document.getElementById('email_err').style.visibility="hidden"}
if(j_password!="")
{document.getElementById('password_err').style.visibility="hidden"}





if(j_name=="")
{document.getElementById('name_err').style.visibility="visible"}
if(j_mobile=="")
{document.getElementById('mobile_err').style.visibility="visible"}
if(j_email=="")
{document.getElementById('email_err').style.visibility="visible"}
if(j_password=="")
{document.getElementById('password_err').style.visibility="visible"}
if(j_password_confirm==""){
document.getElementById('password_c_err').innerHTML="write your password once more";
document.getElementById('password_c_err').style.visibility="visible";
}



}//main function bracket
