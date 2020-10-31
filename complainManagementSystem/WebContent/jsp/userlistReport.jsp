<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="java.io.File"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="java.util.Date"%>

<%@page import="com.itextpdf.text.Document"%>
<%@page import="java.io.FileOutputStream"%>
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
<%
try{
	FileOutputStream file = new FileOutputStream(new File("c:/temp/userList.pdf"));
    Document document = new Document();
    PdfWriter.getInstance(document, file);

    PdfPTable table=new PdfPTable(6);

                    PdfPCell cell = new PdfPCell (new Paragraph ("Smart City Management System"));

     cell.setColspan (6);
     cell.setHorizontalAlignment (Element.ALIGN_CENTER);
     cell.setPadding (10.0f);
     cell.setBackgroundColor (new BaseColor (140, 221, 8));                

     table.addCell(cell);                

     table.addCell("USER_NAME");
     table.addCell("FATHER_NAME");
     table.addCell("MOTHER_NAME");
     table.addCell("ADDRESS");
     table.addCell("PHONE");
     table.addCell("MAIL");
     Connection con11=dbc.getConnection();
     Statement st11=con11.createStatement();
     ResultSet rs11=st11.executeQuery("SELECT * from userrgistration ");
     while(rs11.next()){
    	 table.addCell(rs11.getString("USER_NAME"));
			table.addCell(rs11.getString("FATHER_NAME"));
			table.addCell(rs11.getString("MOTHER_NAME"));
			table.addCell(rs11.getString("ADDRESS"));
			table.addCell(rs11.getString("PHONE"));

			table.addCell(rs11.getString("MAIL"));

     }
     table.setSpacingBefore(30.0f);       // Space Before table starts, like margin-top in CSS
     table.setSpacingAfter(30.0f);        // Space After table starts, like margin-Bottom in CSS								          

//Inserting List in PDF
      
//Text formating in PDF
               Chunk chunk=new Chunk("Welecome To Smart City Management System...");
chunk.setUnderline(+1f,-2f);//1st co-ordinate is for line width,2nd is space between
Chunk chunk1=new Chunk("Smart City Management System");
chunk1.setUnderline(+4f,-8f);
chunk1.setBackground(new BaseColor (17, 46, 193));      

//Now Insert Every Thing Into PDF Document
        document.open();//PDF document opened........			       

//document.add(image);

document.add(Chunk.NEWLINE);   //Something like in HTML :-)

                  document.add(new Paragraph("Smart City Management System"));

document.add(table);

document.add(chunk);
document.add(chunk1);

document.add(Chunk.NEWLINE);   //Something like in HTML :-)							    

     document.newPage();            //Opened new page

        document.close();

            file.close();


}catch (Exception e) {
    e.printStackTrace();
}

%>
 <section id="container" class="">
   <header class="header dark-bg">
    <!--logo start-->
      <a href="" class="logo">Smart City Management System<span class="lite"></span></a>
      <div align="right" style="padding: 17px;">
      <form action="./logout.do" method="post">
      <input type="submit" name="LogOut" value="LOgout" align="right">
      </form>
      </div>
      <!--logo end-->
	   </header>
	   
	   <!--sidebar start-->
    <aside>
    <div id="sidebar" class="nav-collapse ">
    <!-- sidebar menu start-->
        <ul class="sidebar-menu">
         <li>
            <a class="" href="#ward">
                          <i class="icon_genius"></i>
                          <span>Add Ward</span>
                      </a>
          </li>
                    <li>
            <a class="" href="#registration">
                          <i class="icon_genius"></i>
                          <span>Ward Member Registration</span>
                      </a>
          </li>
                    <li>
            <a class="" href="#memberList">
                          <i class="icon_genius"></i>
                          <span>Ward Member List</span>
                      </a>
          </li>
          <li>
           <a class="" href="../jsp/userlistReport.jsp">
                          <i class="icon_genius"></i>
                          <span>User List Report</span>
                      </a>
           
           </li>
            </ul>
    </div>
    </aside>
     <!--main content start-->
    <section id="main-content">
    <section class="wrapper">
    
        <section id="ward">
        <br><br><br><br>
<div class="row">
          <div class="col-sm-6">
            <section class="panel">
                                 <% Connection con=dbc.getConnection();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("SELECT * from wards ");
      %>
            
              <header class="panel-heading">
                Basic Table
              </header>
              <table class="table">
                <thead>
                  <tr>
                    <th>WARD_ID</th>
                    <th>WARDNAME</th>
                    <th>EDIT</th>
                    <th>DELETE</th>
                  </tr>
                </thead>
                <tbody>
          <%
        while(rs.next())
            {%>
        	<tr>
           <td><%=rs.getInt(1)%> &nbsp;&nbsp;<td><%=rs.getString(2)%> &nbsp;&nbsp;</td><td><a href="/complainManagementSystem/jsp/wardedit.jsp?id=<%= rs.getInt(1)%>">EDIT </a> &nbsp;&nbsp;</td><td><a href="/complainManagementSystem/jsp/warddelete.jsp?id=<%= rs.getInt(1)%>">DELETE </a>&nbsp;&nbsp;</td> 
            </tr>
            
           <%}
          
      %>
    
            </tbody>
              </table>
            </section>
          </div>
          <div class="col-sm-6">
            <section class="panel">
              <header class="panel-heading">
                ADD WARDS
              </header>
              <br/>
                            <form class="form-horizontal" action=".././wardregistration.do" method="post">
              <div class="form-group">
              <input type="hidden" name="id" value="0">
                    <label for="inputEmail1" class="col-lg-2 control-label">Ward Name</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" id="inputEmail1" placeholder="Ward Name" name="ward">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-danger">ADD</button>
                    </div>
                  </div>
                  </form>
            </section>
          </div>
        </div>
<br><br><br><br><br>        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </section>
        
        <section id="registration">
        <br><br><br><br>
        <div class="row">

          <div class="col-lg-9 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>Ward Member Registration</strong></h2>
                 </div>
              <div class="panel-body">
              
              <form class="form-horizontal" action=".././wardmemregistration.do" method="post">
               <div class="form-group">
                        <label class="control-label col-lg-2" for="username"> Name</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="username" name="name">
                        </div>
                      </div>
               <div class="form-group">
                        <label class="control-label col-lg-2" for="fathername">Father Name</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="fathername" name="fathername">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-lg-2" for="qualification">Qualification</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="qualification" name="qualification">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="mail">Mail</label>
                        <div class="col-lg-6">
                          <input type="text" class="form-control" id="mail" name="mail">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-lg-2" for="dob">DOB</label>
                        <div class="col-lg-6">
                          <input type="date" class="form-control" id="dob" name="dob">
                        </div>
                      </div>
               <div class="form-group">
                        <label class="control-label col-lg-2" for="ward">Ward</label>
                        <div class="col-lg-6">
                          <select class="form-control input-lg m-bot15" id="ward" name="ward">
                                                           <% Connection con1=dbc.getConnection();
      Statement st1=con1.createStatement();
      ResultSet rs1=st1.executeQuery("SELECT * from wards ");
      %>
                          
                          <option value="">Select Ward</option>
                                    <%
        while(rs1.next())
            {%>
           <option value= <%=rs1.getInt(1)%>> <%=rs1.getString(2)%>  </option>
            
           <%}
          
      %>
                          
                          </select>
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
                          <button type="submit" class="btn btn-danger">Create</button>
                          <button type="reset" class="btn btn-default">Reset</button>
                        </div>
                      </div>
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
        
                <section id="memberList">
                <br><br><br><br>
<div class="row">
          <div class="col-sm-8">
            <section class="panel">
                                 <% Connection con2=dbc.getConnection();
      Statement st2=con.createStatement();
      ResultSet rs2=st.executeQuery("SELECT w.`NAME`,d.`WARDS_NAME`,w.`FATHER_NAME`,w.`QUALIFACTION`,w.`MAIL` , w.WARDS_MEM_ID FROM wardsmemberregistration w  JOIN `wards` d ON w.`WARDS_ID`= d.`WARDS_ID`;");
      %>
            
              <header class="panel-heading">
                Ward Member List 
              </header>
              <table class="table">
                <thead>
                  <tr>
                    <th>NAME</th>
                    <th>WARDNAME</th>
                    <th>FATHERNAME</th>
                    <th>QUALIFICATION</th>
                    <th>MAIL</th>
                    <th>DELETE</th>
                  </tr>
                </thead>
                <tbody>
          <%
        while(rs2.next())
            {%>
        	<tr>
            <td><%=rs2.getString(1)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(2)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(3)%> &nbsp;&nbsp;</td> <td><%=rs2.getString(4)%> &nbsp;&nbsp;</td><td><%=rs2.getString(5)%> &nbsp;&nbsp;</td><td><a href="/complainManagementSystem/jsp/wardmemberdelete.jsp?id=<%= rs2.getInt(6)%>">DELETE </a> &nbsp;&nbsp;</td> 
            </tr>
            
           <%}
          
      %>
    
            </tbody>
              </table>
            </section>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>        
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