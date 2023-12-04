<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="Java.Post" %>
<%@ page import="Java.PostDAO" %>
<%@ page import="java.text.SimpleDateFormat"%>  
<%@ page import="java.util.Date" %> 
<%@ page import="java.time.LocalDate" %>

<% 

String stayHome = request.getParameter("stay_home");
boolean stayAtOwner = true;
if (stayHome == null){
    stayAtOwner = false;
}
LocalDate uploadDate = java.time.LocalDate.now();
LocalDate startDate = LocalDate.parse(request.getParameter("start"));
LocalDate endDate = LocalDate.parse(request.getParameter("end"));
int price = Integer.valueOf(request.getParameter("price"));
String description = request.getParameter("description");
String username = "check";
Post post = new Post(5,uploadDate,stayAtOwner,startDate,endDate,price,description);
PostDAO postdao = new PostDAO();
postdao.createPost(post);
%>
  
                
