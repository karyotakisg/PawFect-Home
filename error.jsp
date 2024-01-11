<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
            <%@ include file="navbar.jsp" %>
        </header>

		<div class="container theme-showcase" role="main">
		    <div class="page-header">
			    <h1>Oops something went wrong</h1>
		    </div>
        <style>
            .centered {
              position: fixed;
              top: 40%;
            }
        </style>
            <div class="row">
			    <div class="col-10 offset-1 col-md-4 offset-md-2 centered">
			    	<h2>Description</h2>
			    	<% if(exception != null) { %>	                  	
			    		<p><code><%=exception %></code></p>						
			    	<% } %>		
			    </div>
            </div>
		</div> 
			
        <%@ include file="footer.jsp" %>
        </body>