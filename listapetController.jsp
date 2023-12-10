<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="pawfect_home.*" %> 
<%@ page import="java.text.SimpleDateFormat"%>  
<%@ page import="java.util.Date" %> 
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<% 
String stayHome = request.getParameter("stay_home");
boolean stayAtOwner = true;
if (stayHome == null){
    stayAtOwner = false;
}
LocalDate uploadDate = java.time.LocalDate.now();
LocalDate startDate = LocalDate.parse(request.getParameter("start"));
LocalDate endDate = LocalDate.parse(request.getParameter("end"));
int comparison = startDate.compareTo(endDate);
String description = request.getParameter("description");
int price = Integer.parseInt(request.getParameter("price"));
List <String> errorMessages = new ArrayList<String>();
if (comparison > 0) {
    errorMessages.add("Start date must be before end date");
}
if (price < 0) {
    errorMessages.add("Price must be bigger than zero");
}
//Listing listing = new Listing(5, uploadDate, true, startDate, endDate, price, description);
ListingDAO listdao = new ListingDAO();
//response.sendRedirect("submissionApproval.jsp");
%>


  
                
