
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="java.text.*"%>
<%!
// String user = "4104029001";
// String pass = "Ss4104029001!";
// String database = "4104029001";
// String driver ="com.mysql.jdbc.Driver";
// String url = "jdbc:mysql://"+"140.120.49.205:3306/" + database + "?useUnicode=true&characterEncoding=big5";
String user = "root";
String pass = "";
String database = "TOEFL";
String driver ="com.mysql.jdbc.Driver";
String url = "jdbc:mysql://"+"127.0.0.1:3306/" + database + "?useUnicode=true&characterEncoding=big5";

ResultSet rs = null ;
Statement stmt = null;
 //建立一個聯結物件
Connection conn = null;
 //建立PreparedStatement物件
PreparedStatement pstmt = null;

%>
<%
if(session.getAttribute("tested").equals("1")){
  response.sendRedirect("reading.jsp");
}



try{
  Class.forName(driver).newInstance();
  conn = DriverManager.getConnection(url,user,pass);
  stmt = conn.createStatement();
  //新增一筆資料
    request.setCharacterEncoding("utf-8");
  }catch(SQLException sqle){
    out.println("SQL Exception : " + sqle);
  }
  //取得題目
  int part = 1;
  int count = 0;
  String[] title = new String[3];
  String[] main = new String[3];
  String[] QS = new String[30];

  String sql ="select content from readingparagraph where type=1 and indexx = 'TPO"+part+"'" ;
  rs = stmt.executeQuery(sql);

  while(rs.next()){
    main[count] = rs.getString(1);
    count ++;
  }
  sql ="select content from readingparagraph where type=0 and indexx = 'TPO"+part+"'" ;
  rs = stmt.executeQuery(sql);

  count = 0;
  while(rs.next()){
    QS[count] = rs.getString(1);
    count ++;
  }

  count = 0;
  sql = "select title from readingparagraph where type = 1 and indexx= 'TPO"+part+"'" ;
  rs = stmt.executeQuery(sql);
  while(rs.next()){
    title[count] = rs.getString(1);
    count ++;
  }
%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="Unicode" >
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>EXAM</title>
    <style>
     .show{

     }
     .hide{
       display:none;
     }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        var counter = 1 ;
        var $curq = $("#q1");
        var $cura =$("#a1");
        $("#q1").removeClass("hide").addClass("show");
        $("#a1").removeClass("hide").addClass("show");
//next button
        $("#next").click(function(){
          if(counter<42){
              $curq.next("div").removeClass("hide").addClass("show");
              $curq.removeClass("show").addClass("hide");
              $curq = $curq.next("div");
            if(counter==14){
              $cura.next("div").removeClass("hide").addClass("show");
              $cura.removeClass("show").addClass("hide");
              $cura = $cura.next("div");
            }
            if(counter==28){
              $cura.next("div").removeClass("hide").addClass("show");
              $cura.removeClass("show").addClass("hide");
              $cura = $cura.next("div");
            }
            counter ++;
          }else{
            alert("end of the test !");
          }

        });
//prev button
        $("#prev").click(function(){
          if(counter>1){
            $curq.prev().removeClass("hide").addClass("show");
            $curq.removeClass("show").addClass("hide");
            $curq = $curq.prev("div");
          if(counter==15){
            $cura.prev().removeClass("hide").addClass("show");
            $cura.removeClass("show").addClass("hide");
            $cura = $cura.prev("div");
          }
          if(counter==29){
            $cura.prev().removeClass("hide").addClass("show");
            $cura.removeClass("show").addClass("hide");
            $cura = $cura.prev("div");
          }
          counter --;
        }else{
          alert("Its already the beginning !");
        }
      });
//submit button
        $("#submit").click(function(){
          if(confirm("交卷後不可再變更，確定送出?"))
          $("#testform").submit();
          $('#testform').trigger("reset");
        });

    });

    </script>
  </head>
<body>
  <nav style="margin-left:80%;width:100%">
    <button >suspend</button>
    <button id = "prev">Previous</button>
    <button id ="next">Next</button>
    <button id ="submit">submit</button>
  </nav>



    <form action="sum.jsp" id = "testform" method="post" >
      <div style="margin-top:10px;width:1500px;">
        <%
          int p =1;
          for(int k= 0;k<3;k++){
        %>
        <div class = "hide" id ="a<%=p%>"style="width:45%;float:left;overflow-y:scroll;height:650px;">
          <h1><%=title[k]%></h1><br>
          <p style="white-space:pre-wrap"><%=main[k]%></p>
        </div>
        <%
        p++;
      }
        %>


      <%
      //取得問題
      sql = "select * from readingquestions where indexx='TPO"+part+"'" ;
      rs = stmt.executeQuery(sql);
      int number = 1;
      while(rs.next()){
        String question=rs.getString("question");
        String ans1=rs.getString("ans1");
        String ans2=rs.getString("ans2");
        String ans3=rs.getString("ans3");
        String ans4=rs.getString("ans4");
        String ans5=rs.getString("ans5");
        String ans6=rs.getString("ans6");
        %>
        <div  class="hide" id="q<%=number%>">
        <%
          if(ans5.equals("")){
        %>
          <b><%=number%>.</b>
          <p><%=question%></p><br><br>

          <input type="radio"  name="answer-<%=number%>" value="A">
          <%=ans1%>
        </input><br><br>
        <input type="radio"  name="answer-<%=number%>" value="B">
          <%=ans2%>
        </input><br><br>
        <input type="radio"  name="answer-<%=number%>" value="C">
          <%=ans3%>
        </input><br><br>
        <input type="radio"  name="answer-<%=number%>" value="D">
          <%=ans4%>
        </input><br><br>
        <%}%>
          <%
            if(!ans5.equals("")){
          %>
            <b><%=number%>.</b>
            <p><%=question%></p><br><br>

            <input type="checkbox"  name="answer-<%=number%>" value="A">
            <%=ans1%>
          </input><br><br>
          <input type="checkbox"  name="answer-<%=number%>" value="B">
            <%=ans2%>
          </input><br><br>
          <input type="checkbox"  name="answer-<%=number%>" value="C">
            <%=ans3%>
          </input><br><br>
          <input type="checkbox"  name="answer-<%=number%>" value="D">
            <%=ans4%>
          </input><br><br>

          <input type="checkbox"  name="answer-<%=number%>" value="E">
            <%=ans5%>
          </input><br><br>
          <input type="checkbox"  name="answer-<%=number%>" value="F">
            <%=ans6%>
          </input><br><br>
          <%}%>

        </div>

        <%
        number++;
      }%>

    </div>
  </form>


</body>
</html>
<%
          session.setAttribute("tested","1");
%>
