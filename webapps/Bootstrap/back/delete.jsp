<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="java.text.*"%>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205"/>
  <jsp:setProperty property="port" name="database" value="3306"/>
  <jsp:setProperty property="db" name="database" value="team7"/>
  <jsp:setProperty property="user" name="database" value="team7"/>
  <jsp:setProperty property="password" name="database" value="NCHUTeam7!"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
  <head>
    <title>MyWeb</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8" >
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
  </body>
</html>
<%
          String userid = request.getParameter("deleteitem");
          %><script>alert(<%=userid%>)</script><%
          database.connectDB();
          database.deleteData(userid);
          response.setHeader("Refresh","0;url=index.jsp");

%>
