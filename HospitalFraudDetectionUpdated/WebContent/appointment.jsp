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
                <li><a href="index.jsp"><span></span>Logout</a></li>
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
       
        
           <tr>
           <td><img src="images/arrow.png" width="35" height="35" alt="" /></td>
           <td><a href="appointmentReq"><span style="color:red;font-size:22px">Send Appointment Request</span></a></td>
           </tr>
   			
   			<form action="selectdoctor.jsp" method="post">
				<table align="center" border="0" cellpadding="10" cellspacing="15">
					<tr>
						<td>Doctor Specialization Required : </td>
						<td><select name="specialization" id="selectBox" onchange="onChangeOption1()">

					<%
						try {
							int i = 0;

							Connection con = DbConnection.getConnection();
							PreparedStatement ps = con
										.prepareStatement("select * from doctordetail");
							ResultSet rs = ps.executeQuery();
							String specialization;

							while (rs.next()) {
								specialization = rs.getString("specialization");
								System.out.println("specialization No===" + specialization);
					%>

						<option name="selectDoctor" value="<%=specialization%>"><%=specialization%></option>

					<%
							}
								} catch (Exception e) {
								System.out.print("catcht" + e);
								}
					%>
					</select></td></tr>
						<tr>
							<td></td>
							<td align="center"><input type="submit" value="Confirm"
								style="height: 35px; width: 90px;"> </td>
						</tr>
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