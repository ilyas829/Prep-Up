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
	TestFetcher tff= new TestFetcher();
	ResultSet rss=tff.testData(user_active);
	ResultSet rsss=tff.testMat(u_type);
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
		<%@include file="jscript/feedback_toggle_js.jsp" %>
		
		</script>


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
<div class="container-fluid">

<!-- working window col-9-->
    <div class="col-lg-9" style="background-color:transparent;">
		
<div style="background-color:white;overflow:auto;height:644px;margin-right:-33px">
	<br>
	<div class="main_window_heading">
	Saved Tests
			
	</div>
	<hr>
	
	
	<div style="padding:10px;margin:10px;border:2px solid black;">
	
	<h3 style="color:gray">Click on the test bar to begin the test.</h3>
	
	<hr>
	
	
	<!-- this panels shows all the tests you have saved -->
	<div style="width:90%;text-align:center;margin:auto">
	
	<table class="saved_list_table">
	<tr style="font-size:1.2em;background:black;color:white;font-weight:bold;">
	<td>Sr.</td>
	<td>Subject
	</td>
	<td>Category
	</td>
	<td>Added on
	</td>
	<td>&nbsp;
	</td>
	<td>&nbsp;
	</td>
	</tr>
	
	<tr><td style="height:10px;"></td></tr>
	
	
	
	
	<%
	int sr = 1;
	while(rss.next())
	{
		
	%>
	<tr style="color:white;background-color:#222222;">
	<td><%out.write(Integer.toString(sr)); %>
	</td>
	<td><%out.write(rss.getString("subject")); %>
	</td>
	<td><%out.write(rss.getString("category")); %>
	</td>
	<td><%out.write(rss.getString("time").substring(0, 9)); %>
	</td>
	<td><a href="mcq.jsp?tbl=<%out.write(rss.getString("subject")); %>&cat=<%out.write(rss.getString("category")); %>"><button style="color:white;background-color:orange;width:90px;margin:5px">Go</button></a>
	</td>
	<td><a href="remover.jsp?serial=<% out.write(rss.getString("sr")); %>" style="font-size:1.3em;text-decoration:none;color:red;">&#10008;</a>
	</td>
	</tr>
		<tr><td style="height:10px;"></td></tr>
	<%sr++;
	}
	%>
	
	</table>
	
	
	<% if(sr==1){%>
	
	<div style="background-color:gray;color:yellow;padding:10px">Your List is empty.</div>
	<%} %>

	</div>
	
	
	<br>
	<br>
	<form method="get" id="demoForm" class="demoForm" action="test_saver_catcher" style="padding:3px;background-color:#222222;color:white">
	Select Subject:
<select name="category" style="color:black">
    <option value="gk">gk</option>
    <option value="aptitude">aptitude</option>
    <option value="computer">computer</option> 
    <option value="reasoning">reasoning</option>
    <option value="english">english</option>
    <option value="mix">Mix</option>
</select>

	select Category:<select name="choices[]" id="choices"  style="color:black">
    <!-- js populates -->
</select>
	<input type="submit" value="add" style="margin:15px;color:black">
	<input type="text" name="active_user" value="<%out.write(session.getAttribute("active_user").toString()); %>" style="visibility:hidden;position:absolute">
	</form>
	
	--------------------------------------------------------------------------------------------------------------------
	
	<h3 style="color:gray">Available material</h3>
	
	<hr>
	
	
	<!-- this panels shows all the tests you have saved -->
	<div style="width:90%;text-align:center;margin:auto">
	
	<table class="saved_list_table">
	<tr style="font-size:1.2em;background:black;color:white;font-weight:bold;">
	<td>Sr.</td>
	<td>Category
	</td>
	<td>Topic
	</td>
	<td>
	</td>
	<td>&nbsp;
	</td>
	<td>&nbsp;
	</td>
	</tr>
	
	<tr><td style="height:10px;"></td></tr>
	

	<%
	// added to display study material on 7yh feb
	int srr = 1;
	while(rsss.next())
	{
	
	%>
	<tr style="color:white;background-color:#222222;">
	<td><%out.write(Integer.toString(srr)); %>
	</td>
	<td><%out.write(rsss.getString(1)); %>
	</td>
	<td><%out.write(rsss.getString(2)); %>
	</td>
	<td><a href="panels/material_dis.jsp"><button style="color:white;background-color:orange;width:90px;margin:5px">Go</button></a>
	</td>
	<td><a href="remover.jsp" style="font-size:1.3em;text-decoration:none;color:red;">&#10008;</a>
	</td>
		<tr><td style="height:10px;"></td></tr>
	<%srr++;
	}
	%>
	
	</table>
	
	
	<% if(srr==1){%>
	
	<div style="background-color:gray;color:yellow;padding:10px">Your List is empty.</div>
	<%}//Study material ends %>

	</div>
	
	

<script type="text/javascript">
/*
From JavaScript and Forms Tutorial at dyn-web.com
Find information and updates at http://www.dyn-web.com/tutorials/forms/
*/

// removes all option elements in select list 
// removeGrp (optional) boolean to remove optgroups
function removeAllOptions(sel, removeGrp) {
    var len, groups, par;
    if (removeGrp) {
        groups = sel.getElementsByTagName('optgroup');
        len = groups.length;
        for (var i=len; i; i--) {
            sel.removeChild( groups[i-1] );
        }
    }
    
    len = sel.options.length;
    for (var i=len; i; i--) {
        par = sel.options[i-1].parentNode;
        par.removeChild( sel.options[i-1] );
    }
}

function appendDataToSelect(sel, obj) {
    var f = document.createDocumentFragment();
    var labels = [], group, opts;
    
    function addOptions(obj) {
        var f = document.createDocumentFragment();
        var o;
        
        for (var i=0, len=obj.text.length; i<len; i++) {
            o = document.createElement('option');
            o.appendChild( document.createTextNode( obj.text[i] ) );
            
            if ( obj.value ) {
                o.value = obj.value[i];
            }
            
            f.appendChild(o);
        }
        return f;
    }
    
    if ( obj.text ) {
        opts = addOptions(obj);
        f.appendChild(opts);
    } else {
        for ( var prop in obj ) {
            if ( obj.hasOwnProperty(prop) ) {
                labels.push(prop);
            }
        }
        
        for (var i=0, len=labels.length; i<len; i++) {
            group = document.createElement('optgroup');
            group.label = labels[i];
            f.appendChild(group);
            opts = addOptions(obj[ labels[i] ] );
            group.appendChild(opts);
        }
    }
    sel.appendChild(f);
}

// anonymous function assigned to onchange event of controlling select list
document.forms['demoForm'].elements['category'].onchange = function(e) {
    // name of associated select list
    var relName = 'choices[]';
    
    // reference to associated select list 
    var relList = this.form.elements[ relName ];
    
    // get data from object literal based on selection in controlling select list (this.value)
    var obj = Select_List_Data[ relName ][ this.value ];
    
    // remove current option elements
    removeAllOptions(relList, true);
    
    // call function to add optgroup/option elements
    // pass reference to associated select list and data for new options
    appendDataToSelect(relList, obj);
};

// object literal holds data for optgroup/option elements
var Select_List_Data = {
    
    // name of associated select list
    'choices[]': {
        
        // names match option values in controlling select list
        gk: {
            
            
                text: ['polity', 'Sports', 'geography','history'],
                value: ['polity','sports', 'geography', 'history']
           
               
            
        },
        aptitude: {
            // example without optgroups
            text: ['train problem', 'time and work', 'percentage', 'probability'],
            value: ['trains', 'time_and_work', 'percentage', 'probability']
        },
        computer: {
        	 text: ['c/c++', 'java', 'networking', 'dbms', 'operating system'],
             value: ['ccpp', 'java', 'networking', 'dbms', 'operating_system']
        },
        reasoning: {
       	 text: ['puzzles', 'number series', 'ranking', 'blood relation'],
            value: ['puzzle', 'number_series', 'ranking', 'blood_relation']
       },
        english: {
          	 text: ['beginner', 'intermediate', 'advance'],
               value: ['beginner', 'intermediate', 'advance']
          },
        mix: {
          	 text: ['level 1', 'level 2', 'level 3','level 4'],
               value: ['level1', 'level2', 'level3','level4']
          }
        
    }
    
};

// populate associated select list when page loads
window.onload = function() {
    var form = document.forms['demoForm'];
    
    // reference to controlling select list
    var sel = form.elements['category'];
    sel.selectedIndex = 0;
    
    // name of associated select list
    var relName = 'choices[]';
    // reference to associated select list
    var rel = form.elements[ relName ];
    
    // get data for associated select list passing its name
    // and value of selected in controlling select list
    var data = Select_List_Data[ relName ][ sel.value ];
    
    // add options to associated select list
    appendDataToSelect(rel, data);
};

</script>
	</div>	
</div>     
	
	</div><!--col 9 working window ends-->
   
	
	
	<div class="col-lg-3" style="background-color:#222222;">
		
		<!--login form-->
		
		
		<%@include file="panels/login_panel.jsp" %>
		
		<script>
document.getElementById("profile_btn").style.visibility="hidden";
</script>
		
		
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