<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/register.css">
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
    
        <div class="user-actions">
            <a class="nav-link" href="login.jsp">Login</a>
            <a class="nav-link" href="register.jsp">Register</a>
        </div>
    </nav>
</header>
<body>
    <div class="jumbotron text-center">
        <h1>Welcome to Pawfect Home</h1>
        <p>Are you ready to embark on your pet-sitting journey?</p>
    </div>

    <% if(request.getAttribute("message") != null) { %>		
        <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
    <% } %>

    <%
    List<String> errorMessage = (List<String>) request.getAttribute("errorMessage");
    %>
    <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <div class="alert alert-danger text-center" role="alert">
        <dl class="text-center">
            <% for (String error : errorMessage) { %>
              <dt><%= error %></li>
            <% } %>
        </dl>
    </div>
    <% } %>

    <div class="container text-center">
        <h2>Register</h2>
        <form id="form" name="form" method="POST"
        action="registerController.jsp">
            <div class="form-row">
                <div class="col">
                    <div class="form-group text-left">
                        <label for="name">firstname</label>
                        <input type="text" class="form-control" id="name" name="firstname" placeholder="Enter your first name" required>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group text-left">
                        <label for="surname">Surname</label>
                        <input type="text" class="form-control" id="surname" name="surname" placeholder="Enter your surname" required>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="form-group text-left">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Choose a username" required>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group text-left">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Create a password" required>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="form-group text-left">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                    </div>
                </div>
                <div class="col">
                    <div class="form-group text-left">
                        <label for="phone">Phone Number</label>
                        <input type="tel" class="form-control" id="phone" name="phone"placeholder="Enter your phone number" required>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <div class="form-group text-left">
                        <label for="location">Location</label>
                        <input type="text" class="form-control" id="location" name="location" placeholder="Enter your location" required>
                    </div>
                </div>
                
            </div>
            <button type="submit" class="btn btn-primary">Sign up</button>
        </form>
    </div>
    <footer>
        <div class="footer-content">
            <div class="footer-logo">
                <img src="https://i.postimg.cc/WpX4Bzwv/Brown-One-Line-Pet-Sitting-Logo-2.png" alt="Pawfect Home Logo"> <!-- Replace 'your-logo.png' with your logo image -->
            </div>
            <div class="footer-info">
                <p>&copy; 2023 Pawfect Home</p>
                <p><a href="#privacy-policy">Privacy Policy</a> | <a href="#terms-of-service">Terms of Service</a></p>
            </div>
        </div>
    </footer>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>