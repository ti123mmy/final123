<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="java.text.*" import = "java.String.*" %>
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
try{
  Class.forName(driver).newInstance();
  conn = DriverManager.getConnection(url,user,pass);
  stmt = conn.createStatement();
  //新增一筆資料
    request.setCharacterEncoding("utf-8");
  }catch(SQLException sqle){
    out.println("SQL Exception : " + sqle);
  }
%>
<%
  int part = 1,count =0,totalpoint=0,pointget =0;
  String[] corans = new String[42];
  String[] ans = new String[42];
  String[] incorrect = new String[42];
  String sql = "select * from readingquestions where indexx='TPO"+part+"'" ;
  rs = stmt.executeQuery(sql);
  while(rs.next()){
    corans[count] = rs.getString("correctAns");
    count++;
  }
  // for(int i=0;i<42;i++){
  //   ans[i] = request.getParameter("answer-"+(i+1));
  // }

  int ii = 0 ;
  while(ii<42){
    String temp [] = request.getParameterValues("answer-"+(ii+1));
    String finalstring ="";
    if(temp!=null){
      if(temp.length==1){
        ans[ii] = temp[0] ;
      }else{
        for(int k=0; k<temp.length;k++)
        finalstring += temp[k];
        ans[ii] = finalstring ;
      }
    }else
    ans[ii] = "";

    ii++;
  }






  out.print("<pre>");
  out.print("<table border='1'>");
  out.print("<tr><th>number</th><th>your answer</th><th>correct answer</th></tr>");
  for(int i=0;i<42;i++){
    if(ans[i]!=""){
      out.print("<tr><td>"+(i+1)+"</td><td>"+ans[i]+"</td><td>"+corans[i]+"</td></tr>");
      if(ans[i].equals(corans[i])){
        pointget++;
      }
      }else{
        out.print("<tr><td>"+(i+1)+"</td><td>N/A</td><td>"+corans[i]+"</td></tr>");
      }
      totalpoint++;
    }
  out.print("<tr><td></td><td>Score</td><td>"+(float)(pointget*100/totalpoint)+"</td></tr>");
  out.print("</table>");
  out.print("</pre>");

%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>score</title>
  </head>
  <body>

  </body>
</html>
