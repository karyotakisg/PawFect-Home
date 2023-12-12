<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="pawfect_home.*"%>
<html>
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
                <div class="container mt-5" id="containerforlisting">
                <%
                List<String> errorMessages = (List<String>) request.getAttribute("messages");
                if( errorMessages != null){
                %>
                <div class="text-center alert alert-danger" role="alert" style="background-color: #ffcccc; border-radius: 1rem;">
                    <ol>
                        <% for (String error : errorMessages) { %>
                                <ul> <%= error %> </ul>
                        <% } %>
                    </ol>
                </div>
                <%
                }
                User user = (User) session.getAttribute("userCookie");
                if(user == null){
                    %>
                    <div class="text-center alert alert-warning" role="alert" style=" border-radius: 1rem;">
                    You must be registered to sumbit your listing!
                    </div>
                <% } %>
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <div class="card">
                                <div class="card-body">
                                    <h2 class="card-title text-center">List Your Pet
                                        &#x2764;</h2>
                                    <form action="listapetController.jsp" method="post">
                                        <div class="form-row justify-content-between">
                                            <div class="form-group col-md-5">
                                                <label for="petName">Pet Name</label>
                                                <input type="text" class="form-control"
                                                    id="petName"  name="petName"
                                                    placeholder="Enter Pet's Name"
                                                    required>
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="petType">Animal</label>
                                                <input type="text" class="form-control"
                                                    id="petType" placeholder="e.g. Cat" name="animal"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="form-row justify-content-between">
                                            <div class="form-group col-md-5">
                                                <label for="petBreed">Breed (optional)</label>
                                                <input type="text" class="form-control"
                                                    id="petBreed" name="breed"
                                                    placeholder="Enter Breed">
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label for="petSize">Size</label>
                                                <input type="number" class="form-control"
                                                    id="petSize" name="petSize"
                                                    placeholder="The length of your pet" required>
                                            </div>
                                        </div>

                                        <div class="form-row justify-content-between">
                                            <div class="form-group">
                                                <label for="petImage">Picture</label>
                                                <input type="file" name="img"
                                                    class="form-control-file"
                                                    id="petImage" accept="image/*"
                                                    required>
                                            </div>
                                            <div class="form-group col-md-5">
                                                <label >Reward</label>
                                                <div class="input-group" >
                                                    <input type="number" name="price"
                                                        class="form-control" required>
                                                    <span class="input-group-text">€</span>
                                                    <div class="input-group-append">
                                                        <select class="custom-select"
                                                            id="priceUnit" required>
                                                            <option value="day">Per Day</option>
                                                            <option value="week">Per
                                                                Week</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group" id="datepicker">
                                            <label for="stayDuration">Duration</label>                                  
                                            <div class="input-daterange input-group">
                                                <input type="text" class="form-control" style="border-radius: 1rem;" name="start" id="startDate" placeholder="From" required>
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">-</span>
                                                </div>
                                                <input type="text" class="form-control" name="end" id="endDate" style="border-radius: 1rem;" placeholder="To" required>
                                            </div>
                                        </div>
                                        
                                        <div class="m_form-group m_form-check m_form-check-inline">
                                            <input type="checkbox" class="m_form-check-input" id="m_petAtHome" name="stay_home">
                                            <label class="m_form-check-label" for="m_petAtHome">I require the pet-sitter to stay at my home</label>
                                        </div>
                                        <div class="form">
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea class="form-control"
                                                    id="description" rows="4" name="description"
                                                    placeholder="Write comments about your pet"></textarea>
                                            </div>
                                    <% if(user!=null){ %>
                                            <button type="submit"
                                                class="btn btn-primary">List
                                                My Pet</button>
                                    <% } else{ %>
                                            <button type="submit"
                                                class="btn btn-primary" disabled>List
                                                My Pet</button>
                                    <% } %>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
                <script>
                    // Initialize the Datepicker for date range
                    $('#datepicker .input-daterange').datepicker({
                        format: 'yyyy-mm-dd',
                        autoclose: true
                    });
                </script>
                <%@ include file="footer.jsp" %>
               
                
    </body>
</html>