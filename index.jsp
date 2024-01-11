<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.8">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <title>Pawfect Home - Your Pet-Sitter Platform</title>
</head>
<body>
    <header>
       <%@ include file= "navbar.jsp" %>
    </header>

    <%
	    if (request.getAttribute("successfulRegistration") != null) {
    %>
    <div class="container text-center">
            <div class="alert alert-success">
                <%=(String)request.getAttribute("successfulRegistration") %>
            </div>
    </div>
    <%  }   %>

    <%
	    if (request.getAttribute("successLogin") != null) {
    %>
    <div class="container text-center">
            <div class="alert alert-success">
                <%=(String)request.getAttribute("successLogin") %>
            </div>
    </div>

    <%  }    %>

    <%
	    if (request.getAttribute("successLogout") != null) {
    %>
    <div class="container text-center">
            <div class="alert alert-success">
                <%=(String)request.getAttribute("successLogout") %>
            </div>
    </div>

    <%  }    %>

    <main>
        <section id="home" class="welcome-section">
            <div class="welcome-text">
                <h1>Welcome to Pawfect Home</h1>
                <p>Here, your pet's comfort is our top priority.</p>
            </div>
        </section>

        <section id="about" class="about-section">
            <div class="about-content">
                <h2>About Us</h2>
                <p>Pawfect Home is a unique pet-sitter platform that connects pet owners with loving and responsible pet-sitters. We understand that pets are family, and we aim to provide a safe and caring environment for your furry friends when you can't be there for them.</p>
                <p>Our services include short-term pet adoptions and pet-sitting arrangements to ensure your pets are in capable hands. Join our community of pet lovers today!</p>
            </div>
        </section>
    </main>
<%@ include file="footer.jsp" %>  


</body>
</html>
