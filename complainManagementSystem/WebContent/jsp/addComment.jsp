<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="dbc" scope="session"
	class="com.cms.util.DBUtil"></jsp:useBean>
<jsp:setProperty property="*" name="dbc" />

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
  <link href="../css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="../css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="../css/elegant-icons-style.css" rel="stylesheet" />
  <link href="../css/font-awesome.min.css" rel="stylesheet" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="../css/owl.carousel.css" type="text/css">
  <link href="../css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="../css/fullcalendar.css">
  <link href="../css/widgets.css" rel="stylesheet">
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet" />
  <link href="../css/xcharts.min.css" rel=" stylesheet">
  <link href="../css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  
</head>
<body>
 <section id="container" class="">
   <header class="header dark-bg">
    <!--logo start-->
      <a href="" class="logo">Smart City Management System<span class="lite"></span></a>
      <div align="right" style="padding: 17px;">
      <form action=".././logout.do" method="post">
      <input type="submit" name="LogOut" value="LOgOut" align="right">
      </form>
      </div>
      <!--logo end-->
	   </header>
	   
	   <!--sidebar start-->
    <aside>
     <div id="sidebar" class="nav-collapse ">
    <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="active">
          <a class="" href="#complaintrequest">
          <i class="icon_genius"></i>
                          <span>Complaint Request</span>
            </a>
        </li>
            <li>
            <a class="" href="#CRL">
                          <i class="icon_genius"></i>
                          <span>Complaint Request List</span>
                      </a>
          </li>
        </ul>
    </div></aside>
     <!--main content start-->
    <section id="main-content">
    <section class="wrapper">
    
        <section id="complaintrequest">
        
<br><br><br><br>        
        <div class="row">

          <div class="col-lg-9 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>Comment Request</strong></h2>
                 </div>
                                                  <% Connection con3=dbc.getConnection();
      Statement st3=con3.createStatement();
      ResultSet rs3=st3.executeQuery("SELECT w.`COMPLAINT_TYPE`,d.`WARDS_NAME`, w.COMPLAINT_DESC , w.`CREATED_DATE`,w.`STATUS`,w.CID,w.COMMENT,w.ADDRESS FROM complains w  JOIN `wards` d ON w.`WARDS_ID`= d.`WARDS_ID` where w.CID ="+request.getParameter("id")+";");
      %>
              <%
        while(rs3.next())
            {%>
             
              <div class="panel-body">
              
              <form class="form-horizontal" action=".././comment.do" method="post">
              <input type="hidden"  name="id" value=<%= rs3.getInt(6) %>>
               <div class="form-group">
                        <label class="control-label col-lg-2" for="cType"> Complaint Type</label>
                        <div class="col-lg-6">
                        <input type="text" class="form-control" id="cdis" name="cdis" value=<%=rs3.getString(1)%> disabled="disabled" >
                        
                        </div>
                      </div>
               <div class="form-group">
                        <label class="control-label col-lg-2" for="cdis">Complaint Description</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="cdis" name="cdis" value=<%=rs3.getString(3).trim()%> disabled="disabled">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="cdis">Address</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="address" name="address" value=<%= rs3.getString(8) %> disabled="disabled">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="cd">Created Date</label>
                        <div class="col-lg-6">
                          <input type="date" class="form-control" id="cd" name="cd" value= <%= rs3.getString(4) %> disabled="	disabled">
                        </div>
                      </div>
               <div class="form-group">
                        <label class="control-label col-lg-2" for="ward">Ward</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="ward" name="ward" value= <%= rs3.getString(2) %> disabled="disabled">
                        </div>
                      </div>
               
                <div class="form-group">
                        <label class="control-label col-lg-2" for="comment">Comment</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="comment" name="comment" >
                        </div>
                        </div>
                      <div class="form-group">
                        <!-- Buttons -->
                        <div class="col-lg-offset-2 col-lg-9">
                          <button type="submit" class="btn btn-danger">Create</button>
                          <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                      </div>
              </form>
                              </div>
                                <%}
          
      %>

            </div>

          </div>
          <!--/col-->
        
         
          <!--/col-->
         
          <!--/col-->

        </div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
        
        </section>
                <section id="CRL">
                
<div class="row">
          <div class="col-sm-12">
            <section class="panel">
                                 <% Connection con2=dbc.getConnection();
      Statement st2=con2.createStatement();
      ResultSet rs2=st2.executeQuery("SELECT w.`COMPLAINT_TYPE`,d.`WARDS_NAME`, w.COMPLAINT_DESC , w.`CREATED_DATE`,w.`STATUS`,w.CID,w.COMMENT FROM complains w  JOIN `wards` d ON w.`WARDS_ID`= d.`WARDS_ID`;");
      %>
            
              <header class="panel-heading">
                Complaint Request List 
              </header>
              <table class="table">
                <thead>
                  <tr>
                    <th>COMPLAINT TYPE</th>
                    <th>WARD NAME</th>
                    <th>COMPLAINT DESC</th>
                    <th>CREATED DATE</th>
                    <th>STATUS</th>
                    <th>COMMENT</th>
                    <th>ADD COMMENT</th>
                  </tr>
                </thead>
                <tbody>
          <%
        while(rs2.next())
            {%>
        	<tr>
             <td><%=rs2.getString(1)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(2)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(3)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(4)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(5)%> &nbsp;&nbsp;</td><td><%=rs2.getString(7)%></td><td><a href="/complainManagementSystem/jsp/addComment.jsp?id=<%= rs2.getInt(6)%>">Comment</a></td> 
            </tr>
            
           <%}
          
      %>
    
            </tbody>
              </table>
            </section>
        </div>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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