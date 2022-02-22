<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fraud Detection In Hospital</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
 
<script>
              function CountryCntrl($scope) {
                $scope.countries = {
                    'Maharashtra': {
                        'Pune': ['Haveli', 'Lonikand', 'lonawla', 'shivaji nagar'],
                        'Mumbai': ['kalyan', 'dobwali', 'new mumbai'],
                		'Nagpur': ['Gondia', 'chadrpur', 'Bardi'],
                        'Aurangabad': ['Bhum', 'Bhingoli', 'barahali'],
                        'Nanded': ['Mukhed', 'Naygao', 'Kandhar','Degloor','Mudkhed','Kinvat'],
                        'Ahmadnagar': ['Washim', 'barad', 'Ambejogay'],
                		'Satara': ['buldhana', 'dighi', 'chandan nagar'],
                        'Sangli': ['viman nagar', 'hadpsar', 'baramti'],
                'Beed': ['Swarget', 'katraj', 'nashik'],
                        'Sangli': ['jamner', 'jalgao', 'kokan'],
                'Osmanabad': ['bihar', 'sihgad', 'rampur'],
                        'Thane': ['dhule', 'sutarwadi', 'baner'],
                'Akola': ['hijewdi', 'naraynpur', 'khargpur']
                        
                    },
                    'Gujrat': {
                    	'Kutch': ['Abadasa', 'Bhuj', 'Mandavi', 'Rapar','Nakhatrana'],
                        'Banaskantha': ['Bhabhar', 'Dantiwada', 'Dhanera','Kankrej','Vadgam'],
                        'Patan': ['Chanasma', 'Radhanpur', 'Siddhpur', 'Santalpur'],
                        'Mehsana': ['Becharaji', 'Mehsana','Vadnagar','Kadi','Vijapur'],
	                    'Sabarkantha': ['Himmatnagar', 'Bhiloda', 'Dhansura','Bayad'],
                        'Gandhinagar': ['Dehgam', 'Gandhinagar', 'Mansa','Kalol'],
                		'Ahmedabad': ['Daskroi', 'Dholaka', 'Sanad','Barvala','Viramgam'],
                        'Rajkot': ['Rajkot', 'Vankaner','Jamkandorna','Lodhika']
               
                    },
                    'Punjab': {
                        'Amritsar': ['Ajnala', 'Amritsar-1', 'Amritsar-2', 'Baba Bakala'],
                        'Barnala': ['Barnala', 'Tapa'],
                		'Faridkot': ['Faridkot', 'Jaito', 'Kot Kapura'],
                        'Fazilka': ['Abohar', 'Fazilka', 'Jalalabad'],
                        'Firozpur': ['Firozpur', 'Guru Harsahai', 'Zira'],
                        'Gurdaspur': ['Batala', 'Dera Baba Nanak', 'Gurdaspur'],
                		'Hoshiarpur': ['Dasua', 'Garhshankar', 'Hoshiarpur','Mukerian'],
                        'Jalandhar': ['Jalandhar-1', 'Jalandhar-2', 'Nakodar', 'Phillaur']
               
                    }
                };
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
                <li><a href="index.jsp" class="current"><span></span>Home</a></li>
               
                <li><a href="adminhome.jsp"><span></span>logout</a></li>
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
       
        
          <!--  <tr>
           <td><img src="images/arrow.png" width="35" height="35" alt="" /></td>
           <td><a href="checkup.jsp"><span style="color:red;font-size:22px">Check-up</span></a></td>
           </tr> -->
          <form action="AddHospital" method="post">
           <div ng-controller="CountryCntrl">
    		    <div>
            		<b>State:</b> 
                	<select id="branch" ng-model="states" ng-options="country for (country, states) in countries" name="branch">
                    <option value=''>Select</option>
                	</select>
             
                	<b>District: </b><select id="year" name="year" ng-disabled="!states" ng-model="cities" ng-options="state for (state,city) in states"><option value=''>Select</option></select>
            
                	<b>Tahsil:</b><select id="subject" name="subject" ng-disabled="!cities || !states" ng-model="city"><option value=''>Select</option> <option ng-repeat="city in cities" value='{{city}}'>{{city}}</option></select> <br>       
            	</div><br>
            	<b>Hospital Name: </b><input type="text" name="hospitalname" id="hospitalname">
            	<b>Contact: </b><input type="text" name="contact" id="contact">
            	<b>Address of Hospital: </b><input type="text" name="address" id="address"><br><br>
            	<b>Claim Facility: </b><input type="radio" name="claim" value="Yes"> Yes
                                       <input type="radio" name="claim" value="No"> No
            	
            	<br><br>
            	<input type="submit" value="Submit" id="submit" placeholder="submit" required / ><br><br><br><br><br><br><br>
        		</div>
   			
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