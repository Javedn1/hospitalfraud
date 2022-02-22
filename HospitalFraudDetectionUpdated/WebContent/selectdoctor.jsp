<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fraud Detection In Hospital</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
<script language="javascript" type="text/javascript">
</script>
</head>
<body>
<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="patienthome.jsp" class="current"><span></span>Home</a></li>
				<li><a href="editpatient.jsp"><span></span>Edit Profile</a></li>
                <li><a href="searchHospital.jsp"><span></span>Search Hospital</a></li>
                <li><a href="appointment.jsp"><span></span>Appointment</a></li>
                <li><a href="claim.jsp"><span></span>Claim</a></li>
                <li><a href="Logout"><span></span>Logout</a></li>
            </ul>   
            <div class="cleaner"></div> 	
        </div> <!-- end of menu -->
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->

</div> <!-- end of header wrapper -->

<div id="templatemo_banner_wrapper">

	<div id="templatemo_banner">

        <div id="banner_content">
            <div id="banner_title"></div>
            <div id="banner_text">
            	
            </div>
            
          <div class="cleaner"></div>
        </div> <!-- end of banner content -->
        
        <div class="cleaner"></div>   
    </div> <!-- end of banner -->

</div> <!-- end of banner wrapper -->

<div id="templatemo_content_top_wrapper">

    <div id="templatemo_content_top">
    
        <div class="header_01" align="center"><b>Welcome To Fraud Detection In Hospital Management System</b></div>
   			
   			<center><h2>Doctor's <span class="byline"> Details</span></h2></center>
		<form action="applyform" method="post">

							<table align="center" border="1" cellpadding="10" cellspacing="15">
							<tr>
								<th>Sr.No</th>
								<th>Doctor Name</th>
								<th>Specialization</th>
								<th>Date</th>
								<th>Area</th>
								<th>Timing 1</th>
								<th>Timing 2</th>
								<th>Timing 3</th>
								<th>Timing 4</th>
								<th>Timing 5</th>
								<th>Timing 6</th>
								<th>Action</th>
								
							</tr>
							
							<%
							    String specialization = request.getParameter("specialization");
							
								try {
									Connection con = DbConnection.getConnection();
									
									PreparedStatement ps = con.prepareStatement("select * from doctordetail where specialization='"+specialization+"'");
									ResultSet rs = ps.executeQuery();
									String dname,date,area,time1,time2,time3,time4,time5,time6;
									int srno = 0;
									String id;
									while (rs.next()) {
										srno++;
										dname = rs.getString("dname");
										System.out.println("dname Name===" +dname);
										specialization = rs.getString("specialization");
										System.out.println("specialization===" +specialization);
										date = rs.getString("date");
										System.out.println("date===" +date);
										area = rs.getString("area");
										System.out.println("area===" +area);
										time1 = rs.getString("time1");
										System.out.println("time1===" +time1);
										time2 = rs.getString("time2");
										System.out.println("time2===" +time2);
										time3 = rs.getString("time3");
										System.out.println("time3===" +time3);
										time4 = rs.getString("time4");
										System.out.println("time4===" +time4);
										time5 = rs.getString("time5");
										System.out.println("time5===" +time5);
										time6 = rs.getString("time6");
										System.out.println("time6===" +time6);
										
							%>

							<tr align="center">
								<td><%=srno%></td>
								<td><%=dname%></td>
								<td><%=specialization%></td>
								<td><%=date%></td>
								<td><%=area%></td>
								<td><%=time1%></td>
								<td><%=time2%></td>
								<td><%=time3%></td>
								<td><%=time4%></td>
								<td><%=time5%></td>
								<td><%=time6%></td>
								<td><a href="applyForm.jsp?dname=<%=dname%>&specialization=<%=specialization%>&date=<%=date%>&area=<%=area%>time1=<%=time1%>&time2=<%=time2%>&time3=<%=time3%>&time4=<%=time4%>&time5=<%=time5%>&time6=<%=time6%>">Apply</a></td>
							</tr>


							<%
								}

								} catch (Exception e) {
									System.out.print("catcht" + e);

								}
							%>
							
							<tr/>

						</table>
						</form>  
          
			
       
      <div class="margin_bottom_10"></div>
        <div class="rc_btn_01"></div>
      <div class="cleaner"></div>
    
    </div> <!-- end of content top -->

</div> <!-- end of content top wrapper -->

<div id="templatemo_content_wrapper">

    <div id="templatemo_content">
   
    </div> 

</div> 
      
<div id="templatemo_footer_wrapper">
	
    <div id="templatemo_footer">
    <div align=center>Fraud Detection In Hospital Management System <!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>