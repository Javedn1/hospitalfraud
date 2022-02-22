<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8" />
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fraud Detection In Hospital</title>
<script type="text/javascript">
function validate()
{
    
    if(document.getElementById("username").value=="")
   	{
   		alert("username should not be blank");
   		document.getElementById("username").focus();
   		return false;
   	}
    if(document.getElementById("password").value=="")
   	{
   		alert("password should not be blank");
   		document.getElementById("password").focus();
   		return false;
   	}
}
</script>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="index.jsp" class="current"><span></span>Home</a></li>

                <li><a href="#"><span></span>About</a></li>
                <li><a href="#"><span></span>Contact</a></li>
                 <li><a href="doctorhome.jsp"><span></span>Logout</a></li>
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
         
       <table align="center">
				<tr>
				<td>
				 <img src="images/people.png" width="60" height="50">&nbsp;&nbsp;&nbsp;</td>
				 <td><span style="font-size:22px; color: red;">Update Your Profile !</span></td>
				 </tr>
            </table>
       <center>
       <form action="EditDoctor" method="post" onsubmit="return validate()">
     
     <table>
     <tr>
     <th style="color: red;">Username </th><td><input type="text" name="username" id="username" placeholder="Username"></input></td>
     </tr>
     <tr>
     <th style="color: red;">Password </th><td><input type="password" name="password" id="password" placeholder="Password"></input></td>
     </tr>
     <tr>
     <td><input class="input-rounded-button" type="submit" value="Update" style="height: 30px;width: 80px;" align="right"/></td>
     </tr>       
     </table>
       </form>
       </center>
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




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<!-- Template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="utf-8" />
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<title>Study Of Intelligents</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
</head>
<body>
	<div id="header">
			<div id="logo">
				<a href="index.html"><img src="images/logo.jpg" alt="" /></a>		
			</div>		
			<ul>
				<li class="selected"><a href="index.jsp"><span>Home</span></a></li>
				<li><a href="Account.jsp"><span>My Account</span></a></li>
				<!-- <li><a href="edituser.jsp"><span>Edit Profile</span></a></li> -->
				<li><a href="postquery.jsp"><span>Search Datasets</span></a></li>
				<li><a href="searchdomain.jsp"><span>Search Domain</span></a></li>	
				<li><a href="index.jsp"><span>Logout</span></a></li>			
			</ul>
	</div>
	<div id="body">
		<div class="header">
			<div>
				<ul>
					<li><img src="images/discuss.jpg" alt="" /></li>	
					<li><img src="images/flags.jpg" alt="" /></li>
					<li><img src="images/graph.jpg" alt="" /></li>		
				</ul>		
				<div>
					<h3>This website template has been designed by <span><a href="http://www.freewebsitetemplates.com/">Free Website Templates</a> for you, for free.</span></h3>	
					<p>You can remove any link to our website from this website template, you're free to use this website template without linking back to us.If you're having problems editing this website template, then don't hesitate to ask for help on the <a href="http://www.freewebsitetemplates.com/forum">Forum</a>.</p>		
				</div>
			</div>
		</div>
		
	 <div class="container">
    <div class="container-in">
   
    
    <div class="clear"></div>
      <div class="welcome">
        <div class="login" align="center">
	       <form action="editu" name="editu" method="post" onsubmit="return validation()"> 
	        <table cellpadding="5" cellspacing="5" border="20" width="350" >
				<tr>
					<td colspan="3" bgcolor="D7231C"><span style="color: #FFFFFF;font-weight: bold;"><div style="margin:5px" align="center">Update Your Profile !</div> </span></td>
				</tr>
				<tr>
					
					<td><strong>Email</strong></td>
					<td><strong>:</strong></td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td><strong>New Password</strong></td>
					<td><strong>:</strong></td>
					<td><input type="password" name="newpassword" /></td>
				</tr>
				<tr>
					<td colspan="3" align="center"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Update" name="submit" /></div></td>
				</tr>
			</table>
			</form>
        
        </div>
        
      </div>
        </div>
    
		
		<div class="body">
			<div class="section">
				<a href="services.html">
				<img src="images/gears.jpg" alt="" />				
				services
				</a>			
			</div>	
			<div class="article">
				<img src="images/graph2.jpg" alt="" />		
				<h4>This website template has been designed by <a href="http://www.freewebsitetemplates.com/">Free Website Templates</a></h4>	
				<p>for you, for free. You can replace all this text with your own text. You can remove any link to our website from this website template, you're free to use this website template without linking back to us.</p>
			</div>
			<div class="section">
				<a href="about.html"><img src="images/globe.jpg" alt="" />about</a>			
			</div>		
		</div>
		</div>
		
	</div>
	<div id="footer">
		<div>
			<div>
				<h3>america</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>		
			<div>
				<h3>europe</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>	
			<div>
				<h3>canada</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>	
			<div>
				<h3>middle east</h3>
				<ul>
					<li>457-380-1654 main</li>				
					<li>257-301-9417 toll free</li>
				</ul>			
			</div>	
			<div>
				<h3>follow us:</h3>
				<a class="facebook" href="http://facebook.com/freewebsitetemplates" target="_blank">facebook</a>		
				<a class="twitter" href="http://twitter.com/fwtemplates" target="_blank">twitter</a>
			</div>	
		</div>
		<div>
			<p>@copy Copyright 2012. All rights reserved by Santosh</p>
		</div>
	</div>
</body>
</html>


<%@ include file="header.jsp" %>
<body>
 <%
if(request.getParameter("update")!=null){
	   out.println("<script>alert('Profile Updation failed...Try Again ;-(');</script>"); 
	}
%>
<!-- if(request.getParameter("user")!=null){
   out.println("<script>alert('Incorrect login details...'); document.ulogin.email.focus();</script>"); 
}
%> --> 
<!-- wrapper starts -->
<div class="wrapper"> 
  
  <!-- Header Starts -->
  <div class="header">
    <%@ include file="logo_header.jsp" %>
  </div>
  <!-- Header ends --> 
  
  <!-- Nav start -->
  <div class="nav">
    <div class="nav-in">
    
       <%@ include file="menu.jsp" %>
      <div class="clear"></div>
    </div>
  </div>
  <!-- Nav end --> 
  
  <!-- maincontent Starts -->
  <div class="container">
    <div class="container-in">
   
    
    
        <div class="clear"></div>
      <div class="welcome">
        <div class="login" align="center">
	       <form action="editu" name="editu" method="post" onsubmit="return validation()"> 
	        <table cellpadding="5" cellspacing="5" border="0" width="350" >
				<tr>
					<td colspan="3" bgcolor="D7231C"><span style="color: #FFFFFF;font-weight: bold;"><div style="margin:5px">Update Your Profile !</div> </span></td>
				</tr>
				<tr>
					
					<td><strong>Email</strong></td>
					<td><strong>:</strong></td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td><strong>New Password</strong></td>
					<td><strong>:</strong></td>
					<td><input type="password" name="newpassword" /></td>
				</tr>
				<tr>
					<td colspan="3" align="right"><div style="margin-right:20px">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Update" name="submit" /></div></td>
				</tr>
			</table>
			</form>
        
        </div>
        
      </div>
        </div>
    
     
     
      
      
      
      
      <div class="clear"></div>
    </div>
  </div>
  <!-- aincontent ends --> 
  
  <!-- footer starts -->
  <div class="footer">
    <%@ include file="footer.jsp" %>
  </div>
  <!-- footer ends --> 
  
</div>
<!-- wrapper ends -->

</body>
</html>
 --%>