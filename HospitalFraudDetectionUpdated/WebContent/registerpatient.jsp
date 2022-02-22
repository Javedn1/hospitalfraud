
<%@page import="com.privacyprotection.GlobalFunction"%>
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
                <li><a href="doctorhome.jsp" class="current"><span></span>Home</a></li>
				<li><a href="editDoctor.jsp"><span></span>Edit Profile</a></li>
				<li><a href="#"><span></span>Patient form</a></li>
                <li><a href="patientsAppointment.jsp"><span></span>Appointments</a></li>
                <li><a href="doctorhome.jsp"><span></span>Logout</a></li>
           
            </ul>   
            <div class="cleaner"></div> 	
        </div> <!-- end of menu -->
        
        <div class="cleaner"></div>
    </div> <!-- end of header -->

</div> 



<div id="templatemo_content_top_wrapper">

    <div id="templatemo_content_top">
        <div class="header_01" align="center"><b>Welcome To Fraud Detection In Hospital Management System</b></div>
    		<div align="center">
    		<form action="registerpatient.jsp" method="get">
    		<table>
    		<tr>
    		<td><b>Select Patient Username</b></td>
    		<td>
    		<select name="pname">
    		<%
    		Connection con=DbConnection.getConnection();
    		PreparedStatement ps=con.prepareStatement("SELECT * FROM `patient_register`");
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			rs.getString("username");	
    		%>
    			<option value="<%=rs.getString("username")%>"><%=rs.getString("username")%></option>
    		<%
    		} %>
    		</select>
    		
    		
    		</td>
    		</tr>
    		<tr>
    		<td><input type="submit" value="View Record"></td>
    		</tr>
    		
    		</table>
    	</form>
    		</div>
    
    <%
    if(request.getParameter("pname")!=null)
    {
    	String pname=request.getParameter("pname");
    
    	GlobalFunction gf=new GlobalFunction();
    	System.out.print("pname "+pname);
    	PreparedStatement ps1=con.prepareStatement("SELECT pfname,pmname,plname FROM `patient_register` where username='"+pname+"'");
		ResultSet rs1=ps1.executeQuery();
		if(rs1.next())
		{
			String pfname=rs1.getString("pfname");
			String pmname=rs1.getString("pmname");
			String plname=rs1.getString("plname");
			
			String claimid=gf.getClaimId(pname);
    %>
        <%
       
/*         con.prepareStatement("");
        
        String claimid=request.getParameter("claimid");
        System.out.println("cliam id is="+claimid);
 */        
        
        %>
<b>DETAILS OF PRIMARY INSURED</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Your ID <%=claimid%></b>

         <form action="RegisterPatient" method="post">
           <table style="width:100%">
  <tr>
    <th>Patient Name:</th>
    <%-- <td><input type="text" name="pname" readonly="readonly" value="<%=pfname %>&nbsp;<%=pmname %>&nbsp;<%=plname %>" id=""policyno"></input></td>
     --%> 
     <td><input type="text" name="pname" value="<%=pfname %>&nbsp;<%=pmname %>&nbsp;<%=plname %>" id=""policyno"></input></td>
    
  
    <th>Patient ID(same as claim id):</th>
    <td><input type="text" name="pid" id="pid"></input></td>
    
  </tr>
  <tr>
    <th>Address:</th>
    <td><input type="text" name="paddress" id="paddress"></input></td>
    
 
    <th>Admit Date:</th>
    <td><input type="text" name="admitdate" id="admitdate"></input></td>
    
  </tr>
  <tr>
    <th>Discharge Date:</th>
    <td><input type="text" name="dischargedate" id="dischargedate"></input></td>
    
  
    <th>Admit Class:</th>
    <td><input type="text" name="admitclass" id="admitclass"></input></td>
    
  </tr><tr>
    <th>Aadhar No:</th>
    <td><input type="text" name="adharno" id="adharno"></input></td>
    
  
    <th>Symptom1:</th>
    <td><input type="text" name="sym1" id="sym1"></input></td>
    
  </tr>
  <tr>
    <th>Symtom2:</th>
    <td><input type="text" name="sym2" id="sym2"></input></td>
    
  
    <th>Symtom3:</th>
    <td><input type="text" name="sym3" id="sym3"></input></td>
    
  </tr>
  <tr>
    <th>Prescription:</th>
    <td><input type="text" name="prescrip" id="prescrip"></input></td>
    
  
    <th>report:</th>
    <td><input type="text" name="report" id="report"></input></td>
    
  </tr>
  <tr>
    
    <td><strong>Gender</strong></td><td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
           
    
    
 
    <th>Mobile Number:</th>
    <td><input type="text" name="mno" id="mno"></input></td>
    
  </tr>
  <tr>
    <th>PIN Code:</th>
    <td><input type="text" name="pincode" id="pincode"></input></td>
    
  
    <th>Phone No:</th>
    <td><input type="text" name="phno" id="phno"></input></td>
    <input type="hidden" name="claimid" value="<%=pname%>">
  </tr>
  
  
</table>
   			
       <input type="submit"  value="NEXT"style="font-size:large; 70px; height: 38px; width:71px;"></input>
       </form>
    
    <%}
		}%>
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