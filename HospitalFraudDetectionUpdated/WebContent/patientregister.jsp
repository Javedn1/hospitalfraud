<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Register</title>
<script type="text/javascript">
function validate()
{
    
    if(document.getElementById("pfname").value=="")
   	{
   		alert("pfname should not be blank");
   		document.getElementById("pfname").focus();
   		
   		return false;
   	}
    if(document.getElementById("pmname").value=="")
   	{
   		alert("pmname should not be blank");
   		document.getElementById("pmname").focus();
   		return false;
   	}
    if(document.getElementById("plname").value=="")
   	{
   		alert("plname should not be blank");
   		document.getElementById("plname").focus();
   		return false;
   	}
    if(document.getElementById("dob").value=="")
   	{
   		alert("dob should not be blank");
   		document.getElementById("dob").focus();
   		return false;
   	}
    if(document.getElementById("age").value=="")
   	{
   		alert("age should not be blank");
   		document.getElementById("age").focus();
   		return false;
   	}
    if(document.getElementById("gender").value=="")
   	{
   		alert("gender should not be blank");
   		document.getElementById("gender").focus();
   		return false;
   	}
    if(document.getElementById("bloodgroup").value=="")
   	{
   		alert("bloodgroup should not be blank");
   		document.getElementById("bloodgroup").focus();
   		return false;
   	}
    if(document.getElementById("refdoc").value=="")
   	{
   		alert("refdoc should not be blank");
   		document.getElementById("refdoc").focus();
   		return false;
   	}
    if(document.getElementById("address").value=="")
   	{
   		alert("address should not be blank");
   		document.getElementById("address").focus();
   		return false;
   	}
    if(document.getElementById("city").value=="")
   	{
   		alert("city should not be blank");
   		document.getElementById("city").focus();
   		return false;
   	}
    if(document.getElementById("email").value=="")
   	{
   		alert("email should not be blank");
   		document.getElementById("email").focus();
   		return false;
   	}
    /* if(document.getElementById("mobile").value=="")
   	{
   		alert("mobile should not be blank");
   		document.getElementById("mobile").focus();
   		return false;
   	} */
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
                <li><a href=patientlogin.jsp><span></span>Logout</a></li>
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
    
        <div class="header_01"><b>Welcome To Fraud Detection In Hospital Management System</b></div>
       
       
       <table align="center">
				<tr>
				<td>
				 <img src="images/people.png" width="60" height="50">&nbsp;&nbsp;&nbsp;</td>
				 <td><span style="font-size:22px; color: red;">Patient Registration</span></td>
				 </tr>
            </table>
            <br/>
            
            
          <form action="PatientRegister" method="post"  onsubmit="return validate()">
            <center><table>
            <tr>
            <td><strong>First Name</strong></td><td><input type="text" name="pfname" id="pfname"></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Middle Name</strong></td><td><input type="text" name="pmname" id="pmname"></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Last Name</strong></td><td><input type="text" name="plname" id="plname"></input>&nbsp;&nbsp;&nbsp;</td>
            </tr>
            
            
            <tr>
            <td><strong>Date of Birth</strong></td><td><input type="text" name="dob" id="dob"></input></td>
             <td><strong>Age</strong></td><td><input type="text" name="age" id="age"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Gender</strong></td><td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
           <!--  <td><strong>ClaimID</strong></td><td><input type="text" name="claimid" id="claimid"></input></td>
           -->  </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            <tr>
            <td><strong>Blood Group</strong></td><td><select name="bloodgroup" id="bloodgroup">
       								<option>----Select----</option>
       								<option value="A">A</option>
        							<option value="B">B</option>
        							<option value="O">O</option>
									<option value="AB">AB</option>
									<option value="A">A+</option>
        							<option value="B">B+</option>
        							<option value="O">O+</option>
									<option value="AB">AB+</option>
									<option value="A">A-</option>
        							<option value="B">B-</option>
        							<option value="O">O-</option>
									<option value="AB">AB-</option>
									</select></td>
									<td><strong>Reference Doctor Name</strong></td><td><input type="text" name="refdoc" id="refdoc"></input></td>
            </tr>
           
            
            <tr>
            <td><strong>Address</strong></td><td><input type="text" name="address" id="address"></input></td>
            <td><strong>City</strong></td><td><input type="text" name="city" id="city"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
           
           
            <tr>
            <td><strong>Email Id</strong></td><td><input type="text" name="email" id="email"></input></td>
            <td><strong>Mobile no</strong></td><td><input type="text" name="mobile" maxlength="10" id="mobile"></input></td>
            </tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
          
            
            <tr>
            <td><strong>UserName</strong></td><td><input type="text" name="username" id="username"></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Password</strong></td><td><input type="password" name="password" id="password"></input></td>
            </tr>
            </table></center>
            <br/>
            <table align="center">
            <tr>
            <td><input type="submit" style="font-size:large; 70px; height: 38px; width:71px;"></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="patientregister.jsp"><img src="images/reset.png" width="60" height="40" title="Reset"></img></a></td>
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
    <div align=center>Welcome To Fraud Detection In Hospital Management System <!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>