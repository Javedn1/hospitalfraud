<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin Home</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<style>
table, th, td {
    border: 1px solid black;
}
th, td {
    padding: 5px;
    text-align: left;
}
</style>
</head>
<body>
<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="adminhome.jsp" class="current"><span></span>home.</a></li>

                <li><a href="addHospital.jsp"><span></span>Add Hospital</a></li>
                <li><a href="claimrequest.jsp"><span></span>Claim Request</a></li>
                <li><a href="conformationSend.jsp"><span></span>Confirmation send</a></li>          
                <li><a href="adminhome.jsp"><span></span>Logout</a></li>
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
    
        <div class="header_01">>Welcome To Fraud Detection In Hospital Management System</div>
      
     <center> <h2>Doctor Requested for File Recover</h2></center>
      <table style="width:100%">
  <tr>
  <th>Claim ID</th>
    <th>Patient Name</th>
    <th>Hospital Name</th>
    <th>Contact No</th>
    <th>Apply Date</th>
    <th>View</th>
    
    
      
  </tr>
  
    
  
  
  

    <%  Connection con = DbConnection.getConnection();
									
    		 String claimid,hospitalname,patientname,contactno,applydate;
									PreparedStatement ps = con.prepareStatement("SELECT * FROM `generateid`");
									ResultSet rs = ps.executeQuery();
									
									
									while (rs.next()) {
										
										claimid = rs.getString("claimid");
										hospitalname = rs.getString("hospitalname");
										patientname = rs.getString("patientname");
										contactno = rs.getString("contactno");
										applydate = rs.getString("applydate");
										System.out.println(""+claimid);
										System.out.println(""+hospitalname);
										System.out.println(""+patientname);
										System.out.println(""+contactno);
										System.out.println(""+applydate); %>
										<tr><td><%=claimid %></td>
										<td><%=hospitalname %></td>
										<td><%=patientname %></td>
										<td><%=contactno %><input type="hidden" name="claimid" value="<%=claimid%>" /></td>
										<td><%=applydate %></td>
										<td><a href="viewAll.jsp?claimid=<%=claimid%>"> ViewAll </a></td>
										</tr>
										
										
								<% 	}
										%>
										</table>
   <form action="updatestatus" method="post" onsubmit="return validate()">
<center>
		<table border="0" cellspacing="5" cellpadding="10" style=" border:2px solid red;" >
                    
					<!-- <td style="color: black;">Enter Id</td>			
               <td><input type="text" name="id" id="id"></td>
             <td><input type="submit" value="Update"></td> -->
              
               
                </table>
                </center>
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
    <div align=center>Welcome To The Privacy Protection For Wireless Sensor Data <!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>