
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
                <li><a href="patienthome.jsp" class="current"><span></span>Back</a></li>
				
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
        /* String claimid=request.getParameter("claimid");
        System.out.println("cliam id is="+claimid); */
        
        
        %>
<b>DETAILS OF PRIMARY INSURED</b>

         <form action="#" method="post">
           <table style="width:100%">
  <tr>
    <th>Claim Id</th>
    <th>Rupes</th>
    
    </tr>
    
    <%
    PreparedStatement ps = con.prepareStatement("SELECT distinct claimid,value FROM `testclaim`");
    ResultSet rs = ps.executeQuery();
    while(rs.next())
    {
    	String claimId = rs.getString("claimid");
    	String Value = rs.getString("value");
    	
    	%>
    	<tr>
    	<td><%=claimId %></td><td><%=Value %></td>
    	</tr>
    	
    	<%
    }
    %>
  
  
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