<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

</head>
<body>
<%-- <%
if(request.getParameter("Accept")!=null){
	   out.println("<script>alert('Claim Accept Successfully....');</script>"); 
}
%>
 --%>

<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="adminhome.jsp" class="current"><span></span>Home</a></li>
                <li><a href="addHospital.jsp"><span></span>Add Hospital</a></li>
                <li><a href="claimrequest.jsp"><span></span>Claim Request</a></li>
                <li><a href="#"><span></span>confirmation send</a></li>
           
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
    
        <div class="header_01"><center><b>Welcome To Fraud Detection In Hospital Management System</b></center></div>
      
     <center> <h2>Claim Accept or Reject</h2></center>
     
   <form action="conformationSend" method="post" onsubmit="return validate()">
   	
		<table border="0" align="center" cellspacing="5" cellpadding="10" style=" border:2px solid red;">                   
				<tr>
				<td><input type="submit" value="Accept"></td>
				<td><input type="submit" value="Reject"></td>
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