<%
session.invalidate();
request.setAttribute("successLogout", "Logged out successfully!");
%>
<jsp:forward page="index.jsp" />

