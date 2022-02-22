<%@page import="svm.svm_train"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin Home</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
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
<%
	if(request.getParameter("claimid")!=null)
	{
	out.println("<script>alert('Claim Verify Successfull...!')</script>");	
	}
   %>

<div id="templatemo_header_wrapper">
<!-- Free Web Templates from TemplateMo.com -->
    <div id="templatemo_header">
    	<div id="logo"></div>
        <div id="templatemo_menu">
            <ul>
                <li><a href="adminhome.jsp" class="current"><span></span>home.</a></li>

                <li><a href="addHospital.jsp"><span></span>Add Hospital</a></li>
                <li><a href="claimrequest.jsp"><span></span>Claim Request</a></li>
                <li><a href="#"><span></span>confirmation send</a></li>
           
                <li><a href="index.jsp"><span></span>Logout</a></li>
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
    
        <div class="header_01">Welcome To Fraud Detection In Hospital Management System</div>
        <% 
        int total=0;
        String claimid=request.getParameter("claimid");
        System.out.println("claim id is="+claimid);
        Connection con=DbConnection.getConnection();
        Statement st= con.createStatement();
        ResultSet rs = st.executeQuery("select * from claim1 where claimid='"+claimid+"'");
        
       	svm_train svm;
       	if(new svm_train().equals("true"))
        while(rs.next()){
        	
        String policyno=rs.getString("policyno");                     
        String hcardno= rs.getString("hcardno");
        String startdate = rs.getString("startdate");
        String enddate = rs.getString("enddate");
        String joindate = rs.getString("joindate"); 
        
        String coname=rs.getString("coname");                     
        String empid = rs.getString("empid"); 
        String empname= rs.getString("empname");
        String email = rs.getString("email");
        String mno = rs.getString("mno");
        
        String pan=rs.getString("pan");                     
        String address = rs.getString("address"); 
        String city= rs.getString("city");
        String state = rs.getString("state");
        String pincode = rs.getString("pincode");
        
        String phno = rs.getString("phno");
        String pclaimid = rs.getString("claimid");       
        %>
      
     <b>DETAILS OF PRIMARY INSURED</b>
                <table style="width:100%">
  <tr>
    <th>Policy No:</th>
    <td><%=policyno %></td>
    
  
    <th>Health card No:</th>
    <td><%=hcardno %></td>
    
  </tr>
  <tr>
    <th>Policy start date:</th>
    <td><%=startdate %></td>
    
 
    <th>Policy end date:</th>
    <td><%=enddate %></td>
    
  </tr>
  <tr>
    <th>Date of join the policy:</th>
    <td><%=joindate %></td>
    
  
    <th>Corporate Name:</th>
   <td><%=coname %></td>
    
  </tr><tr>
    <th>Employee Id:</th>
    <td><%=empname %></td>
    
  
    <th>Name of Employee:</th>
    <td><%=empname %></td>
    
  </tr>
  <tr>
    <th>Email:</th>
   <td><%=email %></td>
    
  
    <th>Mobile No::</th>
    <td><%=mno %></td>
    
  </tr>
  <tr>
    <th>Permanent Account Number (PAN)::</th>
   <td><%=pan %></td>
    
  
    <th>Address:</th>
   <td><%=address %></td>
    
  </tr>
  <tr>
    <th>City:</th>
   <td><%=city %></td>
    
 
    <th>State:</th>
    <td><%=state %></td>
    
  </tr>
  <tr>
    <th>PIN Code:</th>
   <td><%=pincode %></td>
    
  
    <th>Phone No:</th>
    <td><%=phno %></td>
    
  </tr>
  <tr>
    <th>Claim Id:</th>
   <td><%=pclaimid %></td>
    
  
    
    
  </tr>
  
  
</table>
<%
}
%>
  
  <br>
<br>
<% 
ResultSet rs1 = st.executeQuery("select * from claim2 where claimid='"+claimid+"'");
   
        while(rs1.next()){
        	
        String pname=rs1.getString("pname");                     
        String relation= rs1.getString("relation");
        String dob = rs1.getString("dob");
        String age = rs1.getString("age");
        String gender = rs1.getString("gender"); 
        
        String occup=rs1.getString("occup");                     
        String otherm = rs1.getString("otherm"); 
        String fdate= rs1.getString("fdate");
        String iname = rs1.getString("iname");
        String pno = rs1.getString("pno");
        
        String fpolicy=rs1.getString("fpolicy");                     
        String hdate = rs1.getString("hdate"); 
        String diagnosis= rs1.getString("diagnosis");
        String pother = rs1.getString("pother");
        String cname = rs1.getString("cname");
        
        String sum = rs1.getString("sum");
        String pclaimid = rs1.getString("claimid");       
        %>
        
        <b>DETAILS OF INSURED PERSON HOSPITALIZED</b>
                   <table style="width:100%">
  <tr>
  <th>Name of the Patient::</th>
   <td><%=pname %></td>
    <th>Relationship with the Employee / Proposer</th>
   <td><%=relation %></td>
  </tr>
  <tr>
    <th>Date of Birth of Claimant::</th>
   <td><%=dob %></td>
 
    <th>Age:</th>
   <td><%=age %></td>
  </tr>
  <tr>
    <th>Gender</th>
    <td><%=gender %></td> 
    
  
    <th>Occupation: Service / Self Employed / Homemaker / Student / Retired / Others:</th>
    <td><%=occup %></td>
    
  
  
  
</table>
        
<b>DETAILS OF INSURANCE HISTORY</b>
         
           <table style="width:100%">
  <tr>
    <th>Currently do you have any other Mediclaim/Health Insurance:</th>
   <td><%=otherm %></td>
    <th>Date of commencement of first insurance without break:</th>
   <td><%=fdate %></td> </tr>
  <tr>
    <th>Insurance Co. Name:</th>
   <td><%=iname %></td>
 
    <th>Policy No::</th>
   <td><%=pno %></td>
  </tr>
  <tr>
    <th>Have you been hospitalized in the last four years since inception of policy</th>
    <td><%=fpolicy %></td>
   
  
    <th>Date of Hospitalization:</th>
   <td><%=hdate %></td>
  </tr><tr>
    <th>Diagnosis:</th>
   <td><%=diagnosis %></td>
  
    <th>Previously covered by any other Mediclaim / Health Insurance</th>
   <td><%=pother %></td>     
    
  </tr>
  <tr>
    <th>If Yes, Company Name:</th>
   <td><%=cname %></td>
    
  <th>Sum Insured:</th>
    <td><%=sum %></td>
    <tr>
    
    
  <th>Claim Id:</th>
    <td><%=claimid %></td>
   
  </tr>
  
  
  
</table>
<%
}
%>   

  <br>
<br>
<% 
ResultSet rs2 = st.executeQuery("select * from claim3 where claimid='"+claimid+"'");
   
        while(rs2.next())
        {
        	
        String hname=rs2.getString("hname");                     
        String room= rs2.getString("room");
        String dueto = rs2.getString("dueto");
        String date = rs2.getString("date");
        String rpolice = rs2.getString("rpolice"); 
        
        String fir=rs2.getString("fir");                     
        String expenses = rs2.getString("expenses"); 
        String checkup= rs2.getString("checkup");
        String expenses1 = rs2.getString("expenses1");
        String ambulance = rs2.getString("ambulance");
        
        String pexpenses=rs2.getString("pexpenses");                     
        String other = rs2.getString("other"); 
        String trs= rs2.getString("trs");
        String crs = rs2.getString("crs");
        String day = rs2.getString("day");
        
        String pday = rs2.getString("pday");
        String pclaimid = rs2.getString("claimid");   
        
        %>

<table style="width:100%">
  <tr>
  <th>Name of Hospital where admitted:</th>
   <td><%=hname %></td>
    <th>Room Category occupied</th>
    
   <td><%=room %></td>
  </tr>
  <tr>
    <th>Hospitalization due to:</th>
    <td><%=dueto %></td>
 
    <th>Date of Accident / Injury::</th>
    <td><%=date %></td>
  </tr>
  <tr>
    <th>Reported to Police</th>
    
        <td><%=rpolice %></td>
  
    <th>FIR / MLC No::</th>
   <td><%=fir %></td>
  
  
  
</table>
<br>
<br>
<b>DETAILS OF CLAIM</b>
         
           <table style="width:100%">
  <tr>
    <th>Pre Hospitalization Expenses:</th>
   <td><%=expenses %></td>  <th>Health Check Up Cost:</th>
    <td><%=checkup %></td> </tr>
  <tr>
    <th>Hospitalization Expenses:</th>
   <td><%=expenses1 %></td>
 
    <th>Ambulance Charges:</th>
   <td><%=ambulance%></td>
  </tr>
  <tr>
    <th>Post Hospitalization Expenses</th>
    
        <td><%=pexpenses%></td>
  
    <th>Others:</th>
   <td><%=other%></td>
  </tr><tr>
    <th>Total Claimed Amount (Rs.)::</th>
   <td><%=trs%></td>
  
    <th>Claimed Amount in Words: Rupees</th>
   <td><%=crs%></td>
  </tr>
  <tr>
    <th>Pre Hospitalization Period (in days):</th>
    <td><%=day%></td>
    
  <th>Post Hospitalization Period (in days):</th>
    <td><%=pday%></td>
  </tr>
  
  <tr>
    <th>Claim Id:</th>
    <td><%=claimid%></td>
    
  
  </tr>
</table>
<%
}
%>
<b>Bill Details By Hospital</b>
<TABLE id="dataTable" width="350px" border="1">
	<tr><th>Status</th>
  
  <th>Bill No:</th>
  <th>Date:</th>
  <th>Issued by:</th>
  <th>Towards:</th>
  <th>Amount (Rs.):</th>
      </tr>
      <%
      ResultSet rs3 = st.executeQuery("select * from bill where claimid='"+claimid+"'");
      int total1=0;
      while(rs3.next())
      {
      	
      String billno=rs3.getString("billno");                     
      String issuedate= rs3.getString("issuedate");
      String issueby = rs3.getString("issueby");
      String towards = rs3.getString("towards");
      String amount = rs3.getString("amount"); 
      Integer a=Integer.parseInt(amount);
     // Integer b=Integer.parseInt(total);
       total1=total1+a;
      
      %>
		<TR>
			<TD><INPUT type="checkbox" name="chk"/></TD>
			
			<TD> <%=billno %> </TD>
			<TD> <%=issuedate %> </TD>
			<TD> <%=issueby %> </TD>
			<TD> <%=towards %> </TD>
			<TD> <%=amount %> </TD>
			
			
			
		</TR>
		<%
		}
      System.out.println(" total bill is"+total);
		%>
		<tr><td>Total Bill Is=</td>
		<td><%=total1 %></td><input type="hidden" name="claimid" value="<%=claimid%>" />
		<%-- <td><a href="verifyAll.jsp?claimid=<%=claimid%>"> Verify All </a></td> --%>
	</TABLE>
	
	<b>Bill Details By Patient</b>
<TABLE id="dataTable" width="350px" border="1">
	<tr><th>Status</th>
  
  <th>Bill No:</th>
  <th>Date:</th> 
  <th>Issued by:</th>
  <th>Towards:</th>
  <th>Amount (Rs.):</th>
      </tr>
      <%
      ResultSet rs4 = st.executeQuery("select * from hospitalbill where claimid='"+claimid+"'");
      int total2=0,sub=0;
      while(rs4.next())
      {
      	
      String billno=rs4.getString("billno");                     
      String issuedate= rs4.getString("issuedate");
      String issueby = rs4.getString("issueby");
      String towards = rs4.getString("towards");
      String amount = rs4.getString("amount"); 
      Integer a=Integer.parseInt(amount);
     // Integer b=Integer.parseInt(total);
       total2=total2+a;
      
      %>
		<TR>
			<TD><INPUT type="checkbox" name="chk"/></TD>
			
			<TD> <%=billno %> </TD>
			<TD> <%=issuedate %> </TD>
			<TD> <%=issueby %> </TD>
			<TD> <%=towards %> </TD>
			<TD> <%=amount %> </TD>
			
			
			
		</TR>
		<%
		}
      System.out.println(" total bill is"+total);
      if(total1!=total2)
      {
    	  System.out.println("fround is detected");
    	   sub=total1-total2;
    	  System.out.println("froun has been ="+sub);
      }
		%>
		<tr><td>Total Bill Is=</td>
		<td><%=total2 %></td><input type="hidden" name="claimid" value="<%=claimid%>" />
		<%-- <td><a href="verifyAll.jsp?claimid=<%=claimid%>"> Verify All </a></td> --%>
	</TABLE>
	<b>Fraud has been detected....of rupes<%=sub%></b>
	
	<%
		session.setAttribute("claimid", claimid);
		session.setAttribute("sub", sub);
		System.out.println("Claimid:= " +claimid+ " Sub:= " +sub);
	%>
	<b><a href="PoliceSection?claimid=<%=claimid%>"> Send Fraud Request To Police Station </a></b>
	
   <form action="updatestatus" method="post" onsubmit="return validate()">
<center>
		<table border="0" cellspacing="5" cellpadding="10" style=" border:2px solid red;" >
                    
					<!-- <td style="color: black;">Enter Id</td>			
               <td><input type="text" name="id" id="id"></td>
             <td><input type="submit" value="Update"></td> -->
              
               
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
    <div align=center>Fraud Detection In Hospital Management System <!--  <a href='http://all-free-download.com/free-website-templates/'>free website templates</a> --></div>
 
        </div>
        <div class="cleaner"></div>
    </div>


</body>
</html>