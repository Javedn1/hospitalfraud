<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function validate()
{
    
    if(document.getElementById("report").value=="")
   	{
   		alert("report should not be blank");
   		document.getElementById("report").focus();
   		return false;
   	}
    
}
</script>
</head>
<body>
<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="doctorhome.jsp" class="current"><span></span>Home</a></li>

                <li><a href="#"><span></span>About</a></li>
                <li><a href="#"><span></span>Contact</a></li>
                <li><a href="Logout"><span></span>Logout</a></li>
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
       
          <form action="report" method="post" onsubmit="return validate()">
            <center>
           		 <table>
           		  <tr>
            <td><strong>Select Server To Generate Report</strong></td><td><select name="report" id="report">
       								<option>----Select----</option>
       								<option value="report1">Server 1</option>
        							<option value="report2">Server 2</option>
        							<option value="report3">Server 3</option>
			
									</select></td>
									
           <!--  </tr>
            <tr> -->
            <td><input type="submit" style="font-size:large; 70px; height: 38px; width:71px;"></input></td></tr>
       			</table>
       		</center>
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
    <div align=center>Welcome To Fraud Detection In Hospital Management System<!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>