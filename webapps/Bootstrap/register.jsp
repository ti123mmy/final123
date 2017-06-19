<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>註冊頁面</title>

        <script type="text/javascript" src="js/jquery-migrate-1.4.1.min.js"> </script>
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="js/additional-methods.min.js"></script>
        <script type="text/javascript" src="js/messages_zh_TW.min.js"></script>
        <%-- <script src="js/jquery-3.2.1.min.js"></script> --%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>

          $(document).ready(function() {

          $('#act').blur(function() {
          if($(this).val().length!=0){
          $.post("check.jsp",
          {name:$(this).val()},
          function(response){
            $('#act').addClass('error')
            .after('<span class="error">'+response+'</span>');
          } );
        }
        });
        $('input').blur(function() {
        if($(this).val().length==0) {
        $(this).addClass('error')
        .after('<br><span class="error">不可是空的!</span>');
      }
          });
          $('input').focus(function() {
          $(this).removeClass('error')
          .next('span').remove();
          });
          });

          $("form").submit(function () {
            if ($("#reg").valid()) {
              /*驗證成功，post the form data to server*/
            } else return false;
          });
        </script>
    </head>
    <body background="123.jpg">
        <form id="reg" method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5" style="font-size:25px;" bgcolor="white">
                <thead>
                    <tr>
                        <th colspan="2">請輸入基本資料</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>姓名</td>
                        <td><input type="text" name="name" value="" placeholder="請輸入姓名" required/>
                            <%-- <label for="name" class="error"></label> --%>
                        </td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" placeholder="請輸入電子信箱" required/>
                            <%-- <label for="email" class="error"></label> --%>
                        </td>
                    </tr>

                    <tr>
                        <td>帳號</td>
                        <td><input id="act" type="text" name="account" value="" placeholder="請輸入帳號" required/>
                            <%-- <label for="account" class="error"></label> --%>
                        </td>
                    </tr>

                    <tr>
                        <td>密碼</td>
                        <td><input type="password" name="pass" value="" placeholder="請輸入密碼" required/></td>
                    </tr>

                    <tr>
                        <td>生日</td>
                        <td><input type="date" name="bdate" value="1994-11-03"></td>
                    </tr>

                    <tr>
                        <td>備註欄(選填)</td>
                        <td><input type="text" name="memo" value="" placeholder="有什麼話想說的嗎？"/></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="submit" value="提交" />   <input type="reset" value="清除" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">已經註冊？ <a href="index.jsp">按我登入！</a></td>
                    </tr>
                </tbody>
            </table>
          </center>
      </form>
    </body>
</html>
