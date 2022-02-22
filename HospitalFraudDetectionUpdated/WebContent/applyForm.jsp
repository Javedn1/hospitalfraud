
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
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
                <li><a href="patienthome.jsp" class="current"><span></span>Home</a></li>
				<li><a href="editpatient.jsp"><span></span>Edit Profile</a></li>
                <li><a href="searchHospital.jsp"><span></span>Search Hospital</a></li>
                <li><a href="appointment.jsp"><span></span>Appointment</a></li>
                <li><a href="claim.jsp"><span></span>Claim</a></li>
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
    
        <div class="header_01">Fraud Detection In Hospital Management System</div>
      
     <center> 
   
    <h2>Patient<span class="byline"> Form</span></h2></center>
		<form action="applicationForm" name="applicationForm" method="post">
  
							<table>
								<tr>
									<td>Patient Name : </td>
									<td><%=(String)session.getAttribute("username")%></td>
								
									<td>Doctor Name : </td>
									<%
									String dname=request.getParameter("dname");
									
									
									%>
									<td><%=dname%></td>
									
								</tr>
									<td>Date Of Appointment</td>
									<td><select name="date" id="selectBox" onchange="onChangeOption1()">

									<%
									session.setAttribute("dname", dname);
									
									System.out.println("Doctor Nameeee===" + dname);    
									
										try {
											
											int i = 0;

											Connection con = DbConnection.getConnection();
											PreparedStatement ps = con
													.prepareStatement("select * from doctordetail where dname= '"+dname+"'");
											ResultSet rs = ps.executeQuery();
											String date;

											while (rs.next()) {

												date = rs.getString("date");
												System.out.println("date No===" + date);
									%>

									<option name="selectdate" value="<%=date%>"><%=date%></option>

									<%
										}

										} catch (Exception e) {
											System.out.print("catcht" + e);

										}
									%>

							</select></td>
								
									<td align="center">Time</td>
									<td><select name="time" id="selectBox" onchange="onChangeOption1()">

									<%
										try {
											String dnameee = (String)session.getAttribute("dname");
											System.out.println("Doctorrrrrrrr Nameeee===" +dnameee);
											
											int i = 0;

											Connection con = DbConnection.getConnection();
											PreparedStatement ps = con
													.prepareStatement("select * from doctordetail where dname= '"+dnameee+"'");
											ResultSet rs = ps.executeQuery();
											String time1,time2,time3,time4,time5,time6;

											while (rs.next()) {

												time1 = rs.getString("time1");
												System.out.println("time1 No===" + time1);
												time2 = rs.getString("time2");
												System.out.println("time2 No===" + time2);
												time3 = rs.getString("time3");
												System.out.println("time3 No===" + time3);
												time4 = rs.getString("time4");
												System.out.println("time4 No===" + time4);
												time5 = rs.getString("time5");
												System.out.println("time5 No===" + time5);
												time6 = rs.getString("time6");
												System.out.println("time6 No===" + time6);
												Statement stc=con.createStatement();
												ResultSet rsc=stc.executeQuery("select * from appform where dname='"+dname+"' and time='"+time1+"'");
												if(!rsc.next())
												{
												
									%>
									
									<option name="selecttime" value="<%=time1%>"><%=time1%></option>
									<%} %>
									
									<% Statement stc1=con.createStatement();
												ResultSet rsc1=stc1.executeQuery("select * from appform where dname='"+dname+"' and time='"+time2+"'");
												if(!rsc1.next())
												{
												
									%>
									
									<option name="selecttime" value="<%=time2%>"><%=time2%></option>
									<%} %>
									
									<% Statement stc2=con.createStatement();
												ResultSet rsc2=stc2.executeQuery("select * from appform where dname='"+dname+"' and time='"+time3+"'");
												if(!rsc2.next())
												{
												
									%>
									
									<option name="selecttime" value="<%=time3%>"><%=time3%></option>
									<%} %>
									
									<% Statement stc3=con.createStatement();
												ResultSet rsc3=stc3.executeQuery("select * from appform where dname='"+dname+"' and time='"+time4+"'");
												if(!rsc3.next())
												{
												
									%>
									
									<option name="selecttime" value="<%=time4%>"><%=time4%></option>
									<%} %>
									
									<% Statement stc4=con.createStatement();
												ResultSet rsc4=stc4.executeQuery("select * from appform where dname='"+dname+"' and time='"+time5+"'");
												if(!rsc4.next())
												{
												
									%>
									
									<option name="selecttime" value="<%=time5%>"><%=time5%></option>
									<%} %>
									
									<% Statement stc5=con.createStatement();
												ResultSet rsc5=stc5.executeQuery("select * from appform where dname='"+dname+"' and time='"+time6+"'");
												if(!rsc5.next())
												{
												
									%>
									
									<option name="selecttime" value="<%=time6%>"><%=time6%></option>
									<%} %>
									

									<%
										}

										} catch (Exception e) {
											System.out.print("catcht" + e);

										}
									%>

							</select></td>

								</tr>
								<tr>
									<td>Symptom 1</td>
									<td><input type="text" name="symptom1" id="symptom1"
										style="height: 28px" placeholder="Symptom 1" required /></td>
									
									<td align="center">Symptom 2</td>
									<td><input type="text" name="symptom2" id="symptom2"
										style="height: 28px" placeholder="Symptom 2" required /></td>	
								</tr>
								<tr>
									<td>Symptom 3</td>
									<td><input type="text" name="symptom3" id="symptom3"
										style="height: 28px" placeholder="Symptom 3" required /></td>
									
									<td align="center">Symptom 4</td>
									<td><input type="text" name="symptom4" id="symptom4"
										style="height: 28px" placeholder="Symptom 4" required /></td>	
								</tr>
								<tr>
								<td align="center">Mobile No</td>
								<td><input type="text" name="mno" id="mno"
										style="height: 28px" placeholder="Mobile no" required /></td>
								</tr>
								
								<tr>
									<td></td>
									<td align="center"><input type="submit"
										style="height: 45px; width: 120px;" value="Submit" /></td>
									<td></td>
									<td align="center"><input type="reset"
										style="height: 45px; width: 120px;" value="Reset" /></td>

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
    <div align=center>Fraud Detection In Hospital Management System <!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>