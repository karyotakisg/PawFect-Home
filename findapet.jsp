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
    ListingDAO listingd = new ListingDAO();
    List<Listing> listoflistings = listingd.getListings();
    if (listoflistings.isEmpty()) { %>
    <div class="text-center">
    <div class="alert alert-info d-inline-block" role="info" style="border-radius: 1rem; margin-top: 10px;">
        At this moment there is no pets to care.<br> Please try again later :)
    </div>
</div>


    <% } else {
    %>
    <div class="row row-cols-1 row-cols-md-3 g-4">
    <%
    
    for (Listing post : listoflistings) {
        UserDAO userd = new UserDAO();
        PetDAO petd = new PetDAO();
        User userofpost = userd.getUsersByUsername(post.getUsername);
        Pet petofpost = petd.getPetByPostid(post.getPostid());
        if (userofpost != null && petofpost != null) {
            break;
        } else {
    %>

    <div class="col">
        <div class="card h-100">
            <div class="row g-0">
                <div class="col-md-6">
                    <img class="img-thumbnail" src="images/pet1.jpg" alt="Card Image" >
                </div>
                <div class="col-md-6">
                    <div class="card-body">
                        <h5 class="card-title"><%=petofpost.getPet_name() %></h5>
                        <div class="row">
                            <div class="col">
                                <p><strong>Location:</strong> <%=userofpost.getLocation() %>></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p><strong>Price:</strong> $<%=post.getPrice()%>  per day</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                              <p><strong>Dates:</strong> <%=post.getStart_date() %> - <%=post.getEnd_date() %></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p><small>Uploaded at <%=post.getUpload_date() %></small></p>
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
                <h5><%=petofpost.getPet_name() %></h5>
                <p>Animal: <%=petofpost.getKind_of_pet()%>
                    <br> Breed: <%=petofpost.getBreed()%>
                    <% if (post.getStay_at_owner()){ %>
                        <br> Stay at owner: False
                    <% } else { %>
                        <br> Stay at owner: True
                    <% } %>
                     
                    <br> Location: <%=userofpost.getLastname()%> 
                    <br>Dates: <%=post.getStart_date() %> - <%=post.getEnd_date() %>  
                    <br> Price: $<%=post.getPrice()%>  per day 
                    <br> Description: <%=post.getDescription()%></p>
                <button type="button" class="btn btn-success">I am Interested</button>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>

    <% }
    }
    } %>

</div>
<%@ include file="footer.jsp" %>  


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  </body>
</html>
