<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<head>
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
        <!-- Add custom styles for the background color -->

    </head>
    <body id="bodylisting">
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

		<div class="container theme-showcase" role="main">
		    <div class="page-header">
			    <h1>Oops something went wrong</h1>
		    </div>
        
            <div class="row">
			    <div class="col-xs-12">
			    	<h2>Description</h2>
			    	<% if(exception != null) { %>	                  	
			    		<p><code><%=exception %></code></p>						
			    	<% } %>		
			    </div>
            </div>
		</div> 
			
		</div>
        <%@ include file="footer.jsp" %>
        </body>