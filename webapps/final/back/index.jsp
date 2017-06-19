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
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="style.css">
  <script>
  // Get the modal
  var modal = document.getElementById('id01');

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }
  </script>
<body>

<!-- Top -->
<div class="w3-top">
  <div class="w3-bar w3-theme w3-large" style="z-index:4;">
    <a class="w3-bar-item w3-button w3-left w3-hide-large w3-hover-white w3-large w3-theme w3-padding-16" href="javascript:void(0)" onclick="w3_open()">☰</a>
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-small w3-hover-white w3-padding-16" href="javascript:void(0)" onclick="w3_show_nav('menuTut')">ADMIN</a>
   <a class="w3-bar-item w3-button w3-hide-medium w3-hover-white w3-padding-16" href="javascript:void(0)" onclick="w3_show_nav('menuRef')">REFERENCES</a>
  </div>
</div>

<!-- Sidebar -->
<div class="w3-sidebar w3-bar-block w3-collapse w3-animate-left" style="z-index:3;width:270px" id="mySidebar">
  <div class="w3-bar w3-hide-large w3-large">
    <a href="javascript:void(0)" onclick="w3_show_nav('menuTut')" class="w3-bar-item w3-button w3-theme w3-hover-white w3-padding-16" style="width:50%">ADMIN</a>
    <a href="javascript:void(0)" onclick="w3_show_nav('menuRef')" class="w3-bar-item w3-button w3-theme w3-hover-white w3-padding-16" style="width:50%">References</a>
  </div>
    <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-right w3-xlarge w3-hide-large" title="Close Menu">×</a>
  <div id="menuTut" class="myMenu">
  <div class="w3-container">
    <h3>ADMIN</h3>
  </div>
  <a class="w3-bar-item w3-button" href="/html/default.asp">USERDATA</a>
  <a class="w3-bar-item w3-button" href="/css/default.asp">TEST</a>
  <%-- <a class="w3-bar-item w3-button" href="/w3css/default.asp">Learn W3.CSS</a>
  <a class="w3-bar-item w3-button" href="/colors/default.asp">Learn Colors</a>
  <a class="w3-bar-item w3-button" href="/js/default.asp">Learn JavaScript</a>
  <a class="w3-bar-item w3-button" href="/xml/default.asp">Learn XML</a>
  <a class="w3-bar-item w3-button" href="/sql/default.asp">Learn SQL</a>
  <a class="w3-bar-item w3-button" href="/php/default.asp">Learn PHP</a> --%>
  </div>
  <div id="menuRef" class="myMenu" style="display:none">
  <div class="w3-container">
    <h3>References</h3>
  </div>
  <a class="w3-bar-item w3-button" href='/tags/default.asp'>HTML Tag Reference</a>
  <a class="w3-bar-item w3-button" href='/colors/default.asp'>HTML Color Reference</a>
  <a class="w3-bar-item w3-button" href='/cssref/default.asp'>CSS Reference</a>
  <a class="w3-bar-item w3-button" href='/cssref/css_selectors.asp'>CSS Selector Reference</a>
  <a class="w3-bar-item w3-button" href='/w3css/w3css_references.asp'>W3.CSS Reference</a>
  <a class="w3-bar-item w3-button" href='/jsref/default.asp'>JavaScript Reference</a>
  <a class="w3-bar-item w3-button" href='/php/php_ref_array.asp'>PHP Reference</a>
  <a class="w3-bar-item w3-button" href='/sql/sql_quickref.asp'>SQL Reference</a>
  </div>
</div>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 270 pixels when the sidebar is visible -->
<div class="w3-main w3-container" style="margin-left:270px;margin-top:117px;">
<%--
<div class="w3-panel w3-padding-large w3-card-4 w3-light-grey">
  <h1 class="w3-jumbo">CSS</h1>
  <p class="w3-xlarge">The Language for Styling Web Pages</p>
  <a class="w3-button w3-theme w3-hover-white" href="/css/default.asp">LEARN CSS</a>
  <a class="w3-button w3-theme w3-hover-white" href="/cssref/default.asp">CSS REFERENCE</a>
  <p class="w3-large">
  <p><div class="w3-code cssHigh notranslate">
  body {<br>
      background-color: #d0e4fe;<br>}<br>h1 {<br>
      color: orange;<br>
      text-align: center;<br>}<br>p {<br>
      font-family: "Times New Roman";<br>
      font-size: 20px;<br>}
  </div>
  <a class="w3-button w3-theme w3-hover-white" href="/css/tryit.asp?filename=trycss_default" target="_blank">Try it Yourself</a>
</div> --%>
<%
  database.connectDB();
  database.query("select * from userdata");
  ResultSet   rs = database.getRS();
  if(rs.next()){
        rs.beforeFirst();
        %>
        <div class="w3-panel w3-padding-large w3-card-4 w3-light-grey" style="text-align:center;background-color:Gainsboro">
        <h1>會員資料</h1>
        <table>
          <tr>
            <td>會員帳號</td>
            <td>會員密碼</td>
            <td>會員名稱</td>
            <td>生日</td>
            <td>註記</td>
          </tr>
          <%while(rs.next()){%>
            <tr>
              <td><%=rs.getString(3)%></td>
              <td><%=rs.getString(4)%></td>
              <td><%=rs.getString(2)%></td>
              <td><%=rs.getString(5)%></td>
              <td><%=rs.getString(6)%></td>
              <td><button onclick="document.getElementById('id01').style.display='block'">修改</button>  </td>
              <td><form action="delete.jsp"><input type = "hidden" value="<%=rs.getString(3)%>"  name="deleteitem"/><input type="submit" value="刪除"/></form></td>

            </tr>
          <%}%>


            </table>
          </div>
            <br>

          <%
      }else{
        response.setHeader("Refresh","0;url=welcome.jsp");
        out.println("查無資料");
      }

%>

<!-- END MAIN -->

</div>
<div id="id01" class="modal">

        <form class="modal-content animate" action="modify.jsp">
          <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>

          <div class="container">
            <label style="margin-left:50px;color:black;width:100px"><b>userid</b></label>
            <input type="text" style="margin-left:11%;color:black" placeholder="Enter Userid" name="userid" required>
            <br>
            <label style="margin-left:50px;color:black;width:100px" ><b>Password</b></label>
            <input type="password" style="margin-left:6%;color:black" placeholder="Enter Password" name="userpass" required>
            <br>
            <label style="margin-left:50px;color:black;width:100px"><b>name</b></label>
            <input type="text" style="margin-left:11%;color:black" placeholder="Enter Username" name="username" required>
            <br>
            <label style="margin-left:50px;color:black;width:100px"><b>Birthday</b></label>
            <input type="date" style="margin-left:8%;color:black" name="birthday" required>
            <br>
            <label style="margin-left:50px;color:black;width:100px"><b>memo</b></label>
            <input type="text" style="margin-left:10%;color:black" placeholder="Enter memo" name="memo" required>
            <br>
            <input type="hidden" value="main" name="class" ClientIdMode="static">
            <button id="log" type="submit"  class="log"  style="margin-left:20%;color:black">enter</button>
          </div>
        </form>
      </div>
<script>
// Script to open and close the sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
function w3_show_nav(name) {
    document.getElementById("menuTut").style.display = "none";
    document.getElementById("menuRef").style.display = "none";
    document.getElementById(name).style.display = "block";
    w3-open();
}
</script>
</body>
</html>
