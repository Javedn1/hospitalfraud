<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

</head>
<body>
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
      
     <center> <h2>Hospitals and its Charges</h2></center>
     
   <form action="details.jsp" method="post" onsubmit="return validate()">
	<center>
		<table border="10" cellspacing="5" cellpadding="10" style=" border:2px solid red;" >
            
            <tr>
    		<td><b>Select Hospital</b>
    		       
			<td><select name="hospitalname">
			<%
    		Connection con=DbConnection.getConnection();
    		PreparedStatement ps=con.prepareStatement("SELECT * FROM `charges`");
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			rs.getString("hospitalname");	
    		%>
    			<option value="<%=rs.getString("hospitalname")%>"><%=rs.getString("hospitalname")%></option>
    		<%
    		} %>
    		</select>
    		
    		</td>
    		</tr>
    		<tr>
    		<td><input type="submit" value="Details"></td>
    		</tr>
			
			
          
		</table></center></form>
    
    </div> 
    
    
    <table border="10" cellspacing="3" cellpadding="10" style="width:35%; line-height: 30px; margin-left: auto; margin-right: auto;">         
    <tr>
    <td><center><b>id</b></center></td>
    <td><center><b>Surgeries</b></center></td>
	<td><center><b>Services</b></center></td>
	<td><center><b>Charges</b></center></td>
    </tr>
    
     <%
    if(request.getParameter("hospitalname")!=null)
    {
    	String hospitalname=request.getParameter("hospitalname");
    
    	System.out.print("hospitalname "+hospitalname);
    	PreparedStatement ps1=con.prepareStatement("SELECT * FROM `charges` where hospitalname='"+hospitalname+"'");
		ResultSet rs1=ps1.executeQuery();
		while(rs1.next())
		{
			String id=rs1.getString("id");
			String Surgeries=rs1.getString("Surgeries");
			String Services=rs1.getString("Services");
			String charges=rs1.getString("charges");
			
    %>
    
    <tr>
    	<td><center><%=id %></center></td>
		<td><center><%=Surgeries %></center></td>
		<td><center><%=Services %></center></td>
		<td><center><%=charges %></center></td>
	</tr>
    
    <%
		}
    }
    %>
</table>
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