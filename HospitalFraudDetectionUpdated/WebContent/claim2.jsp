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
<b>DETAILS OF INSURED PERSON HOSPITALIZED</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Your ID <%=claimid %></b>
         <form action="Claim2" method="post">
           <table style="width:100%">
  <tr>
  <th>Name of the Patient::</th>
    <td><input type="text" name="pname" id=""pname""></input></td>
    
    <th>Relationship with the Employee / Proposer</th>
    
    <td><input type="checkbox" name="relation" value="self">Self<br>
    <input type="checkbox" name="relation" value="spouse">Spouse<br>
    <input type="checkbox" name="relation" value="child">child<br>
    <input type="checkbox" name="relation" value="parent">Parent<br></input></td>
      
  </tr>
  <tr>
    <th>Date of Birth of Claimant::</th>
    <td><input type="text" name="dob" id=""dob""></input></td>
    
 
    <th>Age:</th>
    <td><input type="text" name="age" id="age"></input></td>
    
  </tr>
  <tr>
    <th>Gender</th>
    
         <td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
           
    </td>
  
    <th>Occupation: Service / Self Employed / Homemaker / Student / Retired / Others:</th>
    <td><input type="text" name="occup" id="occup"></input></td>
    
  
  
  
</table>
<br>
<br>
<b>DETAILS OF INSURANCE HISTORY</b>
         
           <table style="width:100%">
  <tr>
    <th>Currently do you have any other Mediclaim/Health Insurance:</th>
    
    <td>&nbsp;Yes&nbsp;<input type="radio" name="otherm" id="otherm" value="yes"></input> &nbsp;No&nbsp;<input type="radio" name="otherm" id="otherm" value="no"></input></td>
     <th>Date of commencement of first insurance without break:</th>
    <td><input type="text" name="fdate" id=""fdate""></input></td>      
  </tr>
  <tr>
    <th>Insurance Co. Name:</th>
    <td><input type="text" name="iname" id=""iname""></input></td>
    
 
    <th>Policy No::</th>
    <td><input type="text" name="pno" id="pno"></input></td>
    
  </tr>
  <tr>
    <th>Have you been hospitalized in the last four years since inception of policy</th>
    
         <td>&nbsp;Yes&nbsp;<input type="radio" name="fpolicy" id="fpolicy" value="male"></input> &nbsp;No&nbsp;<input type="radio" name="fpolicy" id="fpolicy" value="female"></input></td>
           
    </td>
  
    <th>Date of Hospitalization:</th>
    <td><input type="text" name="hdate" id="hdate"></input></td>
    
  </tr><tr>
    <th>Diagnosis:</th>
    <td><input type="text" name="diagnosis" id="diagnosis"></input></td>
    
  
    <th>Previously covered by any other Mediclaim / Health Insurance</th>
    <td>&nbsp;Yes&nbsp;<input type="radio" name="pother" id="pother" value="male"></input> &nbsp;No&nbsp;<input type="radio" name="pother" id="pother" value="female"></input></td>
           
    
  </tr>
  <tr>
    <th>If Yes, Company Name:</th>
    <td><input type="text" name="cname" id="cname"></input></td>
    
  <th>Sum Insured:</th>
    <td><input type="text" name="sum" id="sum"></input></td>
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