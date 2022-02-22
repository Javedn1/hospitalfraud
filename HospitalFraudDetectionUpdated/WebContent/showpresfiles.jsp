<%@page import="com.privacyprotection.*"%>
<%@ page language="java"  import="java.sql.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <%@page import="com.privacyprotection.encdecServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Privacy Protection</title>
<meta name="keywords" content="web design template, free css html layout" />
<meta name="description" content="web design template, free css html layout provided by templatemo.com for any website purpose" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<title>Privacy Protection</title>
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
            
            
            
          
        </div> <!-- end of banner content -->
        
        <div class="cleaner"></div>   
    </div> <!-- end of banner -->

</div> <!-- end of banner wrapper -->

<div id="templatemo_content_top_wrapper" align="center">

    <div id="templatemo_content_top">
    
        <div class="header_01" style="color: black">Welcome To The Privacy Protection For Wireless Sensor Data </div>
          
         <form action="checkpresfile" method="post" onsubmit="return validate()">

		<table  >
                    <tr>
                  
                    	
                        <td style="color: black;">select Username To see file</td>
                       
                       
                       <!--  <td style="color: black;">Percentage</td> -->
                       <!--  <td style="color: black;">Below BP</td>
                        <td style="color: black;">Weight</td>
                        <td style="color: black;">weight</td>
                        <td style="color: black;">Appetite</td>
                        <td style="color: black;">Thirst</td>
                        <td style="color: black;">Urine</td>
                        <td style="color: black;">Vision</td>
                        <td style="color: black;">Urine Sugar</td>
						<td style="color: black;">KET</td>
						<td style="color: black;">FBS</td>   
						<td style="color: black;">RBS</td>
						<td style="color: black;">History</td> 
						<td style="color: black;">OGDT</td>                     
                          -->
                         
                     
                
                          
                   
                 
                       <td > <select name="pres" id="pres" style="width: 100px">
                    <%
                  String table=request.getParameter("pres");
                    session.setAttribute("table", table);
              
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    Connection con=DriverManager.getConnection("jdbc:mysql://admin1-PC:3306/privacyprotection","kiran","123");       //   int Userid = Integer.parseInt((String)session.getAttribute("userId"));
                        int srno = 1;
                        Statement st= con.createStatement();
                        
                        ResultSet rs = st.executeQuery("select * from " +table);
                        while(rs.next()){
                       // int Fileid = rs.getInt("id");
                        
                        
                        
                        String username = rs.getString("username");
                        String file = rs.getString("file");
                        
              
                        
                       %>
                        
                   
       								
       								<option value="<%= username %>"><%= username %></option>
        				
								
                   <%--      <td><textarea rows="10" cols="100"><%=file %></textarea>  </td> --%>
                         
           
                    <%
                        
                        }
                    
                        
                      /*   String user=request.getParameter("pres");
                        session.setAttribute("userpres",user); */
                    %>
                    	</select> </td>
                    	<td><input type="submit" value="Submit"></td>
                    	
						</tr>			
               
               
                </table>
               </form> 
				
        
        
        
        
        
    <div class="margin_bottom_10"></div>
        <!-- <div class="rc_btn_01"><a href="#">Read More</a></div> -->
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