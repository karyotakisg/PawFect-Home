<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pawfect_home.*"%>
<%@ page import="java.util.List, java.util.ArrayList" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List of listing</title>
    <link rel="stylesheet" href="css/findapet.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700&display=swap" rel="stylesheet">

  </head>
  <body>
 <!--navbar-->
    <header>
        <%@ include file= "navbar.jsp" %>
    </header>
    <div class = background>
    <!-- Background Image with Title -->
    <div class="bg-image">
      <div class="container">
        <div class = text-box>
        <div class="title">
          <h1>Find your temporary pet</h1>
        </div >
        <p class = "text">Browse our listings to find <br>the pawfect temporary companion!</p>
        </div>
      </div>
    </div>
    <!--Ratio buttons-->
    <div class = h2>
      <h2>Current Listings</h2>
    </div>
    
    <%
    if (user == null) {
    %>
    <div class="text-center">
        <div class="alert alert-warning d-inline-block" role="alert" style="border-radius: 1rem; margin-top: 10px;">
            You must be registered to see more info for the pets!
        </div>
    </div>
    <% } %>

    <!--Group Card-->
    <%
    PetDAO petd = new PetDAO();
    List<Pet>listofpet = petd.getPets();
    %>
    <div class="row row-cols-1 row-cols-md-3 g-4">
    <%
    
    for (Pet pet : listofpet) {
    %>

    }

    
      <div class="col">
        <div class="card h-100">
            <div class="row g-0">
                <div class="col-md-6">
                    <img class="img-thumbnail" src="images/pet1.jpg" alt="Card Image" >
                </div>
                <div class="col-md-6">
                    <div class="card-body">
                        <h5 class="card-title">JimD</h5>
                        <div class="row">
                            <div class="col">
                                <p><strong>Location:</strong> Artemida</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p><strong>Price:</strong> $30 per week</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                              <p><strong>Dates:</strong> 02/02/2023 - 02/03/2023</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p><small>Uploaded at 18/02/2022</small></p>
                            </div>
                        </div>
                        <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cardModal1">
                            See More
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col">
      <div class="card h-100">
          <div class="row g-0">
              <div class="col-md-6">
                  <img class="media-object img-thumbnail" src="images/pet2.jpg" alt="Card Image">
              </div>
              <div class="col-md-6">
                  <div class="card-body">
                      <h5 class="card-title">Johnny</h5>
                      <div class="row">
                          <div class="col">
                              <p><strong>Location:</strong> Chania, Greece</p>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col">
                              <p><strong>Price:</strong> $3 per day</p>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col">
                              <p><strong>Dates:</strong> 20/01/2023 - 4/02/2023</p>
                          </div>
                      </div>
                      <div class="row">
                        <div class="col">
                            <p><small>Uploaded at 01/01/2022</small></p>
                        </div>
                    </div>
                      <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cardModal1">
                          See More
                      </button>
                  </div>
              </div>
          </div>
      </div>
  </div>
  
  <div class="col">
    <div class="card h-100">
        <div class="row g-0">
            <div class="col-md-6">
                <img class="media-object img-thumbnail" src="images/pet3.jpg" alt="Card Image">
            </div>
            <div class="col-md-6">
                <div class="card-body">
                    <h5 class="card-title">Mairi</h5>
                    <div class="row">
                        <div class="col">
                            <p><strong>Location:</strong> Argos, Greece</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p><strong>Price:</strong> $7 per day</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                          <p><strong>Dates:</strong> 10/12/2023 - 17/12/2023</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p><small>Uploaded at 03/05/2022</small></p>
                        </div>
                    </div>                   
                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cardModal1">
                        See More
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

      <div class="col">
    <div class="card h-100">
        <div class="row g-0">
            <div class="col-md-6">
                <img class="media-object img-thumbnail" src="images/pet4.jpg" alt="Card Image">
            </div>
            <div class="col-md-6">
                <div class="card-body">
                    <h5 class="card-title">Efti</h5>
                    <div class="row">
                        <div class="col">
                            <p><strong>Location:</strong> Exarcheia, Athens</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p><strong>Price:</strong> $10 per day</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p><strong>Dates:</strong> 22/03/2023 - 27/03/2023</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p><small>Uploaded at 29/10/2022</small></p>
                        </div>
                    </div>                   
                    <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#cardModal1">
                        See More
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<%@ include file="footer.jsp" %>  

      
      <!-- Modal -->
<div class="modal fade" id="cardModal1" tabindex="-1" role="dialog" aria-labelledby="cardModal1Label" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="cardModal1Label">More Information</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-6">
            <img src="images/pet1.jpg" class="img-fluid mb-2" alt="Larger Image">
          </div>
          <div class="col-md-6">
            <h5>JimD</h5>
            <p>Animal: Dog <br> Breed: Labrador <br> Stay at owner: False <br> Location: Artemida, Athens <br>Dates: 01/01/2023 - 01/01/2023  <br> Price: $250 <br> Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis justo id dolor cursus condimentum.</p>
            <button type="button" class="btn btn-success">I am Interested</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  </body>
</html>
