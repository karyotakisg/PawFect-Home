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
    <style>
        dl {
            list-style-type: none;
            
        }
    </style>
</head>
<header>
   <%@ include file="navbar.jsp" %>
</header>
<body>
    <div class="jumbotron text-center">
        <h1>Welcome to Pawfect Home</h1>
        <p>Are you ready to embark on your pet-sitting journey?</p>
    </div>

    <div class="container text-center">
        <% if(request.getAttribute("message") != null) { %>		
            <div class="alert alert-danger text-center" role="alert"
            style="background-color: #ffcccc; border-radius: 1rem;">
                <%=(String)request.getAttribute("message") %></div>
        <% } %>

        <%
        List<String> errorMessage = (List<String>) request.getAttribute("errorMessage");
        %>
        <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
            <div class="alert alert-danger text-center" role="alert"
            style="background-color: #ffcccc; border-radius: 1rem;">
                <dl class="text-center" id="errorMessage">
                    <% for (String error : errorMessage) { %>
                      <li><%= error %></li>
                    <% } %>
                    </dl>
            </div>
            <% } %>

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
   <%@ include file="footer.jsp" %>   

</body>
</html>