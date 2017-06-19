<%
session.setAttribute("logstat", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
