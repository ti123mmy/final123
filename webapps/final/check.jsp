<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id = "database" class = "com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="team7" />
  <jsp:setProperty property="user" name="database" value="team7" />
  <jsp:setProperty property="password" name="database" value="NCHUTeam7!" />
</jsp:useBean>
<%
database.connectDB();
String name = request.getParameter("name");
// Class.forName("com.mysql.jdbc.Driver");
//   Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/4104029003","4104029003", "Ss4104029003!");
//   Statement st = con.createStatement();
ResultSet rs;
database.query("select * from login where name='" + name + "'");
rs = database.getRS();
  // rs = st.executeQuery("select * from login where name='" + name + "'");


  if(rs.next()){
    out.print("已經有相同帳號註冊過囉！");
  } else {
    out.print("此帳號可以使用！");
  }
%>
