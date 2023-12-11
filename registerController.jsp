<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ page import="exercise3_2023_2024_8210038.*"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%

String username = request.getParameter("username");
String password = request.getParameter("password");
String name = request.getParameter("name");
String surname = request.getParameter("surname");
long location = request.getParameter("location");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
List<String> errors = new ArrayList<String>();
User user = new User()
UserDAO userdao = new UserDAO();
boolean hasErrors = false;

if (name == null || name.length() < 4) {
    hasErrors = true;
    errors.add("Name must be at least 3 charachters long");
}

if (surname == null || surname.length() < 4) {
    hasErrors = true;
    errors.add("Surname must be at least 3 charachters long");
}
 
if (username == null || username.length() < 5) {
    hasErrors = true;
    errors.add("Username must be at least 5 characters long");
}

if (password == null || password.length() < 4) {
    hasErrors = true;
    errors.add("Password must be at least 6 characters long");
}

if (phone == null || password.length() != 10) {
    hasErrors = true;
    errors.add("Number phone must be 10 number long");
}
%>

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
        <a class="navbar-brand" href="index.html">
            <img src="https://i.postimg.cc/WpX4Bzwv/Brown-One-Line-Pet-Sitting-Logo-2.png" alt="Pawfect Home Logo">
        </a>
    
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
            
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html#about">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="findapet.html">Find a Pet</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listapet.html">List Your Pet</a>
                </li>
            </ul>
        </div>
    
        <div class="user-actions">
            <a class="nav-link" href="login.html">Login</a>
            <a class="nav-link" href="register.html">Register</a>
        </div>
    </nav>
</header>
<body>
    <div class="jumbotron text-center">
        <h1>Welcome to Pawfect Home</h1>
        <p>Are you ready to embark on your pet-sitting journey?</p>
    </div>
    <%
    if (hasErrors) {
     %>
    
    <div class="page-header">
        <h2>Registration form has errors</h1>
    </div>

    <div class="alert alert-danger" role="alert">
        <ol>
            <% for (String errorMsg : errors) { %>
              <li><%= errorMsg %></li>
            <% } %>
          </ol>

    </div>
        <a href="register.jsp" class="btn btn-info">
            <span class="glyphicon glyphicon-menu-left"></span> Back to the form
        </a>
    </div>
    <%
    } else {
        try {
            User user = new User(name, surname, email, phone, location, username, password);
            UserDAO userdao = new UserDAO();
            userdao.register(user);

            session.setAttribute("userCookie",user);
    %>
    <div class="page-header">
        <h2>Your registration is completed!</h1>
    </div>
    <div class="container">
        Continue your journey <a  href="homepage.jsp"><b>here</b></a> 
    <%
        }catch (Exception e) {
    %>

    <div class="page-header">
        <h2>Registration form has errors</h1>
    </div>

    <div class="alert alert-danger" role="alert">
        <%= (String) e.getMessage() %>
    </div>
        <a href="register.jsp" class="btn btn-info">
            <span class="glyphicon glyphicon-menu-left"></span> Back to the form
        </a>
    </div>
<%
        }
    }
%>
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
