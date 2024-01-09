<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="pawfect_home.*"%>
<html>
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
                    <%@ include file= "navbar.jsp" %>
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
                if(user == null){
                    %>
                    <div class="text-center alert alert-warning" role="alert" style=" border-radius: 1rem;">
                    You must be registered to sumbit your listing!
                    </div>
                <% } %>
                            
                <div class="card">
                    <div class="card-body">
                                    <h2 class="card-title text-center">List Your Pet
                                        &#x2764;</h2>
                                    <form action="listapetController.jsp" method="post" accept-charset="UTF-8" >
                                        <div class="form-row justify-content-between">
                                            <div class="form-group col-12 col-md-5">
                                                <label for="petName">Pet Name</label>
                                                <input type="text" class="form-control"
                                                    id="petName"  name="petName"
                                                    placeholder="Enter Pet's Name"
                                                    required>
                                            </div>
                                            <div class="form-group col-12 col-md-5">
                                                <label for="petType">Animal</label>
                                                <input type="text" class="form-control"
                                                    id="petType" placeholder="e.g. Cat" name="animal"
                                                    required>
                                            </div>
                                        </div>
                                        <div class="form-row justify-content-between">
                                            <div class="form-group col-12 col-md-5">
                                                <label for="petBreed">Breed (optional)</label>
                                                <input type="text" class="form-control"
                                                    id="petBreed" name="breed"
                                                    placeholder="Enter Breed">
                                            </div>
                                            <div class="form-group col-12 col-md-5">
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
                                            <!-- Add a hidden input field for the image URL -->
                                            <input type="hidden" id="imageUrl" name="imageUrl">

                                            <script>
                                                document.getElementById('petImage').addEventListener('change', function (event) {
                                                    const fileInput = event.target;
                                                    const imageUrlInput = document.getElementById('imageUrl');
                                    
                                                    // Check if a file is selected
                                                    if (fileInput.files && fileInput.files[0]) {
                                                        const file = fileInput.files[0];
                                    
                                                        // Read the file as base64
                                                        const reader = new FileReader();
                                                        reader.onload = function (e) {
                                                            // Save the base64 data URL in the hidden input field
                                                            imageUrlInput.value = e.target.result;
                                                        };
                                                        reader.readAsDataURL(file);
                                                    }
                                                });
                                            </script>

                                            <div class="form-group col-12 col-md-5">
                                                <label >Reward</label>
                                                <div class="input-group" >
                                                    <input type="number" name="price" required>
                                                    <span class="input-group-text">€</span>
                                                    <div class="input-group-append">
                                                        <select class="custom-select"
                                                            id="priceUnit" required>
                                                            <option value="day">Per Day</option>
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
                                <div class="form"style="margin-bottom:5rem">
                                <div class="form-group" >
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="description" rows="4" name="description" placeholder="Write comments about your pet"></textarea>
                                </div>
                                <% if (user != null) { %>
                                <button type="submit" class="btn btn-primary">List My Pet</button>
                                <% } else { %>
                                <button type="submit" class="btn btn-primary" disabled>List My Pet</button>
                                <% } %>
                                
                            </div>
                        </form>
                                    
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