<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fraud Detection In Hospital</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="doctorhome.jsp" class="current"><span></span>Home</a></li>
				<li><a href="editDoctor.jsp"><span></span>Edit Profile</a></li>
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
    
       <center><div class="header_01"><b>Welcome To Fraud Detection In Hospital Management System</b></div>
       
       <h2>Patient's <span class="byline">Appointment</span></h2></center>
		<form action="applyform" method="post">

							<table align="center" border="1" cellpadding="10" cellspacing="15">
							<tr>
								<th>Sr.No</th>
								<th>Patient Name</th>
								<th>Date</th>
								<th>Time</th>
								<th>Symptom 1</th>
								<th>Symptom 2</th>
								<th>Symptom 3</th>
								<th>Symptom 4</th>
								<th>Mobile No</th>
								<th>Status</th>
								
								
							</tr>
							
							<%
							    
							
								try {
									HttpSession sess = request.getSession();
									String dname = (String)sess.getAttribute("username");
									System.out.println("Doctor's Name===" +dname);
									
									Connection con = DbConnection.getConnection();
									
									PreparedStatement ps = con.prepareStatement("select * from appform where dname='"+dname+"'");
									ResultSet rs = ps.executeQuery();
									String pname,date,time,symptom1,symptom2,symptom3,symptom4,mno;
									int srno = 0;
									String id;
									while (rs.next()) {
										srno++;
										pname = rs.getString("pname");
										System.out.println("pname Name===" +pname);
										date = rs.getString("date");
										System.out.println("date===" +date);
										time = rs.getString("time");
										System.out.println("time===" +time);
										symptom1 = rs.getString("symptom1");
										System.out.println("symptom1===" +symptom1);
										symptom2 = rs.getString("symptom2");
										System.out.println("symptom2===" +symptom2);
										symptom3 = rs.getString("symptom3");
										System.out.println("symptom3===" +symptom3);
										symptom4 = rs.getString("symptom4");
										System.out.println("symptom4===" +symptom4);
										mno = rs.getString("mno");
										
										
							%>

							<tr align="center">
								<td><%=srno%></td>
								<td><%=pname%></td>
								<td><%=date%></td>
								<td><%=time%><input type="hidden" name="mno" values=<%=mno %> /></td>
								<td><%=symptom1%></td>
								<td><%=symptom2%></td>
								<td><%=symptom3%></td>
								<td><%=symptom4%></td>
								<td><%=mno%></td>
								<td><a href="MessageSend?mno=<%=mno%>">Conform Appointment</a></td>
							</tr>


							<%
								}

								} catch (Exception e) {
									System.out.print("catcht" + e);

								}
							%>
							
							<tr/>

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
    <div align=center>Welcome To Fraud Detection In Hospital Management System<!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>