<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor Register</title>

<script type="text/javascript">

function AllowAlpha() {
    if (!ureg.pfname.value.match(/^[a-zA-Z]+$/)
            && ureg.pfname.value != "") {
    	ureg.pfname.value = "";
    	ureg.pfname.focus();
        alert("Please Enter only alphabet in text");
    }
    
    if (!ureg.pmname.value.match(/^[a-zA-Z]+$/) 
    		&& ureg.pmname.value != "") {
    	ureg.pmname.value = "";
    	ureg.pmname.focus();
        alert("Please Enter only alphabets in text");
    }
    
    if (!ureg.plname.value.match(/^[a-zA-Z]+$/) 
    		&& ureg.plname.value != "") {
    	ureg.plname.value = "";
    	ureg.plname.focus();
        alert("Please Enter only alphabets in text");
    }
}

function ValidateDOB()
{
    var dob = document.ureg.dob.value;
    var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
    if (dob == null || dob == "" || !pattern.test(dob)) {
        alert( "Invalid date of birth\n");
        return false;
    } 
}
   
function AllowNumbers() {
        if (!ureg.age.value.match(/^[0-9]+$/)
                && ureg.age.value != "") {
        	ureg.age.value = "";
        	ureg.age.focus();
            alert("Please Enter only Digits in text");
        }
        else   if (ureg.age.value.length!=2)
        {
        	ureg.age.value = "";
        	ureg.age.focus();
            alert("Please Enter Valid Age");
            return false;
       }
    }

function AllowAlphabet() {
    if (!ureg.address.value.match(/^[a-zA-Z]+$/)
            && ureg.address.value != "") {
    	ureg.address.value = "";
    	ureg.address.focus();
        alert("Please Enter only alphabet in text");
    }
    
    if (!ureg.city.value.match(/^[a-zA-Z]+$/) 
    		&& ureg.city.value != "") {
    	ureg.city.value = "";
    	ureg.city.focus();
        alert("Please Enter only alphabets in text");
    }
}

function validEmail() {
	var mail=document.ureg.email.value;
	if(mail== ""){
        alert("Enter mailid");
        document.ureg.email.focus();
        return false;
    }
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
    {  
    }else{
    	alert("Enter Valid mailid");
    	 document.ureg.email.focus();
       return false;
	}
}

function Validate()
{ 
   var y = document.ureg.mobno.value;
   if(isNaN(y)||y.indexOf(" ")!=-1)
   {   
	   ureg.mobno.value="";
	   ureg.mobno.focus();
       alert("Enter numeric value");
       return false;
   }
    if (ureg.mobno.value.length!=10)
   {
        alert("enter 10 digits");
        return false;
   }  
   if (!y.match(/^[0-9]+$/) 
   		&& y != "") {
   		y = "";
   		ureg.mobno.focus();
        alert("Please Enter only Digits in text");
   }
}

function validusernameandpass()
{
	var uname=document.ureg.username.value;
    var pass=document.ureg.password.value;
    
    if(uname==0){
        alert("Enter username");
        document.ureg.username.focus();
        return false;
    }

	 if(pass != "" ) {
         if(pass.length < 8) {
           alert("Error: Password must contain at least Eight characters!");
           document.ureg.password.focus();
           return false;
         }
         if(pass == name) {
           alert("Error: Password must be different from Username!");
           document.ureg.password.focus();
           return false;
         }
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
    
        <div class="header_01">Fraud Detection In Hospital Management System</div>
       
       
       <table align="center">
				<tr>
				<td>
				 <img src="images/logodoctor.jpg" width="60" height="50">&nbsp;&nbsp;&nbsp;</td>
				 <td><span style="font-size:22px; color: red;">Doctor Registration</span></td>
				 </tr>
            </table>
            <br/>
            
            
          <form action="DoctorRegister" name="DoctorRegister" method="post" onsubmit="return validate()">
            <center><table>
            <tr>
            <td><strong>First Name</strong></td>
            <td><input type="text" name="pfname" id="pfname" onkeyup="AllowAlpha(pfname)" required></input>&nbsp;&nbsp;&nbsp;</td>
            
            <td><strong>Middle Name</strong></td>
            <td><input type="text" name="pmname" id="pmname" onkeyup="AllowAlpha(pmname)" required></input>&nbsp;&nbsp;&nbsp;</td>
            
            <td><strong>Last Name</strong></td>
            <td><input type="text" name="plname" id="plname" onkeyup="AllowAlpha(plname)" required></input>&nbsp;&nbsp;&nbsp;</td>
            </tr>
            
            
            <tr>
            <td><strong>Date of Birth</strong></td>
            <td><input type="text" name="dob" id="dob" required></input></td>
            
             <td><strong>Age</strong></td>
             <td><input type="text" name="age" id="age"  required></input></td>
            </tr>											
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            
            
            <tr>
            <td><strong>Gender</strong></td><td>&nbsp;Male&nbsp;<input type="radio" name="gender" id="gender" value="male"></input> &nbsp;Female&nbsp;<input type="radio" name="gender" id="gender" value="female"></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
            <tr>
            <td><strong>Hospital</strong></td><td><select name="hospital" id="hospital">
       								<option>----Select----</option>
       								<option value="A">A</option>
        							<option value="B">B</option>
        							<option value="O">C</option>
									<option value="AB">AB</option>
									
									</select></td>
									
            </tr>
           
            
            <tr>
            <td><strong>Address</strong></td>
            <td><input type="text" name="address" id="address" onkeyup="AllowAlphabet(address)" required></input></td>
            
            <td><strong>City</strong></td>
            <td><input type="text" name="city" id="city" onkeyup="AllowAlphabet(city)" required></input></td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
           
           
            <tr>
            <td><strong>Email Id</strong></td>
            <td><input type="text" name="email" id="email" required></input></td>
            
            <td><strong>Mobile no</strong></td>
            <td><input type="text" name="mobno" id="mobno" onblur="return Validate('mobno')" maxlength="10" required></input></td>
            </tr>											
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            
          
            
            <tr>
            <td><strong>UserName</strong></td>
            <td><input type="text" name="username" id="username" required></input>&nbsp;&nbsp;&nbsp;</td>
            <td><strong>Password</strong></td>
            <td><input type="password" name="password" id="password" required></input></td>
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
    <div align=center>Welcome To The Privacy Protection For Wireless Sensor Data <!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>