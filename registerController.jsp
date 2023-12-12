<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pawfect_home.*"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%

String username = request.getParameter("username");
String password = request.getParameter("password");
String firstname = request.getParameter("firstname");
String surname = request.getParameter("surname");
String location = request.getParameter("location");
String email = request.getParameter("email");
long phone = request.getParameter("phone");
List<String> errors = new ArrayList<String>();
boolean hasErrors = false;

if (firstname == null || firstname.length() < 3) {
    hasErrors = true;
    errors.add("Name must be at least 3 charachters long");
}

if (surname == null || surname.length() < 4) {
    hasErrors = true;
    errors.add("Surname must be at least 4 charachters long");
}
 
if (username == null || username.length() < 5) {
    hasErrors = true;
    errors.add("Username must be at least 5 characters long");
}

if (password == null || password.length() < 4) {
    hasErrors = true;
    errors.add("Password must be at least 4 characters long");
}

if (phone == null || password.length() != 10) {
    hasErrors = true;
    errors.add("Number phone must be 10 number long");
}
%>


    <%
    if (hasErrors) {
     %>
     request.setAttribute("hasErrors", (String) e.getMessage());
     %>
    <jsp:forward page="login.jsp" />
    <%
    } else {
        try {
            User user = new User(firstname, surname, email, phone, location, username, password);
            UserDAO userdao = new UserDAO();
            userdao.register(user);

            session.setAttribute("userCookie",user);

        }catch (Exception e) {
    

            request.setAttribute("message", (String) e.getMessage()); 
            %>
            <jsp:forward page="login.jsp" />
            <%

        }
    }
%>
    
