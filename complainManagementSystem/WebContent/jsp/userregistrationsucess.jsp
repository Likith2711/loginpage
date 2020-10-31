<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>SCMS</title>
  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
  <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="css/fullcalendar.css">
  <link href="css/widgets.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  <link href="css/xcharts.min.css" rel=" stylesheet">
  <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  
</head>
<body onload="alert('User Registration Success')">
  <section id="container" class="">
   <header class="header dark-bg">
    <!--logo start-->
      <a href="" class="logo">Smart City Management System<span class="lite"></span></a>
      <!--logo end-->
	   </header>
	   
	   <!--sidebar start-->
    <aside>
    <div id="sidebar" class="nav-collapse ">
    <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
          <a class="" href="">
                          <span>Home</span>
            </a>
        </li>
         <li>
            <a class="" href="./html/admonlogin.html">
                          <i class="icon_genius"></i>
                          <span>Admin Login</span>
                      </a>
          </li>
         
                    <li>
            <a class="" href="#registration">
                          <i class="icon_genius"></i>
                          <span>User Registration</span>
                      </a>
          </li>
          
          <li>
            <a class="" href="./html/userlogin.html">
                          <i class="icon_genius"></i>
                          <span>User Login</span>
                      </a>
          </li>
          <li>
            <a class="" href="./html/wardlogin.html">
                          <i class="icon_genius"></i>
                          <span>Ward Login</span>
                      </a>
          </li>
         
        </ul>
    </div>
    </aside>
     <!--main content start-->
    <section id="main-content">
    <section class="wrapper">
    <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> HOME</h3>
            <div class="row">
          <div class="col-lg-12 col-md-12">
            <div class="info-box blue-bg" align="center">
          <div class="col-lg-1"></div> <img alt="" src="./img/loginpage11.jpg" >
             </div>
            <!--/.info-box-->
          </div>
                 </div>
        <!--/.row-->

            
          </div>
        </div>
                <div align="right">
              <a class="" href="#contact" >
                          <span>contact</span>
                      </a>
                      </div>
        
                <section id="contact">
                <br/><br/><br/><br/><br/><br/><br/><br/>        
        <div class="row">
          <div class="col-lg-9 col-md-12">

            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-map-marker red"></i><strong>CONTACT</strong></h2>
                <div class="panel-actions">
                </div>
              </div>
              <div class="panel-body-map">
                 <div>
              <div class="list-group">
              <br><br>
                  <br><br>
                <a class="list-group-item active" href="javascript:;">Place new requests for all your queries or contact OMCS Call Center at 080-22660000 for any follow-up.</a>
                <br>
                 <a class="list-group-item active" href="javascript:;">Place new requests for all your queries or contact BBMP Call Center at 080-22660000 for any follow-up.</a>
                <br>  <a class="list-group-item active" href="javascript:;">Place new requests for all your queries or contact BBMP Call Center at 080-22660000 for any follow-up.</a>
                  </div>
          </div>
         
              </div>

            </div>
          </div>
	          </div>


        </section>
        <section id="registration">
<br/><br/><br/><br/><br/><br/><br/><br/>        
        <div class="row">

          <div class="col-lg-9 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>User Registration</strong></h2>
                 </div>
              <div class="panel-body">
              
              <form class="form-horizontal" action="./userregistration.do" method="post">
               <div class="form-group">
                        <label class="control-label col-lg-2" for="username">Name</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="name" name="username">
                        </div>
                      </div>
               <div class="form-group">
                        <label class="control-label col-lg-2" for="fathername">Father Name</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="fathername" name="fathername">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="mothername">Mother Name</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="mothername" name="mothername">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="address">Address</label>
                        <div class="col-lg-6">
                          <textarea class="form-control" id="address" name="address"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="fathername">DOB</label>
                        <div class="col-lg-6">
                          <input type="date" class="form-control" id="dob" name="dob">
                        </div>
                      </div>
      <div class="form-group">
                        <label class="control-label col-lg-2" for="phone">Phone</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="phone" name="phone">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="email">Email</label>
                        <div class="col-lg-6">
                          <input type="email" class="form-control" id="email" name="email">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-lg-2" for="username">UserName</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="username" name="username">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="control-label col-lg-2" for="password">Password</label>
                        <div class="col-lg-6">
                          <input type="password" class="form-control" id="password" name="password">
                        </div>
                      </div>
               
                              
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-2 col-lg-9">
                          <button type="submit" class="btn btn-danger" onclick=" return myFunction()">Create</button>
                          <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                      </div>
                                            <script>
function myFunction() {
	var password = document.getElementById("password").value;
    



	   if(password == ""){
	 	  alert("password must be filled out");
	       return false;

	     }

	   
    var x = document.getElementById("phone").value;
    var mothername = document.getElementById("mothername").value;
    var name = document.getElementById("name").value;
    var fathername = document.getElementById("fathername").value;
    if(name == ""){
   	  alert("name must be filled out");
         return false;

       }

     if(fathername == ""){
   	  alert("fathername must be filled out");
         return false;

       }
      
    if(mothername == ""){
   	  alert("mothername must be filled out");
         return false;

       }

     
    var address = document.getElementById("address").value;
    if(address == ""){
   	  alert("address must be filled out");
         return false;

       }
      
    if(x == ""){
  	  alert("phone must be filled out");
        return false;

      }


     if (isNaN(x)) {
     	alert("phone must be number");
         return false;
    
     }
     var dob = document.getElementById("dob").value;
     if(dob == ""){
    	  alert("dob must be filled out");
          return false;

        }

        
     var username = document.getElementById("username").value;
     var email = document.getElementById("email").value;
     if(email == ""){
    	  alert("email must be filled out");
          return false;

        }

        
     if(username == ""){
    	  alert("username must be filled out");
          return false;

        }

        

    }
</script>
                      
              </form>
                              </div>

            </div>

          </div>
          <!--/col-->
          <div class="col-md-3">

            <div class="social-box facebook">
             </div>
            <!--/social-box-->
          </div>
          <div class="col-md-3">

            <div class="social-box google-plus">
            </div>
            <!--/social-box-->

          </div>
          <!--/col-->
          <div class="col-md-3">

            <div class="social-box twitter">
            </div>
            <!--/social-box-->

          </div>
          <!--/col-->

        </div>


        
        
        </section>
    </section>
   </section>
  </section>

  <!-- javascripts -->
  <script src="../js/jquery.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="../js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="../js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="../js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="../js/jquery.scrollTo.min.js"></script>
  <script src="../js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="../js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="../js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <script src="../js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <!--script for this page only-->
    <script src="../js/calendar-custom.js"></script>
    <script src="../js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="../js/jquery.customSelect.min.js"></script>

    <!--custome script for all page-->
    <script src="../js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="../js/sparkline-chart.js"></script>
    <script src="../js/easy-pie-chart.js"></script>
    <script src="../js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="../js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="../js/xcharts.min.js"></script>
    <script src="../js/jquery.autosize.min.js"></script>
    <script src="../js/jquery.placeholder.min.js"></script>
    <script src="../js/gdp-data.js"></script>
    <script src="../js/morris.min.js"></script>
    <script src="../js/sparklines.js"></script>
    <script src="../js/charts.js"></script>
    <script src="../js/jquery.slimscroll.min.js"></script>

</body>
</html>