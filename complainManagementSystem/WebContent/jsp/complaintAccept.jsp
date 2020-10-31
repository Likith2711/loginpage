<%@page import="com.cms.to.LoginDetailsTO"%>
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
    </div>
    </aside>
     <!--main content start-->
    <section id="main-content">
<% HttpSession httpSession = request.getSession();
LoginDetailsTO detailsTO =(LoginDetailsTO) httpSession.getAttribute("loginDetailsTO");
Connection con5=dbc.getConnection();
Statement sta5 = con5.createStatement();
String name= null;
String wardName = null;
ResultSet ress5 = sta5.executeQuery("SELECT w.`NAME`,d.`WARDS_NAME` FROM wardsmemberregistration w  JOIN `wards` d ON w.`WARDS_ID`= d.`WARDS_ID` WHERE w.`LOGIN_ID`="+detailsTO.getLoginID());
while(ress5.next()){
	name = ress5.getString(1);
	wardName = ress5.getString(2);
}
 %>
                <section id="ward">
                <br><br><br><br><br><br>
               <h1 align="left">Ward Member Name :<%= name %></h1>
 <h1 align="center">Ward Name:<%= wardName %></h1>
  
<div class="row">
          <div class="col-sm-12">
                <section id="ward">
<div class="row">
          <div class="col-sm-12">
            <section class="panel">
                                 <%
                                 Connection con2=dbc.getConnection();
                                 int wardID = 0;
                                 Statement sta = con2.createStatement();
        sta.executeUpdate("UPDATE `complains` SET STATUS = 'Processing' WHERE CID ="+request.getParameter("id"));                         
                                 ResultSet ress = sta.executeQuery("select WARDS_ID from wardsmemberregistration where LOGIN_ID =  "+detailsTO.getLoginID());
      while(ress.next()){
    	  wardID = ress.getInt("WARDS_ID");
      }
                                 Statement st2=con2.createStatement();
                                 
      ResultSet rs2=st2.executeQuery("SELECT w.`COMPLAINT_TYPE`,d.`WARDS_NAME`,w.`CREATED_DATE`,w.`STATUS`,w.CID,w.COMMENT ,w.COMPLAINT_DESC ,w.ADDRESS  FROM complains w  JOIN `wards` d ON w.`WARDS_ID`= d.`WARDS_ID`where d.`WARDS_ID` = "+wardID);
      %>
            
              <header class="panel-heading">
                Complaint Request List 
              </header>
              <table class="table">
                <thead>
                  <tr>
                    <th>COMPLAINT TYPE</th>
                    <th>WARD NAME</th>
                    <th>CREATED DATE</th>
                    <th>STATUS</th>
                    <th>COMMENT</th>
                    <th>COMPLAINT_DESC</th>
                    <th>ADDRESS</th>
                    <th>ACCEPT</th>
                    <th>REJECT</th>
                    <th>CLOSED</th>
            
                  </tr>
                </thead>
                <tbody>
          <%
        while(rs2.next())
            {%>
        	<tr>
           <td><%=rs2.getString(1)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(2)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(3)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(4)%> &nbsp;&nbsp;</td><td><%=rs2.getString(6)%> &nbsp;&nbsp;</td><td><%=rs2.getString(7)%> &nbsp;&nbsp;</td><td><%=rs2.getString(8)%> &nbsp;&nbsp;</td> 
            <td><a href="/complainManagementSystem/jsp/complaintAccept.jsp?id=<%= rs2.getInt(5)%>">ACCEPT </a>&nbsp;&nbsp;</td> <td><a href="/complainManagementSystem/jsp/complaintReject.jsp?id=<%= rs2.getInt(5)%>">REJECT </a>&nbsp;&nbsp;</td> 
 <td><a href="/complainManagementSystem/jsp/complaintclose.jsp?id=<%= rs2.getInt(5)%>">CLOSE </a>&nbsp;&nbsp;</td>
            </tr>
            
           <%}
          
      %>
    
            </tbody>
              </table>
                      <form>
               <div align="center" style="padding: 17px;" >
<input  type="button" value="Print" onClick="window.print()" size="60%" style="background: blue;font-size: 250%">
</div>
</form>
            </section>
        </div>
        </div>
    </section>
    </div>    
    </div>    
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