<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.util.DbConnection"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myapp">
<head>
<SCRIPT language="javascript">
		function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var cell1 = row.insertCell(0);
			var element1 = document.createElement("input");
			element1.type = "checkbox";
			element1.name="chkbox[]";
			cell1.appendChild(element1);

			var cell2 = row.insertCell(1);
			cell2.innerHTML = rowCount;

			var cell3 = row.insertCell(2);
			var element2 = document.createElement("input");
			element2.type = "text";
			element2.name = "txtbox[]";
			cell3.appendChild(element2);
			
			var cell4 = row.insertCell(3);
			var element3 = document.createElement("input");
			element3.type = "text";
			element3.name = "txtbox[]";
			cell4.appendChild(element3);
			
			var cell5 = row.insertCell(4);
			var element4 = document.createElement("input");
			element4.type = "text";
			element4.name = "txtbox[]";
			cell5.appendChild(element4);
			
			var cell6 = row.insertCell(5);
			var element5 = document.createElement("input");
			element5.type = "text";
			element5.name = "txtbox[]";
			cell6.appendChild(element5);
			
			var cell7 = row.insertCell(6);
			var element6 = document.createElement("input");
			element6.type = "text";
			element6.name = "txtbox[]";
			cell7.appendChild(element6);


		}

		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}


			}
			}catch(e) {
				alert(e);
			}
		}

	</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fraud Detection In Hospital</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
<script language="javascript" type="text/javascript">
</script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
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
                <li><a href="table.jsp"><span></span>table</a></li>
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
<b>DETAILS OF HOSPITALIZATION</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Your ID <%=claimid %></b>
         <form action="Claim3" method="post" ng-submit="addNew()">
           <table style="width:100%">
  <tr>
  <th>Name of Hospital where admitted:</th>
    <td><input type="text" name="hname" id="hname"></input></td>
    
    <th>Room Category occupied</th>
    
    <td><input type="checkbox" name="room" value="1 day">Day care<br>
    <input type="checkbox" name="room" value="single occupancy">Single occupancy<br>
    <input type="checkbox" name="room" value="Twin sharing">Twin sharing<br>
    <input type="checkbox" name="room" value="3 bed">3 or more bed<br></td>
      
  </tr>
  <tr>
    <th>Hospitalization due to:</th>
    <td><input type="checkbox" name="dueto" value="injury">Injury<br>
    <input type="checkbox" name="dueto" value="illness">Illness<br></td>
    
 
    <th>Date of Accident / Injury::</th>
    <td><input type="text" name="date" id="date"></input></td>
    
  </tr>
  <tr>
    <th>Reported to Police</th>
    
         <td>&nbsp;Yes&nbsp;<input type="radio" name="rpolice" id="rpolice" value="yes"></input> &nbsp;No&nbsp;<input type="radio" name="rpolice" id="rpolice" value="no"></input></td>
           
    </td>
  
    <th>FIR / MLC No::</th>
    <td><input type="text" name="fir" id="fir"></input></td>
    
  
  
  
</table>
<br>
<br>
<b>DETAILS OF CLAIM</b>
         
           <table style="width:100%">
  <tr>
    <th>Pre Hospitalization Expenses:</th>
   <td><input type="text" name="expenses" id="expenses"></input></td>
     <th>Health Check Up Cost:</th>
    <td><input type="text" name="checkup" id="chechup"></input></td>      
  </tr>
  <tr>
    <th>Hospitalization Expenses:</th>
    <td><input type="text" name="expenses1" id="expenses1"></input></td>
    
 
    <th>Ambulance Charges:</th>
    <td><input type="text" name="ambulance" id="ambulance"></input></td>
    
  </tr>
  <tr>
    <th>Post Hospitalization Expenses</th>
    
         <td><input type="text" name="pexpenses" id="pexpenses"></input></td>
    
  
    <th>Others:</th>
    <td><input type="text" name="other" id="other"></input></td>
    
  </tr><tr>
    <th>Total Claimed Amount (Rs.)::</th>
    <td><input type="text" name="trs" id="trs"></input></td>
    
  
    <th>Claimed Amount in Words: Rupees</th>
   <td><input type="text" name="cre" id="crs"></input></td> 
    <input type="hidden" name="claimid" value="<%=claimid%>">    
    
  </tr>
  <tr>
    <th>Pre Hospitalization Period (in days):</th>
    <td><input type="text" name="day" id="day"></input></td>
    
  <th>Post Hospitalization Period (in days):</th>
    <td><input type="text" name="pday" id="pday"></input></td>
  </tr>
  
  
</table>
<br><br>


   			
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