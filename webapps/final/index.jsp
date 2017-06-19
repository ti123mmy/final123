<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
  // session.setAttribute("logstat","sdfsdfsdf");
  String logstat = (String)session.getAttribute("logstat");
  if ((session.getAttribute("logstat") == null) || (session.getAttribute("logstat") == "" )){
  }else{
    %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
        $("#reg").addClass("hidden");
        $("#login").addClass("hidden");
        $("#logout").removeClass("hidden");
        $("#username").removeClass("hidden");
      });
    </script>
    <%
  }
%>
<!DOCTYPE html>
<html lang="en">

<head>
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
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Tutor Otter</title>

  <!-- Bootstrap Core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="style.css">

  <!-- Custom Fonts -->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Theme CSS -->
  <link href="css/agency.min.css" rel="stylesheet">

    <%-- icon --%>
    <link href="img/ori.ico" rel="SHORTCUT ICON">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" integrity="sha384-0s5Pv64cNZJieYFkXYOTId2HMA2Lfb6q2nAcx2n0RTLUnCAoTTsS0nKEO27XyKcY" crossorigin="anonymous"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" integrity="sha384-ZoaMbDF+4LeFxg6WdScQ9nnR1QC2MIRxA1O9KWEXQwns1G8UNyIEZIQidzb0T1fo" crossorigin="anonymous"></script>
    <![endif]-->
    <style>
                /* The Modal (background) */
            .testmodal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }

            /* Modal Content */
            .testmodal-content {
            position: relative;
            background-color: #fefefe;
            margin: auto;
            padding:0;
            border: 1px solid #888;
            width: 60%;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
            }

            /* Add Animation */
            @-webkit-keyframes animatetop {
            from {top:-300px; opacity:0}
            to {top:0; opacity:1}
            }

            @keyframes animatetop {
            from {top:-300px; opacity:0}
            to {top:0; opacity:1}
            }

            /* The Close Button */
            .close {
            color: white;
            float: right;
            font-size: 28px;
            font-weight: bold;
            }

            .close:hover,
            .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
            }

            .testmodal-header {
            padding: 2px 16px;
            background-color: #fefefe;
            color: white;
            }

            .testmodal-body {padding: 2px 16px;}

            .testmodal-footer {
            padding: 20px 16px;
            background-color: #fefefe;
            color: white;
            }
    </style>
</head>

<body id="page-top" class="index">

  <!-- Navigation -->
  <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header page-scroll">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>

        <a class="navbar-brand page-scroll" href="#page-top" style="word-break: break-all;"><nbr><img src="img/logo.png" />  Tutor Otter</nbr></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li class="hidden">
            <a href="#page-top"></a>
          </li>
          <li>
            <a class="page-scroll" href="#services">最新消息</a>
          </li>
          <li>
            <a class="page-scroll" href="#portfolio">測驗</a>
          </li>
          <li>
            <a class="page-scroll" href="#about">好站連結</a>
          </li>
          <li>
            <a class="page-scroll" href="#team">海獺之母</a>
          </li>
          <li>
            <a class="page-scroll hidden" id ="username">
              Welcome , <%=logstat%>
            </a>
          </li>

          <li>
            <a class="page-scroll hidden" id ="logout" href="logout.jsp">登出</a>
          </li>
            <li>
              <a class="page-scroll" id ="login" onclick="document.getElementById('id01').style.display='block'">登入</a>
            </li>
            <li>
              <a class="page-scroll" id ="reg" onclick="document.getElementById('id02').style.display='block'">註冊</a>
            </li>


              <div id="id01" class="modal">

                <form class="modal-content animate" action="login.jsp">
                  <div class="imgcontainer">
                    <button onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal" value="close"></button>
                    <img src="profile.png" alt="Avatar" class="avatar">
                  </div>

                  <div class="container">
                    <label style="margin-left:50px;color:black"><b>Username</b></label>
                    <input type="text" style="margin-left:6%;color:black" placeholder="Enter Username" name="userid" required>
                    <br>
                    <label style="margin-left:50px;color:black" ><b>Password</b></label>
                    <input type="password" style="margin-left:6%;color:black" placeholder="Enter Password" name="userpass" required>

                    <input type="hidden" value="main" name="class" ClientIdMode="static">
                    <button id="log" type="submit"  class="btn btn-warning"  style="color:black">Login</button>
                  </div>

                  <div class="container" style="background-color:#f1f1f1;width:100%">
                    <button type="button"  class="btn btn-warning" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                    <span class="psw"style="color:black;">Forgot <a href="#">password?</a></span>
                  </div>
                </form>
              </div>

              <div id="id02" class="modal"><center>
                <form class="modal-content animate" action="login.jsp">

                  <div class="container">
                      <img style="float:left;margin-left:10%" src="img/mascot.png"/>
                                <table>
                                  <tr>
                                <td style="width:600px;">
                                  <label style="color:black;width:100px"><b>userid</b></label>
                                  <input type="text" style="height:15px;color:black" placeholder="Enter Userid" name="userid" required>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <label style="color:black;width:100px" ><b>Password</b></label>
                                  <input type="password" style="height:15px;color:black" placeholder="Enter Password" name="userpass" required>
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <label style="color:black;width:100px" ><b>Re-password</b></label>
                                  <input type="password" style="height:15px;color:black" placeholder="Reenter Password" name="reuserpass" required>
                                </td>
                              </tr>
                                <tr>
                                <td>
                                  <label style="olor:black;width:100px"><b>name</b></label>
                                  <input type="text" style="height:15px;color:black" placeholder="Enter Username" name="username" required>
                                </td></tr>
                                <tr>
                                <td>
                                  <label style="color:black;width:100px"><b>Birthday</b></label>
                                  <input type="date" style="color:black" name="userbirthday" required>
                                </td></tr>
                                <tr>
                                <td>
                                  <label style="color:black;width:100px"><b>memo</b></label>
                                  <input type="text" style="height:15px;color:black" placeholder="Enter memo" name="memo" required>
                                </td></tr>
                                <tr>
                                <td>
                                  <input type="hidden" value="regpage" name="class" ClientIdMode="static">
                                  </td>
                              </tr>


                            </table>
                            </div>
                            <div class="container" style="background-color:#f1f1f1;width:100%">
                              <button id="log" type="submit"  class="btn btn-warning"  style="margin-left:70%;color:black">SUBMIT</button>
                              <button type="button"  class="btn btn-warning" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
                            </div>
                </form>
              </center>
              </div>






              </ul>
            </div>
          </nav>
      </div>
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
  </nav>

  <!-- Header -->
  <header>
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To Tutor Otter!</div>
        <div class="intro-heading">最輕鬆的方式學好英文</div>
        <a href="#services" class="page-scroll btn btn-xl">了解更多</a>
      </div>
    </div>
  </header>

  <!-- Services Section -->
  <section id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">各大官方網站連結</h2>
          <h3 class="section-subheading text-muted">請隨時留意各大考試的時間與注意事項</h3>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4">
          <a href="https://www.ieltstest.org.tw/?gclid=CjwKEAjwja_JBRD8idHpxaz0t3wSJAB4rXW59DkWe3kMqhZWZSyDyZX4VVeIYOkEoL2b_RSWbzvNyBoCAIfw_wcB" Target="_new"><img src="img/ielts.jpg" width="250" height="100"></a>
          <h4 class="service-heading">雅思</h4>
          <p class="text-muted">IELTS 雅思國際英語測驗系統(The International English Language Testing System)，是由劍橋大學英語考試院設計用來評估欲前往英語系國家求學、移民或工作者在聽、說、讀、寫四項全方位英語的溝通能力，與托福同樣為全球廣泛接受的英語測驗。</p>
        </div>
        <div class="col-md-4">
          <a href="http://www.toeic.com.tw" Target="_new"><img src="img/toeic.jpg" width="170" height="100"></a>
          <h4 class="service-heading">多益</h4>
          <p class="text-muted">TOEIC代表Test of English for International Communication（國際溝通英語測驗）。多益測驗乃針對英語非母語人士所設計之英語能力測驗，測驗分數反映受測者在國際職場環境中與他人以英語溝通的熟稔程度。</p>
        </div>
        <div class="col-md-4">
          <a href="http://www.toefl.com.tw/iBT/index.jsp" Target="_new"><img src="img/toefl.jpg" width="300" height="100"></a>
          <h4 class="service-heading">托福網路測驗</h4>
          <p class="text-muted">托福網路測驗簡是透過網路連線並利用電腦進行作答的測驗，考生必需使用耳機與麥克風，並使用電腦鍵盤在電腦上回答問題，測驗考生的聽、說、讀、寫四種技巧的能力，每個測驗技巧獨立計分，分數介於0至30之間，總分於介於0至120分之間，測驗時間大約為4個小時，主要在評量中階(intermediate)至高階(advanced)之英語能力。</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Portfolio Grid Section -->
  <section id="portfolio" class="bg-light-gray">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">測驗專區</h2>
          <h3 class="section-subheading text-muted">來測驗看看努力之後的成果吧！</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a href="#portfolioModal1"  id="myBtn" class="portfolio-link" data-toggle="modal">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fa fa-plus fa-3x"></i>
              </div>
            </div>
            <img src="img/portfolio/test.jpg" class="img-responsive" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>TOEFL iBT</h4>
            <p  class="text-muted">托福網路測驗</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fa fa-plus fa-3x"></i>
              </div>
            </div>
            <img src="img/portfolio/test.jpg" class="img-responsive" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>TOEIC</h4>
            <p class="text-muted">多益</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fa fa-plus fa-3x"></i>
              </div>
            </div>
            <img src="img/portfolio/test.jpg  " class="img-responsive" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>IELTS</h4>
            <p class="text-muted">雅思</p>
          </div>
        </div>
    </div>

          <!-- The Modal -->
          <div id="myModal" class="testmodal">
          <!-- Modal content -->
          <div class="testmodal-content">
          <div class="testmodal-header">
          <h1 style="color:black;text-align:center;">TOEFL iBT</h1>
          <span class="close" onclick="closeTest">&times;</span>
          </div>
          <div class="testmodal-body">
              <div>
                <nobr>
                  <center>
                  <a href="reading.jsp"><button type="button" style="height:350px;width:350px"class="btn btn-primary"><p style="font-size:45px">閱讀測驗</p></button></a>
                  <button type="button" style="height:350px;width:350px" class="btn btn-primary" data-dismiss="modal"><p style="font-size:45px">聽力測驗</p></button>
                </center>
                </nobr>
              </div>
          </div>
          <div class="testmodal-footer">
          </div>
          </div>

          </div>
          <script>
          // Get the modal
          var modal = document.getElementById('myModal');
          // Get the button that opens the modal
          var btn = document.getElementById("myBtn");

          // Get the <span> element that closes the modal
          var span = document.getElementsByClassName("close")[0];

          // When the user clicks the button, open the modal
          btn.onclick = function() {
              modal.style.display = "block";
          }

          // When the user clicks on <span> (x), close the modal
          span.onclick = function() {
              modal.style.display = "none";
          }

          // When the user clicks anywhere outside of the modal, close it
          window.onclick = function(event) {
              if (event.target == modal) {
                  modal.style.display = "none";
              }
          }
          </script>



  </section>

  <!-- About Section -->
  <section id="about">
    <aside class="clients">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <a href="http://www.sparknotes.com/lit/inourtime/" Target="_new">
              <img src="img/logos/sparknotes.jpg" class="img-responsive img-centered" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="https://www.theatlantic.com/world/" Target="_new">
              <img src="img/logos/atlantic.jpg" class="img-responsive img-centered" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="http://www.elllo.org/" Target="_new">
              <img src="img/logos/elllo.jpg" class="img-responsive img-centered" alt="">
            </a>
          </div>
          <div class="col-md-3 col-sm-6">
            <a href="http://www.bbc.co.uk/learningenglish/" Target="_new">
              <img src="img/logos/BBC.jpg" class="img-responsive img-centered" alt="">
            </a>
          </div>
        </div>
      </div>
    </aside>
  </section>

  <!-- Team Section -->
  <section id="team" class="bg-light-gray">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading">我們的團隊</h2>
          <h3 class="section-subheading text-muted">成功的海獺背後的必有三個厲害的人</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <div class="team-member">
            <img src="img/team/pascal.jpg" class="img-responsive img-circle" alt="">
            <h4>鄭永正</h4>
            <p class="text-muted">DataBase製作及測驗系統設計</p>
            <ul class="list-inline social-buttons">
              <li><a href="#"><i class="fa fa-instagram"></i></a>
              </li>
              <li><a href="https://www.facebook.com/profile.php?id=100002644222138&fref=hovercard&hc_location=chat" Target="_new"><i class="fa fa-facebook"></i></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="team-member">
            <img src="img/team/timmy.jpg" class="img-responsive img-circle" alt="">
            <h4>劉彥廷</h4>
            <p class="text-muted">前端HTML頁面製作</p>
            <ul class="list-inline social-buttons">
              <li><a href="https://www.instagram.com/ti123mmy/" Target="_new"><i class="fa fa-instagram"></i></a>
              </li>
              <li><a href="https://www.facebook.com/timmy.liu.378" Target="_new"><i class="fa fa-facebook"></i></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="team-member">
            <img src="img/team/pei.jpg" class="img-responsive img-circle" alt="">
            <h4>裴眾霖</h4>
            <p class="text-muted">資料庫</p>
            <ul class="list-inline social-buttons">
              <li><a href="https://www.instagram.com/pei860318/" Target="_new"><i class="fa fa-instagram"></i></a>
              </li>
              <li><a href="https://www.facebook.com/pei860318?fref=ts" Target="_new"><i class="fa fa-facebook"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>
        </div> -->
  </section>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; 可愛的海酷娜．瑪獺獺</span>
        </div>
        <!-- <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li><a href="#"><i class="fa fa-twitter"></i></a>
            </li>
            <li><a href="#"><i class="fa fa-facebook"></i></a>
            </li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a>
            </li>
          </ul>
        </div>
          <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li><a href="#">Privacy Policy</a>
            </li>
            <li><a href="#">Terms of Use</a>
            </li>
          </ul>
        </div> -->
      </div>
    </div>
  </footer>

  <!-- jQuery -->
  <script src="vendor/jquery/jquery.min.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" integrity="sha384-mE6eXfrb8jxl0rzJDBRanYqgBxtJ6Unn4/1F7q4xRRyIw7Vdg9jP4ycT7x1iVsgb" crossorigin="anonymous"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Theme JavaScript -->
  <script src="js/agency.min.js"></script>

</body>

</html>
