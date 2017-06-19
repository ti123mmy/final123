<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id = "database" class = "com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="team7" />
  <jsp:setProperty property="user" name="database" value="team7" />
  <jsp:setProperty property="password" name="database" value="NCHUTeam7!" />
</jsp:useBean>
<%
    String user1 = request.getParameter("account");
    String pwd = request.getParameter("pass");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String bdate = request.getParameter("bdate");
    String amemo = request.getParameter("memo");
    database.connectDB();
    %>alert(user);<%
    // Class.forName("com.mysql.jdbc.Driver");
    // Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/4104029003",
    //         "4104029003", "Ss4104029003!");
    // Statement st = con.createStatement();
    //ResultSet rs;
    // int i = st.executeUpdate("insert into login(name, email, account, pass, bdate, memo) values ('" + name + "','" + email + "','" + user + "','" + pwd + "','" + bdate + "','" + amemo + "')");
    int i = database.insertData(user1, pwd, name, email, bdate, amemo);
    if (i > 0) {
        response.sendRedirect("index.jsp");
    }
%>
