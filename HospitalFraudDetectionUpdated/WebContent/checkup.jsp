<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fraud Detection in Hospital</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="patienthome.jsp" class="current"><span></span>Home</a></li>

                <li><a href="#"><span></span>About</a></li>
                <li><a href="#"><span></span>Contact</a></li>

                <li><a href="patienthome.jsp"><span></span>Logout</a></li>
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
       
       
       <table align="center">
				<tr>
				<td>
				 <img src="images/people.png" width="60" height="50">&nbsp;&nbsp;&nbsp;</td>
				 <td><span style="font-size:22px; color: red;">Patient CheckUp </span></td>
				 </tr>
            </table>
            
            
            
          <form action="Patientcheckup" method="post" >
            <center><table>
            <tr><td><strong>Disease</strong></td><td><select name="disease" id="disease">
       								<option>----Select----</option>
       								<option value="Cancer">Cancer</option>
        							<option value="diabetes">Diabetes</option>
        							<option value="thylencimia">Thylencimia</option>
        							<option value="glucomia">Glucomia</option>
									</select></tr>
            <tr>
            <td>
        <%--     <input type="hidden" name="user" value="<%=user_id%>" /> --%>
            </td>
            </tr> 
            <tr>
             <td><strong>BP(Blood Pressure)mmHg (e.g :120/80)</strong></td>
             <td><input type="text" name="topbp" placeholder="enter first value" ></input></td>
             <!-- <td>/</td> -->
             <td>/&nbsp;<input type="text" name="belowbp" placeholder="enter second value"></input></td>
             <td>mmHg</td>
            
            </tr>
            
            
            <tr>
            <td><strong>Weight</strong></td><td><input type="text" name="wt"></input></td><td>(in kgs)</td>
            </tr>
            <tr>
             <td><strong>Height</strong></td><td><input type="text" name="ht"></input></td><td>(in ft & inch)</td>
            </tr>
           <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
            <tr></tr>
           
            <tr>
            <td><strong>Your Appetite</strong></td><td><select name="appetite" id="appetite">
       								<option>----Select----</option>
       								<option value="high">High</option>
        							<option value="low">Low</option>
        							<option value="normal">Normal</option>
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Frequency of Thirst</strong></td><td><select name="thirst" id="thirst">
       								<option>----Select----</option>
       								<option value="high">High</option>
        							<option value="low">Low</option>
        							<option value="normal">Normal</option>
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Frequency of Urination</strong></td><td><select name="urine" id="urine">
       								<option>----Select----</option>
       								<option value="high">High</option>
        							<option value="low">Low</option>
        							<option value="normal">Normal</option>
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Vision</strong></td><td><select name="vision" id="vision">
       								<option>----Select----</option>
       								<option value="impairment">Impairment</option>
        							<option value="normal">Normal</option>
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Urine Sugar</strong></td><td><select name="urinesugar" id="urinesugar">
       								<option>----Select----</option>
       								<option value="passive">Passive</option>
        							<option value="active">Active</option>
        							
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Ketonurea</strong></td><td><select name="ket" id="ket">
       								<option>----Select----</option>
       								<option value="passive">Passive</option>
        							<option value="active">Active</option>
        							
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Fasting Blood Sugar</strong></td><td><select name="fbs" id="fbs">
       								<option>----Select----</option>
       								<option value="high">High</option>
        							<option value="low">Low</option>
        							<option value="normal">Normal</option>
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>R B S</strong></td><td><select name="rbs" id="rbs">
       								<option>----Select----</option>
       								<option value="high">High</option>
        							<option value="low">Low</option>
        							<option value="normal">Normal</option>
									</select></td>
									
            </tr>
            
             <tr>
            <td><strong>Family History of Diabetes</strong></td><td><select name="history" id="history">
       								<option>----Select----</option>
       								<option value="passive">Passive</option>
        							<option value="active">Active</option>
        							
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>OGDT</strong></td><td><select name="ogdt" id="ogdt">
       								<option>----Select----</option>
       								<option value="d">D</option>
        							<option value="n">N</option>
        							
									</select></td>
									
            </tr>
            
            <tr>
            <td><strong>Select Server to Store Data</strong></td><td><select name="table" id="table">
       								<option>----Select----</option>
       								<option value="table1">Server 1</option>
        							<option value="table2">Server 2</option>
        							<option value="table3">Server 3</option>
									</select></td>
									
            </tr>
            </table></center>
            <br/>
            <table align="center">
            <tr>
            <td><input type="submit" value="Feed Data" style="font-size:large; 70px; height: 38px; width:100px;"></input></td>
            
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="Serversidesvm.jsp"><img src="images/reset.png" width="70" height="42" title="Reset"></img></a></td>
            <td> &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
            <a href="patienthome.jsp"><img src="images/back.png" width="50" height="35" title="Back"></img></a></td>
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