
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

</div> 



<div id="templatemo_content_top_wrapper">

    <div id="templatemo_content_top">
    
        <div class="header_01" align="center"><b>Welcome To Fraud Detection In Hospital Management System</b></div>
        <%
        Connection con = DbConnection.getConnection();
        String claimid=request.getParameter("claimid");
        System.out.println("cliam id is="+claimid);
        
        
        %>
<b>DETAILS OF PRIMARY INSURED</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Your ID <%=claimid %></b>

         <form action="Claim1" method="post">
           <table style="width:100%">
  <tr>
    <th>Policy No:</th>
    <td><input type="text" name="policyno" id=""policyno"></input></td>
    
  
    <th>Health card No:</th>
    <td><input type="text" name="hcardno" id="hcardno"></input></td>
    
  </tr>
  <tr>
    <th>Policy start date:</th>
    <td><input type="text" name="startdate" id=""startdate""></input></td>
    
 
    <th>Policy end date:</th>
    <td><input type="text" name="enddate" id="enddate"></input></td>
    
  </tr>
  <tr>
    <th>Date of join the policy:</th>
    <td><input type="text" name="joindate" id="joindate"></input></td>
    
  
    <th>Corporate Name:</th>
    <td><input type="text" name="coname" id="coname"></input></td>
    
  </tr><tr>
    <th>Employee Id:</th>
    <td><input type="text" name="empid" id="empid"></input></td>
    
  
    <th>Name of Employee:</th>
    <td><input type="text" name="empname" id="empname"></input></td>
    
  </tr>
  <tr>
    <th>Email:</th>
    <td><input type="text" name="email" id="email"></input></td>
    
  
    <th>Mobile No::</th>
    <td><input type="text" name="mno" id="mno"></input></td>
    
  </tr>
  <tr>
    <th>Permanent Account Number (PAN)::</th>
    <td><input type="text" name="pan" id="pan"></input></td>
    
  
    <th>Address:</th>
    <td><input type="text" name="address" id="address"></input></td>
    
  </tr>
  <tr>
    <th>City:</th>
    <td><input type="text" name="city" id="city"></input></td>
    
 
    <th>State:</th>
    <td><input type="text" name="state" id="state"></input></td>
    
  </tr>
  <tr>
    <th>PIN Code:</th>
    <td><input type="text" name="pincode" id="pincode"></input></td>
    
  
    <th>Phone No:</th>
    <td><input type="text" name="phno" id="phno"></input></td>
    <input type="hidden" name="claimid" value="<%=claimid%>">
  </tr>
  
  
</table>
   			
       <input type="submit"  value="NEXT"style="font-size:large; 70px; height: 38px; width:71px;"></input>
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