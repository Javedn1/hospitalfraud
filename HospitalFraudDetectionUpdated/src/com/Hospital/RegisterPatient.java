package com.Hospital;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;
import com.util.DbConnection;

/**
 * Servlet implementation class RegisterPatient
 */
public class RegisterPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con = null;
	PreparedStatement ps;
	
	ResultSet rs;
       String pname,claimid,paddress,admitdate,dischargedate,admitclass,adharno,sym1,sym2,sym3,prescrip,report,gender,mno,pincode,phno;

    public void init()
	{
		
		try
		{
			
			con = DbConnection.getConnection();
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
	}

   




protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
}


protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
{
	pname=req.getParameter("pname");
	claimid=req.getParameter("pid");
	paddress=req.getParameter("paddress");
	admitdate=req.getParameter("admitdate");
	dischargedate=req.getParameter("dischargedate");
	admitclass=req.getParameter("admitclass");			
	adharno=req.getParameter("adharno");
	sym1=req.getParameter("sym1");
	sym2=req.getParameter("sym2");
	sym3=req.getParameter("sym3");
	prescrip=req.getParameter("prescrip");
	report=req.getParameter("report");
	gender=req.getParameter("gender");
	mno=req.getParameter("mno");
	pincode=req.getParameter("pincode");
	phno=req.getParameter("phno");
	
	
	System.out.println("-------Catch values of patient while registration------");
	System.out.println("Patient Name="+pname);
	System.out.println("Claimid="+claimid);
	System.out.println("Patient Address="+paddress);
	System.out.println("Admitdate="+admitdate);
	System.out.println("Discharge Date="+dischargedate);
	System.out.println("Admit Class="+admitclass);
	System.out.println("Adhar No="+adharno);
	System.out.println("Symtom1="+sym1);
	System.out.println("Symtom2="+sym2);
	System.out.println("Prescription="+prescrip);
	System.out.println("Report="+report);
	System.out.println("Gender="+gender);
	System.out.println("Mobile No="+mno);
	System.out.println("Pin Code="+pincode);
	System.out.println("Phone No="+phno);

	
	/*System.out.println("claimid="+claimid);
	System.out.println("policy no="+gender);
	System.out.println("join date="+mno);
	System.out.println("start ="+pincode);
	System.out.println("co name="+admitdate);
	System.out.println("emp id="+dischargedate);
	System.out.println("mobile no="+sym1);
	System.out.println("pin code ="+sym2);
	System.out.println("phone no="+sym3);
	System.out.println("address="+paddress);
	System.out.println("city="+prescrip);
	System.out.println("email="+report);
	System.out.println("sate="+adharno);
	System.out.println("pan ="+pincode);
	System.out.println("emp name="+phno);
	*/
	
	
	
	try 
	{
		Statement st = (Statement) con.createStatement();
		//PrintWriter out=res.getWriter();
		int rs = st.executeUpdate("update hospitaldatabse set pname ='"+pname+"', paddress ='"+paddress+"',admitdate ='"+admitdate+"', dischargedate ='"+dischargedate+"', admitclass ='"+admitclass+"', adharno ='"+adharno+"', sym1 ='"+sym1+"', sym2 ='"+sym2+"', sym3 ='"+sym3+"', prescrip ='"+prescrip+"', report ='"+report+"', gender ='"+gender+"', mno ='"+mno+"', pincode ='"+pincode+"', phno ='"+phno+"' where `hospitaldatabse`.`claimid`= '"+claimid+"'");
									 
				 	
												
														

		
		/*int rs1 = st.executeUpdate("UPDATE hospitaldatabse SET `pname`="+pname+",`paddress`="+paddress+",`admitdate`="+admitdate+",`dischargedate`="+dischargedate+",`admitclass`="+admitclass+",`adharno`="+adharno+",`sym1`="+sym1+",`sym2`="+sym2+",`sym3`="+sym3+",`prescrip`="+prescrip+",`report`="+report+",`gender`="+gender+",`mno`="+mno+",`pincode`="+pincode+",`phno`="+phno+"' where claimid= '"+claimid+"'");
		ps=con.prepareStatement("insert into hospitaldatabse (pname,paddress,admitdate,dischargedate,admitclass,adharno,sym1,sym2,sym3,prescrip,report,gender,mno,pincode,phno)"+"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) where claimid= '"+24539+"'");
		
		ps.setString(1,pname);
		ps.setString(2,paddress);
		ps.setString(3, admitdate);
		ps.setString(4,dischargedate);
		ps.setString(5, admitclass);
		ps.setString(6, adharno);
		ps.setString(7, sym1);
		ps.setString(8, sym2);
		ps.setString(9, sym3);
		ps.setString(10, prescrip);
		ps.setString(11, report);
		ps.setString(12, gender);
		ps.setString(13, mno);
		ps.setString(14, pincode);
		ps.setString(15, phno);*/
		
		
		
		
		//ps.setString(12,file.getName());
	
		//System.out.println("file name "+file.getName());
		//int result=ps.executeUpdate();
		 
		if (rs > 0)
		{
			System.out.println("Patient Registration successfull");
			res.sendRedirect("doctorhome.jsp?claimid="+claimid);
			
			
		}
		else
		{
			System.out.println("Ragistration failed");
		}
	}
	
	catch(Exception e1)
	{
		e1.printStackTrace();
	}

}

public void distroy()
{
	
	try
	{
		ps.close();
		con.close();
	}
	catch(Exception e1)
	{
		e1.printStackTrace();
	}
}

}
