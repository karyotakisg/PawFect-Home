<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
</head>
<header>
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

    <div class="user-actions text-center">
        <a class="nav-link" href="login.jsp">Login</a>
        <a class="nav-link" href="register.jsp">Register</a>
    </div>

</nav>
</header>
<body>
    <div class="jumbotron text-center">
        <h2>It's good to have you back</h2>
        <p>Time to find the perfect home for our little buddies!</p>
    </div>

    
    <div class="container text-center">
        <% if(request.getAttribute("message") != null) { %>	
            
                    <div class="alert alert-danger text-center" role="alert" style="background-color: #ffcccc; border-radius: 1rem;">
                        <%=(String)request.getAttribute("message") %></div>
                <% } %>
            
        
        <h2>Login</h2>
        <form id="form" name="form" method="POST"
         action="loginController.jsp">
            <div class="form-group text-left">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
            </div>
            <div class="form-group text-left">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </div>
        </form>
    </div>
     <%@ include file="footer.jsp" %> 

</body>
</html>
