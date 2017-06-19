<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="java.text.*"%>
<%

  if ((session.getAttribute("logstat") == null) || (session.getAttribute("logstat") == "" )){
    %><script>alert("You have to login first!")</script><%
    response.setHeader("Refresh","0;url=index.jsp");
  }else{
    %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#login").addClass("hidden");
        $("#logout").removeClass("hidden");
        $("#username").removeClass("hidden");
      });
    </script>
    <%
  }
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Reading</title>
    <%-- icon --%>
    <link href="img/ori.ico" rel="SHORTCUT ICON">
  </head>
  <body>
    <TABLE class=table-bolder height=526 cellSpacing=0 cellPadding=15 width="50%"
align=center border=1>
  <TBODY>
  <TR>
    <TD vAlign=top bgColor=#ffffff>
      <DIV align=center><STRONG>Reading Section Directions</STRONG>
      </DIV><BR><BR>
      <P>In this section, you will read 3 passages and answer comprehension
      questions about each passage. Most questions are worth one point, but the
      last question in each set is worth more than one point. The directions
      indicate the maximum number of points.</P>
      <P>You have 60 minutes to read all of the passages and answer the
      questions.</P>
      <P>When you want to go to the next question, click the Next button. You
      may skip questions and go back to them later as long as there is time
      remaining. If you want to return to previous questions, click on the
      Backbutton. You can click on Review at any time and the review screen will
      show you which questions you have answered and which you have not. From
      the review screen, you may go directly to any question in the reading
      section.</P>
      <P>When you are ready to continue, click on End Directions.</P><BR><BR>
      <TABLE cellSpacing=0 cellPadding=0 align=right border=0>
        <TBODY>
        <TR>
          <TD><button onclick="window.location.href='exam.jsp'"
            href="#">next</button></TD></TR></TBODY></TABLE>

  </body>
</html>
