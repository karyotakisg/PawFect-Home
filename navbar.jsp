<%@ page import="pawfect_home.*"%>
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <a class="navbar-brand" href="index.jsp">
        <img src="https://i.postimg.cc/WpX4Bzwv/Brown-One-Line-Pet-Sitting-Logo-2.png" alt="Pawfect Home Logo">
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
        
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp#about">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="findapet.jsp">Find a Pet</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="listapet.jsp">List Your Pet</a>
            </li>
        </ul>
    </div>

    <% User user = (User) session.getAttribute("userCookie");
    if  (user == null) {
    %>
        <div class="user-actions">
            <a class="nav-link" href="login.jsp">Login</a>
            <a class="nav-link" href="register.jsp">Register</a>
        </div>
    <% } else {%>
    </ul>
    <div class="nav navbar-nav navbar-right">
        <li>
            <p style="color:rgb(87, 85, 85)" class="navbar-text">Signed in as <%=user.getUsername()%></p>
        </li>
        <li>
            <a style="margin-left: 5px" class="nav-link" href="logout.jsp"> Sign out</a>
        </li>								        	
    </div>	
<% 
} 
%>
</nav>


    