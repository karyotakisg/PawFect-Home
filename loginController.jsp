<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pawfect_home.*"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
UserDAO userdao = new UserDAO();

try {
    User user = userdao.authenticate(username, password);

    /*
    * Store user object to session via an attribute
    */
    session.setAttribute("userCookie", user);

    /*
    * We can safely redirect authenticated user to dashboard
    * We could use also JSP forward action. 
    */
    response.sendRedirect("homepage.jsp");

} catch (Exception e) {
    request.setAttribute("message", (String) e.getMessage());

%>
<jsp:forward page="login.jsp" />
<%
}
%>

