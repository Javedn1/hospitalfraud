
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
<b>DETAILS OF PRIMARY INSURED</b>
<%
HttpSession session1=request.getSession(); 
String claimid=(String)session.getAttribute("claimid");
//System.out.println("claim id in jsp ="+claimid);
%>
<%-- <b>User claim ID is<%claimid%></b> --%>
         <form action="GenerateId" method="post">
           <table style="width:100%">
  <tr>
    <th>Claim on hospital:</th>
    <td><input type="text" name="hname" id=""hname"></input></td>
    
  
    <th>Patient Name:</th>
    <td><input type="text" name="pname" id="pname"></input></td>
    
  </tr>
  <tr>
    <th>Contact no:</th>
    <td><input type="text" name="cno" id="cno"></input></td>
    
 
    <th>apply  date:</th>
    <td><input type="text" name="adate" id="adate"></input></td>
    
 
  
  
</table>
   			
       <input type="submit"  value="APPLY"style="font-size:large; 70px; height: 38px; width:71px;"></input>
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