<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.util.DbConnection"%>
<%@ page import="java.sql.*"%>
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
       
        
                    <table border="2" cellpadding="10" cellspacing="1"	style="width: 100%; border: 1px solid #ccc" align="center">
								<tr class="tableheader">
								<th>Hospital name</th>
								<th>Address</th>
								<th>Contact</th>
								<th>Appointment</th>
								
								
								

								</tr>
								<% Connection con = DbConnection.getConnection();
								String state,district,tahsil,hospitalname;
								state = request.getParameter("branch");
								district = request.getParameter("year");
								tahsil = request.getParameter("subject");
								hospitalname = request.getParameter("hospitalname");
								System.out.println(" state ="+state);
								System.out.println(" district ="+district);
								System.out.println(" tahsil ="+tahsil);
								System.out.println(" hospital name ="+hospitalname);
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select * from addhospital where state= '"+state+"'");
                   
                        while(rs.next()){
                        	
                        String n1=rs.getString("hospitalname"); 
                        String n2=rs.getString("address");
                        String n3=rs.getString("contact");
                        
                        
                        %>
                        <tr class="tablerow" align="center">
								
								<td> <%= n1 %></td>
								<td> <%= n2 %></td>
								<td> <%= n3 %><%-- <input type="hidden" name="h" value="<%=n1%>"></td> --%>
								
								
								
								<td>
            <a href="appointment.jsp?pid=<%=n1%>"> Book Appointment</a>
            </td>
								
            
                        
                           </tr>
								
								<%
                        }
                    
                    %>
                    </table>
   			
       
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