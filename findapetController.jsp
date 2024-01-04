<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pawfect_home.*" %> 

<%  User user = (User) session.getAttribute("userCookie");
    if (user == null) { %>
    <jsp:forward page="login.jsp" />
<% } else {
    request.setCharacterEncoding("UTF-8");
    String body = request.getParameter("body");
    String recipient = request.getParameter("recipient");
    Mail mail = new Mail(recipient, body);
    mail.sendEmail();
%>

	<meta http-equiv="refresh" content="6;url=findapet.jsp" />
     <meta charset="UTF-8">
        <title>Pet Sharing Platform</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Include Bootstrap Datepicker CSS -->
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
        <link
            href="https://fonts.googleapis.com/css?family=Quicksand:400,700&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="css/listapet.css">
        
        <style>
            .centered {
              position: fixed;
              top: 40%;
              left: 30%
            }
        </style>
<body id="bodylisting">	
	<div class="container theme-showcase d-flex justify-content-center align-items-center" role="main">
    <div class="alert alert-success text-center centered" role="alert" style="background-color: white; border-radius: 1rem;">
    <%= body %>
        Thank you for your interest! We sent an email to the owner of the pet to inform him.
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0m-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
        </svg>
    </div>
</div>


    <!-- Include Bootstrap JS (optional) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- Include Bootstrap Datepicker JS -->
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          
    </body>
<% } %>
