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
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background-image: url('doukakos.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        
        header {
            background-color: #fff;
            color: #49392d;
            padding: 7px 0;
        }

        nav {
            font-family: 'Quicksand', sans-serif;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
        }

        .navbar-brand img {
            width: 5rem; 
            height: auto;
        }

        ul {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        ul li a {
            text-decoration: none;
            color: #49392d;
        }

        .user-actions a {
            margin-left: 20px;
            border: 1px solid #49392d;
            padding: 5px 10px;
            border-radius: 5px;
            color: #49392d;
            text-decoration: none;
        }

        .form-control {
            border-radius: 1rem;
        }
        .jumbotron {
            font-family: 'Quicksand', sans-serif;
            background-color: rgba(138, 198, 209, 0.7); /* Adjust the background color's opacity */
            padding: 20px;
            background-image: url('https://i.postimg.cc/d07CgtCG/Untitled-design-3.png'); 
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat;
        }
        #test{
        
        }
        .container {
            font-family: 'Quicksand', sans-serif;
            background-color: #E8E2DD; /* Adjust the background color's opacity */
            padding: 40px;
            border-radius: 15px;
            margin-top: 80px;
        
            
        }

        footer {
            background-color: #fff;
            color: hsl(26, 24%, 23%);
            padding: 20px 20px;
            padding-bottom: 20px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 10px;
        }

        .footer-logo img {
            width: 5rem; 
            height: auto;
        }

        .footer-logo {
            display: flex;
            flex-direction: column;
            align-items: center; 
            justify-content: center; 
        }
    </style>
</head>
<header>
    <%@ include file= "navbar.jsp" %>
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