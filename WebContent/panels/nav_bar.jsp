<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Itim&display=swap" rel="stylesheet">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp" style="color:white;font-family: 'Itim', cursive;font-size:40px;letter-spacing:1.7px;" >
      Prep-Up</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
		
		
      </ul>
      <ul class="nav navbar-nav navbar-right" style="margin:auto;">
        <li><a href="register.jsp"><%if(session.getAttribute("active_user")==null){ %>
        <span class="glyphicon glyphicon-user"></span> Register <%} %></a>
        </li>
        <li><a href="#"  onclick="login_focus()">
        <%if(session.getAttribute("active_user")==null){ %>
        <span class="glyphicon glyphicon-log-in">
        </span> Login<%} %></a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>